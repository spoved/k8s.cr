class K8S::CRD::Generator
  getter parsers : Array(K8S::CRD::Parser)
  getter output_dir : String
  getter groups = Array(String).new

  def initialize(files, @output_dir)
    FileUtils.mkdir_p(@output_dir) unless Dir.exists?(@output_dir)

    @parsers = K8S::Resource.from_files(files).map do |crd|
      if crd.is_a?(K8S::Resources::Apiextensions::V1::CustomResourceDefinition)
        K8S::CRD::Parser.new(crd)
      else
        nil
      end
    end.select(K8S::CRD::Parser)
  end

  private def get_swagger(ver)
    swagger = Swagger.new(Swagger::Info.new(title: "Kubernetes API", version: ver))
    parsers.flat_map(&.parse).each do |info|
      self.groups << info[:group] unless groups.includes?(info[:group])

      raise "Definition already exists: #{info[:full]}" if swagger.definitions[info[:full]]?
      swagger.definitions[info[:full]] = info[:definition]
      info[:paths].each do |path, methods|
        raise "Path already exists: #{path}" if swagger.paths[path]?
        swagger.paths[path] = methods
      end
    end
    swagger
  end

  def generate
    swagger = get_swagger("v1.23")

    api_groups = self.groups.map &.split('.').reverse.join('.')

    k3sgen = ::Generator.new(File.read("tmp/schemas/v1.23.0.json"), "v1.23")
    swagger.definitions.merge!(k3sgen.schema.definitions)
    crdgen = ::Generator.new(swagger, "K8S", output_dir, api_groups)

    # populate lists
    crds = crdgen.definitions.select { |k, _| !(api_groups.find { |g| k =~ /#{g}/ }.nil?) }
    crds.each do |k, v|
      unless k.ends_with?("List")
        crdgen.definitions["#{k}List"] = "#{v}List"
        crdgen.schema.definitions["#{k}List"] = Swagger::Definition.new.tap do |list_def|
          template = crdgen.schema.definitions["io.k8s.api.core.v1.List"]
          list_def.properties = template.properties.dup
          list_def.properties["items"] = Swagger::Definition::Property.new(
            description: "list of resources",
            type: "array",
            items: Swagger::Definition::Property.new(_ref: "#/definitions/#{k}")
          )
        end
      end
    end
    pp crdgen.definitions

    crdgen.generate
  end
end
