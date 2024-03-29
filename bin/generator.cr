require "./swagger"
require "./helper"

class Generator
  URL_REGEX     = /(?<url>((http[s]?):\/)?\/?([^:\/\s]+)((\/\w+)*\/)([\w\-\.]+[^#?\s]+)(.*)?(#[\w\-]+)?)/
  ROOT_NAME     = "K8S"
  VERSIONS_DIR  = "src/versions"
  SCHEMAS_DIR   = "tmp/schemas"
  DOCS_DIR      = "docs"
  RESOURCE_TYPE = "struct"

  getter filename : String
  getter definitions : Hash(String, String)
  getter base_class : String
  getter base_dir : String
  getter schema : Swagger
  getter only_groups : Array(String)? = nil
  @writter : Generator::Writer? = nil

  def writter
    @writter ||= Generator::Writer.new(self)
  end

  def self.generate(*args)
    new(*args).tap(&.generate)
  end

  def initialize(@schema : Swagger, @base_class, @base_dir, @only_groups = nil)
    Swagger::Definition.new.tap do |list_def|
      template = @schema.definitions["io.k8s.api.core.v1.PodList"]?
      defkey = "io.k8s.api.core.v1.List" if template
      template ||= @schema.definitions["io.k8s.kubernetes.pkg.api.v1.PodList"]
      defkey ||= "io.k8s.kubernetes.pkg.api.v1.List"
      list_def.description = "List is a generic list of resources"
      list_def.properties = template.properties.dup
      list_def.properties["items"] = Swagger::Definition::Property.new(
        description: "list of resources",
        type: "array",
        items: Swagger::Definition::Property.new(type: "resource")
      )
      @schema.definitions[defkey] = list_def
    end
    @filename = version + ".cr"

    @definitions = @schema.definitions.each_with_object({} of String => String) do |(name, definition), memo|
      next if definition._ref
      parts = name.lchop("io.k8s.").sub(".pkg.", ".").lchop("io.").split(".").map(&.gsub('-', '_').camelcase.gsub("JSON", "Json"))
      # Remove the first part if it's 2 chars long. i.e "io", "us"
      parts.shift if parts[0].size == 2

      memo[name] = parts.join("::")
    end

    add_missing_definitions
  end

  def self.new(response : String, fallback_version : String)
    schema = Swagger.from_json(response)
    schema.info.version = fallback_version if schema.info.version == "unversioned"
    base_class = ROOT_NAME
    version = schema.info.version.downcase.split('.').tap(&.pop).join('.')
    new(schema, base_class, File.join(".", VERSIONS_DIR, version))
  end

  DEFAULT_DEFINITIONS = {
    "io.k8s.apimachinery.pkg.util.intstr.IntOrString" => "::Int32 | ::String",
    "io.k8s.apimachinery.pkg.api.resource.Quantity"   => "::Int32 | ::String",
    "io.k8s.apimachinery.pkg.apis.meta.v1.Time"       => "::Time",
    "io.k8s.apimachinery.pkg.apis.meta.v1.MicroTime"  => "::Time",
  }

  # Add any definitions that are missing
  private def add_missing_definitions
    DEFAULT_DEFINITIONS.each do |name, type|
      @definitions[name] = type
    end
  end

  def generate(skip_depends = false)
    api_map = @definitions.reject do |_, klass|
      (["::Int32", "::Time", "::String"] & klass.split("|").map(&.strip)).first?
    end
    find_aliases(api_map)
    definitions = api_map.map do |key, _|
      Definition.new(self, key)
    end
    self.writter.definitions = definitions

    FileUtils.mkdir_p(base_dir)
    definitions.each do |definition|
      # if only_groups is defined, only generate the groups specified
      if only_groups.nil? || !(only_groups.not_nil!.find { |group| definition.name =~ /#{group}/ }.nil?)
        self.writter.write(definition, skip_depends)
      end
    end

    # Only generate the main file if there are no groups specified
    if only_groups.nil?
      Dir.cd(File.join(base_dir, "..")) do
        write_version_file(definitions)
        write_kubernetes_file(definitions)
      end
    end

    system "crystal tool format #{base_dir}"
  end

  private def write_version_file(definitions)
    puts "Writing: #{filename}"
    File.open(filename, "w+") do |file|
      file.puts "# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC", "",
        %<require "../k8s/*">, ""

      file.puts "require \"./#{version}/kubernetes\""
      definitions.map(&.filename).each { |r| file.puts "require \"#{r.sub(base_dir, "./#{version}")}\"" }
    end
    system "crystal tool format #{filename}"
  end

  private def write_kubernetes_file(definitions)
    kube_file = File.join(version, "kubernetes.cr")
    puts "Writing: #{kube_file}"
    File.open(kube_file, "w") do |file|
      file.puts "",
        "module ::#{base_class.lchop("::")}::Kubernetes",
        " VERSION = SemanticVersion.parse(\"#{version.lchop("v")}.0\")",
        " VERSION_MINOR = #{version.lchop("v").split(".").first}",
        " VERSION_MAJOR = #{version.lchop("v").split(".").last}",
        ""
      file.puts "abstract #{RESOURCE_TYPE} Resource"
      write_mappings(file, definitions)
      file.puts "end", "", "end"
    end
    system "crystal tool format #{version}"
  end

  private def write_mappings(file, definitions)
    file.puts %<  MAPPINGS = [>
    definitions.select(&.is_resource?)
      # .reject(&.class_name.==("Api::Core::V1::List"))
      .map { |r|
        kind = r.kind == "List" ? r.name.split('.').last : r.kind
        {r.api_version, kind, r.class_name}
      }.uniq!
      .each { |r| file.puts %<    {"#{r[0]}","#{r[1]}",K8S::#{r[2]}},> }
    file.puts %< ]>, ""
    # file.puts "k8s_json_discriminator(MAPPINGS)",
    #   "k8s_yaml_discriminator(MAPPINGS)", ""
  end

  private def version
    @schema.info.version.downcase.split('.').tap(&.pop).join('.')
  end

  def definition_ref(ref : String?)
    return unless ref
    _, kind, name = ref.split("/")
    case kind
    when "definitions"
      if definitions[name] =~ /^::/
        definitions[name]
      else
        "::#{base_class}::#{definitions[name]}"
      end
    else
      # Do nothing
    end
  end
end

require "./generator/*"
