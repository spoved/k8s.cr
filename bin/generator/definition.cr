require "file_utils"
require "./overrides"

class Generator::Definition
  delegate schema, definitions, base, base_dir, base_class, definition_ref, convert_type, to: @generator
  delegate description, x_kubernetes_group_version_kind, to: @definition
  getter class_name : String
  getter name : String
  getter filename : String
  getter definition : Swagger::Definition
  getter alias_of : String? = nil

  delegate required, properties, to: definition

  def initialize(@generator : Generator, @name : String)
    @alias_of = @generator.is_alias?(@name)
    @class_name = generator.definitions[name]
    @definition = generator.schema.definitions[name]
    path = @class_name.split("::").map(&.underscore).join("/")
    @filename = File.join(base_dir, path) + ".cr"
    apply_overrides
  end

  def resource_alias
    "Resources::#{api_module}"
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

  private def resource_property?(name : String)
    %w(apiVersion kind).includes? name
  end

  private def write_function(*, name : String, args : Hash(String, FunctionArgument), toplevel : Bool = false, named_args : Bool = false)
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

  private def write_initializer
    args = properties.each_with_object({} of String => FunctionArgument) do |(name, prop), memo|
      next if is_resource? && resource_property?(name)
      memo["@" + name] = FunctionArgument.new(name, prop, definition, ivar: true)
    end
    # arg_map["name"] = FunctionArgument.new("name", arg_map["@spec"].required) if is_resource? && arg_map["@spec"]

    write_function(name: "initialize", args: args, named_args: true) do
      # if arg_map["name"]
      #   "@spec = if name"
      # end
    end
  end

  # Properties

  def is_resource?
    is_resource?(@definition)
  end

  def is_list?
    name.ends_with?("List") && definition.properties["items"]?
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
    # is_list? ? "List" : self.name.split(".")[-1]
    self.name.split(".")[-1]
  end

  def list_kind
    class_name.lchop("::").rchop("List")
  end

  # Helpers

  private def is_resource?(definition : Swagger::Definition)
    !name.includes?("apimachinery") &&
      %w(apiVersion kind metadata).all? { |p| definition.properties[p]? }
  end

  def each_actions
    paths = schema.paths.select do |_, path|
      next true if path.parameters.any? { |val| definition_ref(val.schema.try(&._ref)) == class_name }
      next true if path.actions.any?(&.parameters.any? { |val| definition_ref(val.schema.try(&._ref)) == class_name })
      next true if path.actions.any?(&.responses.values.any? { |val| definition_ref(val.schema.try(&._ref)) == class_name })
    end

    paths.each do |path_name, path|
      yield path_name, path
      # write_operations(path_name, path)
    end unless name.starts_with?("io.k8s.apimachinery")
  end

  def parse_action_operation(path_name : String, path : Swagger::Path, verb, action)
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

  def parse_operation_args_string(args : Hash(String, FunctionArgument))
    arg_list = (args.values.select(&.first_value?) + args.values.reject(&.first_value?)).map do |a|
      ars = if is_resource? && a.name == "metadata"
              [%<name: "#{a.name}">, %<type: ::#{base_class}::Apimachinery::Apis::Meta::V1::ObjectMeta?>]
            elsif is_list? && a.name == "metadata"
              [%<name: "#{a.name}">, %<type: ::#{base_class}::Apimachinery::Apis::Meta::V1::ListMeta?>]
            else
              [%<name: "#{a.name}">, %<type: #{convert_type(a)}>]
            end
      ars << %<default: #{a.default.inspect}> if !a.required? || a.default
      %<{#{ars.join(',')}}>
    end
    arg_list
  end

  private def params_to_refs(params = Array(Swagger::Path::Parameter))
    ([] of Swagger::Definition).tap do |refs|
      params.each do |param|
        ref = get_ref(param.schema.try(&._ref))
        refs << ref if ref.is_a? Swagger::Definition
      end
    end
  end

  def parse_properties : Array(NamedTuple(key: String, accessor: String, kind: String, nilable: Bool, default: String?, read_only: Bool, description: String?))?
    return nil if properties.empty?
    props = Array(NamedTuple(key: String, accessor: String, kind: String, nilable: Bool, default: String?, read_only: Bool, description: String?)).new

    if (is_list? || is_resource?)
      props << {
        key:         "apiVersion",
        accessor:    "api_version",
        kind:        "String",
        nilable:     false,
        default:     api_version_name,
        read_only:   true,
        description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))",
      }

      props << {
        key:         "kind",
        accessor:    "kind",
        kind:        "String",
        nilable:     false,
        default:     kind,
        read_only:   true,
        description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))",
      }

      props << {
        key:         "metadata",
        accessor:    "metadata",
        kind:        is_list? ? "::K8S::Apimachinery::Apis::Meta::V1::ListMeta" : "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta",
        nilable:     true,
        default:     nil,
        read_only:   false,
        description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))",
      }
    end

    properties.each do |name, property|
      next if (is_list? || is_resource?) && resource_property?(name)
      crystal_name = crystalize_name(name)
      description = property.description.nil? ? nil : property.description.not_nil!.gsub(URL_REGEX, "[\\k<url>](\\k<url>)")

      next if name == "metadata" && (is_list? || is_resource?)

      if is_list? && name == "items"
        props << {
          key:         "items",
          accessor:    "items",
          kind:        "Array(::#{base_class}::#{list_kind})",
          nilable:     !required.includes?(name),
          default:     nil,
          read_only:   false,
          description: description,
        }
        next
      end

      props << {
        key:         name,
        accessor:    crystal_name,
        kind:        convert_type(property),
        nilable:     !required.includes?(name),
        default:     nil,
        read_only:   false,
        description: description,
      }
    end
    props
  end
end
