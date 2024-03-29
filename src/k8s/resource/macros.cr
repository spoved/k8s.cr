require "../annos"

# :nodoc:
macro k8s_cast_array_typ(value, typ)
  {% typ = typ.resolve %}
  {{value}}.as(Array)
        .map do |v|
          k8s_cast_type(v, {{*typ.type_vars[0].union_types}})
        end.as({{typ.id}})
end

# :nodoc:
macro k8s_cast_hash_typ(value, typ)
  {% typ = typ.resolve %}
  {{value}}.as(Hash)
    .transform_values do |v|
      k8s_cast_type(v, {{*typ.type_vars[1].union_types}})
    end
    .as({{typ.id}})
end

# Macro for casting a value to one or more types, based on a list of types
macro k8s_cast_type(value, *typs)
  case {{value}}
  # Start a switch case statement for the given value
  {% for kind in typs.uniq %}
  # Loop through unique types in the given list
  {% kind = kind.resolve %}
  # Resolve the kind to get the final type
  when {{kind.id}}
    k8s_cast_value({{value}}, {{kind.id}})
  {% end %}

  # Cast the value to an array type, if necessary
  {% atyps = typs.uniq.select(&.resolve.<=(Array)) %}
  {% if atyps.size >= 1 %}
  when Array
    k8s_cast_array({{value}}, {{*atyps}})
  {% end %}

  # Cast the value to a hash type, if necessary
  {% htyps = typs.uniq.select(&.resolve.<=(Hash)) %}

  # Check if value is a Hash and has a possible type
  {% if htyps.size >= 1 %}
  when Hash
    k8s_cast_hash({{value}}, {{*htyps}})
  {% end %}

  {% rtyps = typs.uniq.select(&.resolve.<=(K8S::Kubernetes::Resource)) %}

  # Check if value is a Hash with keys of type String and values of type either K8S::Internals::Types::GenericObject::Value or ::K8S::Kubernetes::Resource::Field
  {% if rtyps.size >= 1 %}
  when Hash(String, K8S::Internals::Types::GenericObject::Value), Hash(String, ::K8S::Kubernetes::Resource::Field)
    k8s_create_resource_object({{value}}, {{*rtyps}})
  {% end %}

  {% gtyps = typs.uniq.select(&.resolve.<=(K8S::Kubernetes::Object)) %}

  # Check if value is a Hash with keys of type String and values of type either K8S::Internals::Types::GenericObject::Value or ::K8S::Kubernetes::Resource::Field
  # and no possible resource type was found
  {% if rtyps.size == 0 && gtyps.size >= 1 %}
  when Hash(String, K8S::Internals::Types::GenericObject::Value), Hash(String, ::K8S::Kubernetes::Resource::Field)
    k8s_create_resource_object({{value}}, {{*gtyps}})
  {% end %}

  else
    Log.warn &.emit %<Unknown type: "#{{{value}}}">
    raise K8S::Kubernetes::Resource::Error::CastError.new({{value}}, [{{*typs.uniq}}])
  end
end

# Macro for casting a value to a single type
macro k8s_cast_value(value, kind)
  {% kind = kind.resolve %}

  {% if kind <= Array %}
    # If the resolved type is an array, cast it using the k8s_cast_array_typ macro
    k8s_cast_array_typ({{value}}, {{kind.id}})
  {% elsif kind <= Hash %}
    # If the resolved type is a hash, cast it using the k8s_cast_hash_typ macro
    k8s_cast_hash_typ({{value}}, {{kind.id}})
  {% elsif kind.union_types.size > 1 %}
    # If the resolved type is a union type with more than one possible type, cast it using the k8s_cast_type macro
    k8s_cast_type({{value}}, {{*kind.union_types}})
  {% else %}
    # Otherwise, cast the value using the 'as' method of the resolved type
    {{value}}.as({{kind.id}})
  {% end %}
  {% if kind <= Int %}
    # If the resolved type is an integer, cast it to the appropriate integer type
    {% if kind <= Int32 %}
      {{value}}.to_i32
    {% elsif kind <= Int64 %}
      {{value}}.to_i64
    {% else %}
      {{value}}.to_i
    {% end %}
  {% end %}
  {% if kind <= Float %}
    # If the resolved type is a float, cast it to the appropriate float type
    {% if kind <= Float32 %}
      {{value}}.to_f32
    {% elsif kind <= Float64 %}
      {{value}}.to_f64
    {% else %}
      {{value}}.to_f
    {% end %}
  {% end %}
  {% if kind <= Time %}
    # If the resolved type is a Time, parse the string value using K8S::TimeFormat
    when String
      K8S::TimeFormat.parse({{value}})
  {% end %}
end

# Macro for casting a value to an array type
macro k8s_cast_array(value, *kinds)
  {% atyps = kinds.uniq.select(&.resolve.<=(Array)) %}
  {% if atyps.size == 1 %}
    # If there is only one possible array type, cast the value using k8s_cast_array_typ macro
    k8s_cast_array_typ({{value}}, {{atyps[0].id}})
  {% elsif atyps.size > 1 %}
    # If there are multiple possible array types, cast the value using k8s_cast_type macro
    k8s_cast_type({{value}}, {{*atyps}})
  {% end %}
end

# Macro for casting a value to a hash type
macro k8s_cast_hash(value, *kinds)
  {% htyps = kinds.uniq.select(&.resolve.<=(Hash)) %}
  {% if htyps.size == 1 %}
    # If there is only one possible hash type, cast the value using k8s_cast_hash_typ macro
    k8s_cast_hash_typ({{value}}, {{htyps[0].id}})
  {% elsif htyps.size > 1 %}
    # If there are multiple possible hash types, cast the value using k8s_cast_type macro
    k8s_cast_type({{value}}, {{*htyps}})
  {% end %}
end

macro k8s_create_resource_object(value, *kinds)
  {% if kinds.size == 1 %}
    # If there is only one possible resource type, create a new object of that type with the given value
    {{kinds[0].id}}.new {{value}}
  {% else %}
    # If there are multiple possible resource types, raise a CastError with all possible types
    raise K8S::Kubernetes::Resource::Error::CastError.new({{value}}, [{{*kinds.uniq}}])
  {% end %}
end

macro k8s_create_generic_object(value, kinds)
  {% if kinds.size == 1 %}
    # If there is only one possible object type, create a new object of that type with the given value
    {{kinds[0].id}}.new {{value}}
  {% else %}
    # If there are multiple possible object types, raise a CastError with all possible types
    raise K8S::Kubernetes::Resource::Error::CastError.new({{value}}, [{{*kinds.uniq}}])
  {% end %}
end

abstract struct K8S::Kubernetes::Resource
  # Will define getter/setter for the provided field. The field must be a `K8S::Kubernetes::Resource` or a `K8S::Kubernetes::Resource::Field`.
  #
  # ```
  # struct TestService < K8S::Kubernetes::Resource
  #   define_prop(value1 : String, nilable: true, read_only: false, description: %<description>)
  #   define_prop(value2 : Int32, nilable: false, read_only: false, description: %<description>)
  #   define_prop(value3 : Bool = true, nilable: false, read_only: false, description: %<description>)
  # end
  # ```
  macro define_prop(name, nilable = true, read_only = false, description = nil, key = nil, kind = nil, default = nil, **options)
    {%
      if name.is_a?(TypeDeclaration)
        accessor = name.var
        kind = name.type.resolve
        default = name.value
      else
        accessor = name
        if kind.is_a?(Path) || kind.is_a?(Generic)
          if options[:namespace] && options[:subresource]
            kind = parse_type("#{options[:namespace].id}::#{kind}").resolve
          else
            kind = kind.resolve
          end
        else
          puts name.class_name
          puts kind.class_name
          raise "kind must be provided"
        end
      end
    %}

    {% if key.nil? %}{% key = accessor.id.stringify %}{% end %}

    {% if kind < K8S::Kubernetes::Resource::ListWrapper %}
      # :nodoc:
      @[JSON::Field(ignore: true)]
      @[YAML::Field(ignore: true)]
      @_{{accessor.id}}_wrapper : {{kind}} = {{kind}}.new

      # :nodoc:
      # Internal method to access the value of the given key and cast it to the appropriate type.
      private def __{{accessor.id}} : {{kind}}
        %tmp = self.@__object__.@__hash__[{{key}}]?

        if %tmp.is_a?(Array(K8S::Internals::Types::GenericObject::Value))

          # puts @_{{accessor.id}}_wrapper.object_id
          # puts %tmp.object_id

          unless @_{{accessor.id}}_wrapper.same?(%tmp)
            @_{{accessor.id}}_wrapper.replace(%tmp)
            self.@__object__.@__hash__[{{key}}] = @_{{accessor.id}}_wrapper.@__array__
          end
        else
          # if its not set, set it now
          self.@__object__.@__hash__[{{key}}] = @_{{accessor.id}}_wrapper.@__array__
        end

        @_{{accessor.id}}_wrapper
      end

      # :nodoc:
      # Internal method to set the value of the given key.
      private def __{{accessor.id}}=(value : {{kind}})
        unless __{{accessor.id}}.same?(value)
          __{{accessor.id}}.replace(value)
        else
          # puts "already the same"
        end
      end

      private def __{{accessor.id}}=(value : Enumerable)
        nv = value.map do |v|
          case v
          when {{kind.type_vars.first}}
            v
          when NamedTuple, Hash
            {{kind.type_vars.first}}.new(v)
          else
            raise K8S::Kubernetes::Resource::Error::CastError.new(v, [{{kind.type_vars.first}}])
          end
        end
        __{{accessor.id}}.replace(nv)
      end

      # :ditto:
      {% if read_only %}private{% end %} def {{accessor.id}}=(value : Enumerable{% if nilable %} | Nil {% end %})
        if value.nil?
          self.[{{key}}] = nil
        else
          self.__{{accessor.id}} = value
        end
      end

    {% else %}
      # :nodoc:
      # Internal method to access the value of the given key and cast it to the appropriate type.
      def __{{accessor.id}} : {{kind}} {% if nilable %}| Nil {% end %}
        %value = self.[{{key}}]?

        {% if !nilable %}
        if %value.nil?
          raise K8S::Kubernetes::Resource::Error::NotNilable.new({{key}}, {{accessor.id.stringify}})
        end
        {% end %}
        k8s_cast_type(%value, {{*kind.union_types}}{% if nilable %}, Nil {% end %})
      end

      # :nodoc:
      # Internal method to set the value of the given key.
      def __{{accessor.id}}=(value : {{kind}} | Nil)

        {% if nilable %}
        self.[{{key}}] = value
        {% else %}
        if value.nil?
          self.delete {{key}}
        else
          self.[{{key}}] = value
        end
        {% end %}
      end
    {% end %}

    {% not_nilable_type = kind.is_a?(Union) ? kind.types.reject(&.resolve.nilable?).first : (kind.is_a?(TypeNode) && kind.union? ? kind.union_types.reject(&.resolve.nilable?).first : kind) %}
    @[::K8S::ObjectProperty({{accessor.id}}: {
      name: "{{accessor.id}}", key: {{key}}, kind: {{not_nilable_type.id}}, nilable: {{nilable}}, read_only: {{read_only}}, description: {{description}}, default: {{default.nil? ? "nil" : default}}, {{**options}}
    })]
    {% if description %}{% for line in description.id.split("\n") %}
    # {{line.id}} {% end %}{% end %}
    def {{accessor.id}} : {{kind}} {% if nilable %} | Nil {% end %}
      __{{accessor.id}}
    end

    # :ditto:
    def {{accessor.id}}? : {{kind}} | Nil
      return nil if self.[{{key}}]?.nil?
      self.__{{accessor.id}}
    end

    # :ditto:
    def {{accessor.id}}! : {{kind}}
      {% if !default.nil? %}
      self.{{accessor.id}} = {{default}} if self.{{accessor.id}}?.nil?
      {% end %}
      self.__{{accessor.id}}.not_nil!
    end

    # :ditto:
    {% if read_only %}private{% end %} def {{accessor.id}}=(value : {{kind}}{% if nilable %} | Nil {% end %})
      self.__{{accessor.id}} = value
    end
  end

  macro define_object(kind, namespace, properties = [] of NamedTupleLiteral)
    {%
      c_kind = kind.id.gsub(/JSON/, "Json")
      mod_id = namespace.id.gsub(/^::/, "").id
    %}

    module ::{{mod_id}}
      @[::K8S::ObjectProperties(
        {% for prop in properties %}{{prop[:name].id}}: {{prop}},
        {% end %}
      )]
      struct {{c_kind.id}} < ::K8S::Kubernetes::Object
        {% for prop in properties %}
        K8S::Kubernetes::Resource.define_prop({{**prop}})
        {% end %}

        def self.new(**args)
          new(args)
        end

        def self.new(pull : ::JSON::PullParser)
          obj = K8S::Internals::GenericObject.new(pull)
          new(obj)
        end

        def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
          obj = K8S::Internals::GenericObject.new(ctx, node)
          new(obj)
        end
      end
    end
  end

  # Will define a new K8S resource.
  #
  # ```
  # ::K8S::Kubernetes::Resource.define_resource("apps", "v1", "DaemonSetTest",
  #   properties: [
  #     {name: "spec", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1::DaemonSetSpec, description: %<The desired behavior of this daemon set. ....>},
  #     {name: "status", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1::DaemonSetStatus, description: %<The current status of this daemon set. ....>},
  #   ],
  #   namespace: "::K8S::Api",
  # )
  # ```
  macro define_resource(group, version, kind, namespace = nil, properties = [] of NamedTupleLiteral, list = false, list_kind = nil, description = nil, versions = nil)
    {%
      r_group_full = ""
      if !group.empty?
        r_group_full = group
      end

      r_group = r_group_full
        .gsub(/^(io(\.k8s)?|com)\./, "")
        .gsub(/\.pkg\./, ".")
        .gsub(/JSON/, "Json")
        .gsub(/\-/, "_")

      if namespace
        mod_path = namespace.id.gsub(/^::/, "").id.stringify
      else
        mod_path = ""
      end
      c_kind = kind.id.gsub(/JSON/, "Json")
    %}

    @[::K8S::GroupVersionKind(group: {{r_group_full.id.stringify}}, version: {{version.id.stringify}}, kind: {{kind.id.stringify}}, full: "{{group.id}}.{{version.id}}.{{kind.id}}")]
    {% if versions %}{% for v in versions %}{% if !(v[:group] == group && v[:version] != version) && v[:kind] == kind %}
    @[::K8S::GroupVersionKind(group: {{v[:group].id.stringify}}, version: {{v[:version].id.stringify}}, kind: {{v[:kind].id.stringify}}, full: "{{v[:group].id}}.{{v[:version].id}}.{{v[:kind].id}}")]
    {% end %}{% end %}{% end %}
    @[::K8S::ObjectProperties(
      api_version: {name: "api_version", kind: String, default: "{{r_group_full.id}}/{{version.id}}", key: "apiVersion", nilable: false, read_only: true, description: %<APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))>},
      kind: { name: "kind", kind: String, default: "{{kind.id}}", nilable: false, read_only: true, description: %<Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))>},
      {% if list %}
      metadata: {name: "metadata", kind: ::K8S::Apimachinery::Apis::Meta::V1::ListMeta, default: nil, nilable: true, read_only: false, description: %<Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))>},
      items: {name: "items", kind: K8S::Kubernetes::Resource::ListWrapper({{list_kind.id}}), default: nil, nilable: false, read_only: false, description: %<Items is a list of `{list_kind.id}}`.>},
      {% else %}
      metadata: {name: "metadata", kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta, default: nil, nilable: true, read_only: false, description: %<Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))>},
      {% end %}
      {% for prop in properties %}{{prop[:name].id}}: {{prop}},
      {% end %}
    )]
    {% if description %}{% for line in description.id.split("\n") %}
    # {{line.id}} {% end %}{% end %}
    struct {{mod_path.id}}::{{c_kind.id}} < ::K8S::Kubernetes::Resource::{% if list %}List({{list_kind.id}}){% else %}Object{% end %}

      def self.group
        {{r_group_full.id.stringify}}
      end

      def self.api_version
        {{version.id.stringify}}
      end

      def self.kind
        {{kind.id.stringify}}
      end

      {% for prop in properties %}
      K8S::Kubernetes::Resource.define_prop({{**prop}})
      {% end %}

      def self.new
        self.new({
          apiVersion: "{{r_group_full.id}}".empty? ? "{{version.id}}" : "{{r_group_full.id}}/{{version.id}}",
          kind: "{{kind.id}}",
        })
      end

      # :nodoc:
      private def _init_validate!
        @__object__["apiVersion"] = "{{r_group_full.id}}".empty? ? "{{version.id}}" : "{{r_group_full.id}}/{{version.id}}" if @__object__["apiVersion"]?.nil?
        @__object__["kind"] = "{{kind.id}}" if @__object__["kind"]?.nil?

        if "{{r_group_full.id}}".empty?
          raise K8S::Kubernetes::Resource::Error.new %<apiVersion: "#{self.api_version}" does not match expected: "{{version.id}}"> if self.api_version != "{{version.id}}"
        else
          raise K8S::Kubernetes::Resource::Error.new %<apiVersion: "#{self.api_version}" does not match expected: "{{r_group_full.id}}/{{version.id}}"> if self.api_version != "{{r_group_full.id}}/{{version.id}}"
        end
        raise K8S::Kubernetes::Resource::Error.new %<kind: "#{self.kind}" does not match expected: "{{kind.id}}"> if self.kind != "{{kind.id}}"
      end

      def initialize(hash : Enumerable | Iterable | NamedTuple)
        super
        _init_validate!
      end

      def initialize(obj : K8S::Internals::GenericObject)
        super
        _init_validate!
      end

      {% if list %}
      def initialize(items : Array)
        super({
          apiVersion: "{{r_group_full.id}}/{{version.id}}",
          kind: "{{kind.id}}",
          items: items,
        })
      end
      {% end %}

      def self.new(obj : K8S::GenericObject)
        new(obj.@__object__)
      end

      def self.new(**args)
        new(args)
      end

      def self.new(pull : ::JSON::PullParser)
        obj = K8S::Internals::GenericObject.new(pull)
        obj["apiVersion"] = "{{r_group_full.id}}".empty? ? "{{version.id}}" : "{{r_group_full.id}}/{{version.id}}" if obj["apiVersion"]?.nil?
        obj["kind"] = "{{kind.id}}" if obj["kind"]?.nil?
        new(obj)
      end

      def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
        obj = K8S::Internals::GenericObject.new(ctx, node)
        obj["apiVersion"] = "{{r_group_full.id}}".empty? ? "{{version.id}}" : "{{r_group_full.id}}/{{version.id}}" if obj["apiVersion"]?.nil?
        obj["kind"] = "{{kind.id}}" if obj["kind"]?.nil?
        new(obj)
      end
    end
  end
end
