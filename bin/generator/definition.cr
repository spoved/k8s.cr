require "file_utils"
require "./aliases"
require "./overrides"

class Generator::Definition
  URL_REGEX = /(?<url>((http[s]?):\/)?\/?([^:\/\s]+)((\/\w+)*\/)([\w\-\.]+[^#?\s]+)(.*)?(#[\w\-]+)?)/

  class FunctionArgument
    getter name : String
    getter type : String?
    getter ref : String? = nil
    getter? required : Bool = false
    property default : String? = nil
    getter prop : Swagger::Definition::Property? = nil

    def initialize(name : String, prop : Swagger::Definition::Property, definition : Swagger::Definition, *, ivar = false)
      @prop = prop
      initialize name, required: definition.required.includes?(name), type: prop.type.to_s, ref: prop._ref, ivar: ivar
    end

    def initialize(param : Swagger::Path::Parameter)
      initialize name: param.name, required: param.required, type: param.type, ref: param.schema.try(&._ref)
    end

    def initialize(name : String, @type : String?, @required : Bool = false, @default : String? = nil, @ref : String? = nil, *, ivar = false)
      name = crystalize_name(name)
      @name = ivar ? "@#{name}" : name
    end

    def first_value?
      required? && !default
    end
  end

  delegate schema, definitions, base, base_dir, base_class, to: @generator

  getter class_name : String
  getter name : String
  setter file : IO::FileDescriptor? = nil
  getter filename : String
  getter definition : Swagger::Definition
  getter alias_of : String? = nil

  delegate required, properties, to: definition

  macro write(&block)
    file.print block.body + "\n"
  end

  def file : IO::FileDescriptor
    @file ||= File.open(@filename, "w+")
  end

  def self.generate(*args)
    new(*args).generate
  end

  def initialize(@generator : Generator, @name : String)
    @alias_of = @generator.is_alias?(@name)
    @class_name = generator.definitions[name]
    @definition = generator.schema.definitions[name]
    path = @class_name.split("::").map(&.underscore).join("/")
    @filename = File.join(base_dir, path) + ".cr"
  end

  def generate
    apply_overrides
    FileUtils.mkdir_p(File.dirname(@filename))
    STDOUT.puts "Writing: #{filename}"
    file.puts "# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC"
    file.puts ""

    load_requires
    file.puts "module #{base_class.lchop("::")}"

    if alias_of
      file.puts %<alias #{class_name} = #{@generator.definitions[alias_of.not_nil!]}>
      _end
      file.close
      return self
    end

    # TODO: Properly handle List alias
    if apply_alliases
      _end
      file.close
      return self
    end

    define_class
    define_alias if !is_list? && is_resource?
    _end
    file.close
    self
  end

  private def definition_ref(ref : String?)
    return unless ref
    _, kind, name = ref.split("/")
    case kind
    when "definitions"
      definitions[name]
    else
      # Do nothing
    end
  end

  private def open_class
    # Class Description
    generate_description definition.description
    generate_annotations

    # Open the class
    if is_resource?
      if is_list?
        file.puts "class #{class_name.lchop("::")} < ::K8S::Kubernetes::ResourceList(#{class_name.lchop("::").rchop("List")})"
        file.puts "  include ::K8S::Kubernetes::Resource::List"
      else
        file.puts "class #{class_name.lchop("::")} < ::K8S::Kubernetes::Resource"
        file.puts "  include ::K8S::Kubernetes::Resource::Object"
      end
    else
      file.puts "class #{class_name.lchop("::")}"
    end
  end

  private def define_serialization
    file.puts "include ::JSON::Serializable",
      "include ::JSON::Serializable::Unmapped",
      "include ::YAML::Serializable",
      "include ::YAML::Serializable::Unmapped",
      ""
  end

  private def define_class
    open_class

    define_serialization
    define_properties
    # define_mappings
    define_initializer
    # end

    # define_actions
    _end
  end

  def resource_alias
    "Resources::#{api_module}"
  end

  private def define_alias
    file.puts "module #{resource_alias}"
    file.puts "alias #{kind} = ::#{base_class.lchop("::")}::#{class_name.lchop("::")}"
    _end
  end

  private def get_ref(ref : String?)
    return unless ref
    _, kind, name = ref.split("/")
    case kind
    when "definitions"
      schema.definitions[name]
    when "path"
      schema.paths[name]
    else
      # Do nothing
    end
  end

  private def convert_type(kind : String, required = false)
    t = case kind
        when "object"
          "Hash(String, String)"
        when "boolean"
          "Bool"
        when "integer", "number"
          "Int32"
        when "resource"
          "Kubernetes::Resource"
        else
          kind.to_s.camelcase
        end
    t += " | Nil" unless required
    t
  end

  private def convert_type(arg : FunctionArgument)
    t = if arg.prop.nil?
          definition_ref(arg.ref) || convert_type(arg.type.to_s, true)
        else
          convert_type(arg.prop.not_nil!, true)
        end
    t += " | Nil" unless arg.required?
    # Log.trace { "Converted type 1: #{t}" }
    t
  end

  private def convert_type(param : Swagger::Path::Parameter)
    t = definition_ref(param.schema.try(&._ref)) ||
        convert_type(param.type.to_s, true)
    t += " | Nil" unless param.required
    # Log.trace { "Converted type 2: #{t}" }
    t
  end

  private def convert_type(property : Swagger::Definition::Property, required : Bool = true)
    # debugger
    t = if ref = definition_ref(property._ref)
          ref
        elsif property.x_kubernetes_preserve_unknown_fields
          "Hash(String, JSON::Any)"
        elsif property.x_kubernetes_int_or_string
          "Int32 | String"
        elsif property.type.to_s == "array"
          "Array(#{convert_type(property.items.as(Swagger::Definition::Property))})"
        elsif property.type.to_s == "object"
          types = Array(String).new
          types.concat property.properties.values.map { |x| convert_type(x.as(Swagger::Definition::Property)).as(String) }
          if property.additional_properties
            types << convert_type(property.additional_properties.not_nil!)
          end

          unless property.any_of.empty?
            types.concat property.any_of.map { |x| convert_type(x.as(Swagger::Definition::Property)).as(String) }
          end

          unless property.all_of.empty?
            types.concat property.all_of.map { |x| convert_type(x.as(Swagger::Definition::Property)).as(String) }
          end

          types.uniq!.reject!(&.empty?)

          if types.empty?
            pp property
            raise "No types found for property"
          end

          "Hash(String, #{types.join(" | ")})"
          # elsif property.additional_properties
          #   "Hash(String, #{convert_type(property.additional_properties.not_nil!)})"
        else
          convert_type(property.type.to_s, true)
        end
    t += " | Nil" unless required
    # Log.trace { "Converted type 3: #{t}" }
    t
  end

  private def generate_description(description : String?)
    return unless description
    description.lines.each do |line|
      file.puts "# #{line.gsub(URL_REGEX, "[\\k<url>](\\k<url>)")}"
    end
  end

  private def resource_property?(name : String)
    %w(apiVersion kind).includes? name
  end

  def is_resource?
    is_resource?(@definition)
  end

  def is_list?
    name.ends_with? "List"
  end

  private def is_resource?(definition : Swagger::Definition)
    !name.includes?("apimachinery") &&
      %w(apiVersion kind metadata).all? { |p| definition.properties[p]? }
  end

  private def params_to_refs(params = Array(Swagger::Path::Parameter))
    ([] of Swagger::Definition).tap do |refs|
      params.each do |param|
        ref = get_ref(param.schema.try(&._ref))
        refs << ref if ref.is_a? Swagger::Definition
      end
    end
  end

  private def define_function(*, name : String, args : Hash(String, FunctionArgument), toplevel : Bool = false, named_args : Bool = false)
    file.print "def #{"self." if toplevel}#{name}("
    file.print "*, " if named_args && !args.empty?
    arg_list = (args.values.select(&.first_value?) + args.values.reject(&.first_value?)).map do |a|
      arg = a.name
      if is_resource? && arg == "@metadata"
        arg += " : Apimachinery::Apis::Meta::V1::ObjectMeta? = nil"
      elsif is_list? && arg == "@metadata"
        arg += " : Apimachinery::Apis::Meta::V1::ListMeta? = nil"
      else
        arg += " : #{convert_type(a)}"
        arg += " = #{a.default.inspect}" if !a.required? || a.default
      end
      arg
    end
    file.print arg_list.join(", ")
    file.puts ")"
    yield
    file.puts "end"
    file.puts
  end

  private def load_requires
    %w(yaml json).each do |req|
      file.puts "require #{req.inspect}"
    end
    file.puts
  end

  private def _end
    file.puts "end"
    file.puts
  end

  # ameba:disable Metrics/CyclomaticComplexity
  private def define_properties
    if properties.empty?
      define_serialization
    end

    if is_resource?
      file.puts %<  @[::JSON::Field(key: "apiVersion")]>
      file.puts %<  @[::YAML::Field(key: "apiVersion")]>
      file.puts "getter api_version : String = #{api_version_name.inspect}"
      file.puts "getter kind : String = #{kind.inspect}"
    end

    properties.each do |name, property|
      next if is_resource? && resource_property?(name)
      crystal_name = crystalize_name(name)
      prop_type = property.type
      prop_ref = property._ref
      prop_items = property.items

      # Lists items and metadata are already defined
      next if is_list? && name == "items"
      next if is_list? && name == "metadata"

      next unless prop_type || prop_ref
      next if prop_type == "array" && !prop_items

      # Print property descriptions
      generate_description property.description
      req = required.includes?(name)

      # Resource metadata is already defined
      if is_resource? && name == "metadata"
        file.puts "property #{crystal_name} : Apimachinery::Apis::Meta::V1::ObjectMeta?"
        next
      end

      Log.info &.emit "define_properties", class_name: class_name, crystal_name: crystal_name, required: req, type: prop_type, ref: prop_ref
      _type = convert_type(property, req)

      if _type =~ /^Time\b/
        file.puts %<@[::JSON::Field(key: "#{name}", emit_null: #{req}, converter: K8S::TimeFormat.new)]>
        file.puts %<@[::YAML::Field(key: "#{name}", emit_null: #{req}, converter: K8S::TimeFormat.new)]>
      else
        file.puts %<@[::JSON::Field(key: "#{name}", emit_null: #{req})]>
        file.puts %<@[::YAML::Field(key: "#{name}", emit_null: #{req})]>
      end
      file.puts "property #{crystal_name} : #{_type}"
      file.puts ""
    end
  end

  private def generate_annotations
    # Define group annotations
    group_versions = definition.x_kubernetes_group_version_kind
    unless group_versions.nil?
      group_versions.each do |ver|
        next if ver.group.nil? || ver.kind.nil? || ver.version.nil?
        file.puts(%<@[::#{base_class.lchop("::")}::GroupVersionKind(group: "#{ver.group}", kind: "#{ver.kind}", version: "#{ver.version}", full: "#{name}")]>)
      end
    end

    # Define property annotations
    file.puts(%<@[::#{base_class.lchop("::")}::Properties(>)
    # first_arg = true
    properties.each do |name, property|
      # next if is_resource? && resource_property?(name)
      crystal_name = crystalize_name(name)
      # file.puts "," unless first_arg

      if is_resource? && name == "metadata"
        file.puts "#{crystal_name}: { type: Apimachinery::Apis::Meta::V1::ObjectMeta?, nilable: #{!required.includes?(name)}, key: #{name.inspect}, getter: false, setter: false },"
      else
        Log.debug { "#{class_name} - property: #{name}" }
        file.puts "#{crystal_name}: { type: #{convert_type(property)}, nilable: #{!required.includes?(name)}, key: #{name.inspect}, getter: false, setter: false },"
      end

      # first_arg = false
    end
    file.puts ")]"

    # Define action/operation annotations
    each_actions do |path_name, path|
      path.action_map.each do |verb, action|
        next if action.nil?
        action_name = action.x_kubernetes_action

        next if action_name.nil?
        parse_action_operation(path_name, path, verb, action) do |_, args, toplevel|
          file.puts(%<@[::#{base_class.lchop("::")}::Action(name: "#{action_name}", verb: "#{verb}",>)
          file.puts(%< path: "#{path_name}",toplevel: #{toplevel}, >)
          file.puts(%< args: [#{parse_operation_args_string(args).join(",\n")}]>)
          file.puts(")]")
        end
      end
    end
  end

  private def define_initializer
    args = properties.each_with_object({} of String => FunctionArgument) do |(name, prop), memo|
      next if is_resource? && resource_property?(name)
      memo["@" + name] = FunctionArgument.new(name, prop, definition, ivar: true)
    end
    # arg_map["name"] = FunctionArgument.new("name", arg_map["@spec"].required) if is_resource? && arg_map["@spec"]

    define_function(name: "initialize", args: args, named_args: true) do
      # if arg_map["name"]
      #   "@spec = if name"
      # end
    end
  end

  def api_version
    name.sub(/^io\.k8s(\.[-a-z]+\.pkg)?\.apis?(\.core)?\./, "").split(".")[0..-2].join("/")
  end

  def api_version_name
    case api_version
    when .starts_with? "rbac/v1"
      api_version.sub(/^rbac\/v1/, "rbac.authorization.k8s.io/v1")
    else
      api_version
    end
  end

  private def api_module
    api_version.split("/").map(&.gsub('-', '_').camelcase).join("::")
  end

  def kind
    is_list? ? "List" : self.name.split(".")[-1]
  end

  # :deprecated:
  private def define_mappings
    {"YAML", "JSON"}.each do |t|
      file.puts "::#{t}.mapping({ "
      first_arg = true
      if is_resource?
        file.puts %(api_version: { type: String, default: #{api_version_name.inspect}, key: "apiVersion", setter: false },)
        file.print %(kind: { type: String, default: #{kind.inspect}, key: "kind", setter: false })
        first_arg = false
      end

      properties.each do |name, property|
        next if is_resource? && resource_property?(name)
        crystal_name = crystalize_name(name)
        file.puts "," unless first_arg
        file.print "#{crystal_name}: { type: #{convert_type(property)}, nilable: #{!required.includes?(name)}, key: #{name.inspect}, getter: false, setter: false }"
        first_arg = false
      end
      file.puts "", "}, true)"
      file.puts
    end unless properties.empty?
  end

  private def each_actions
    paths = schema.paths.select do |_, path|
      next true if path.parameters.any? { |val| definition_ref(val.schema.try(&._ref)) == class_name }
      next true if path.actions.any?(&.parameters.any? { |val| definition_ref(val.schema.try(&._ref)) == class_name })
      next true if path.actions.any?(&.responses.values.any? { |val| definition_ref(val.schema.try(&._ref)) == class_name })
    end

    paths.each do |path_name, path|
      yield path_name, path
      # define_operations(path_name, path)
    end unless name.starts_with?("io.k8s.apimachinery")
  end

  private def parse_action_operation(path_name : String, path : Swagger::Path, verb, action)
    function_name = action.operationId
      .sub("Namespaced", "")
      .sub("List", "")
      .sub("Collection", "")
      .sub("Core" + @class_name.chomp("List").split("::").last(2).join, "")
      .sub(@class_name.chomp("List").split("::").last(3).join, "")
      .underscore

    params = (path.parameters + action.parameters).select(&.in.== "query")
    body = (path.parameters + action.parameters).select { |param| param.required && param.in == "body" }

    path_params = path_name.scan(/{([a-z]+)}/).map(&.[1]).map { |str| Swagger::Path::Parameter.new(str) }
    toplevel = params.map(&.name).includes?("labelSelector")
    toplevel ||= path_params.map(&.name).includes?("name") && verb == :get
    params += path_params if toplevel

    args = {} of String => FunctionArgument
    params_to_refs(body).reject(&.== @definition).each do |ref|
      ref.properties.reject { |name, _| is_resource?(ref) && resource_property?(name) }.each do |name, prop|
        args[name] = FunctionArgument.new(name, prop, ref)
      end
    end

    args["context"] = FunctionArgument.new("context", "string")
    params.each { |param| args[param.name] = FunctionArgument.new(param) }
    args["namespace"].default = "default" if args["namespace"]?
    args.delete("pretty")

    yield function_name, args, toplevel
  end

  private def parse_operation_args_string(args : Hash(String, FunctionArgument))
    arg_list = (args.values.select(&.first_value?) + args.values.reject(&.first_value?)).map do |a|
      ars = if is_resource? && a.name == "metadata"
              [%<name: "#{a.name}">, %<type: Apimachinery::Apis::Meta::V1::ObjectMeta?>]
            elsif is_list? && a.name == "metadata"
              [%<name: "#{a.name}">, %<type: Apimachinery::Apis::Meta::V1::ListMeta?>]
            else
              [%<name: "#{a.name}">, %<type: #{convert_type(a)}>]
            end
      ars << %<default: #{a.default.inspect}> if !a.required? || a.default
      %<{#{ars.join(',')}}>
    end
    arg_list
  end
end
