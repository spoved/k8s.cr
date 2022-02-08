require "../annos"

abstract struct K8S::Kubernetes::Resource
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

  # :nodoc:
  macro k8s_cast_type(value, *typs)
    case {{value}}
    {% for kind in typs.uniq %}
    {% kind = kind.resolve %}
    when {{kind.id}}
      {% if kind <= Array %}
        k8s_cast_array_typ({{value}}, {{kind.id}})
      {% elsif kind <= Hash %}
        k8s_cast_hash_typ({{value}}, {{kind.id}})
      {% elsif kind.union_types.size > 1 %}
        k8s_cast_type({{value}}, {{*kind.union_types}})
      {% else %}
        {{value}}.as({{kind.id}})
      {% end %}
    {% end %}

    {% atyps = typs.uniq.select(&.resolve.<=(Array)) %}
    {% if atyps.size >= 1 %}
    when Array
      {% if atyps.size == 1 %}
        k8s_cast_array_typ({{value}}, {{atyps[0].id}})
      {% else %}
        k8s_cast_type({{value}}, {{*atyps}})
      {% end %}
    {% end %}

    {% htyps = typs.uniq.select(&.resolve.<=(Hash)) %}
    {% if htyps.size >= 1 %}
    when Hash
      {% if htyps.size == 1 %}
        k8s_cast_hash_typ({{value}}, {{htyps[0].id}})
      {% else %}
        k8s_cast_type({{value}}, {{*htyps}})
      {% end %}
    {% end %}

    {% rtyps = typs.uniq.select(&.resolve.<=(K8S::Kubernetes::Resource)) %}
    {% if rtyps.size >= 1 %}
    when Hash(String, K8S::Internals::Types::GenericObject::Value), Hash(String, ::K8S::Kubernetes::Resource::Field)
      {% if rtyps.size == 1 %}
        {{rtyps[0].id}}.new {{value}}
      {% else %}
        raise K8S::Kubernetes::Resource::Error::CastError.new({{value}}, [{{*rtyps.uniq}}])
      {% end %}
    {% end %}

    {% gtyps = typs.uniq.select(&.resolve.<=(K8S::Kubernetes::Object)) %}
    {% if rtyps.size == 0 && gtyps.size >= 1 %}
    when Hash(String, K8S::Internals::Types::GenericObject::Value), Hash(String, ::K8S::Kubernetes::Resource::Field)
      {% if gtyps.size == 1 %}
        {{gtyps[0].id}}.new {{value}}
      {% else %}
        raise K8S::Kubernetes::Resource::Error::CastError.new({{value}}, [{{*gtyps.uniq}}])
      {% end %}
    {% end %}

    else
      Log.warn &.emit %<Unknown type: "#{{{value}}}">
      raise K8S::Kubernetes::Resource::Error::CastError.new({{value}}, [{{*typs.uniq}}])
    end
  end

  # Will define getter/setter for the provided field. The field must be a `K8S::Kubernetes::Resource` or a `K8S::Kubernetes::Resource::Field`.
  #
  # ```
  # struct TestService < K8S::Kubernetes::Resource
  #   k8s_resource_property(value1 : String, nilable: true, read_only: false, description: %<description>)
  #   k8s_resource_property(value2 : Int32, nilable: false, read_only: false, description: %<description>)
  #   k8s_resource_property(value3 : Bool = true, nilable: false, read_only: false, description: %<description>)
  # end
  # ```
  private macro define_prop(name, nilable = true, read_only = false, description = nil, key = nil, kind = nil, default = nil, **options)
    {%
      if name.is_a?(TypeDeclaration)
        accessor = name.var
        kind = name.type.resolve
        default = name.value
      else
        accessor = name
        if kind.is_a?(Path)
          kind = kind.resolve
        else
          puts name.class_name
          puts kind.class_name
          raise "kind must be provided"
        end
      end
    %}

    {% if key.nil? %}{% key = accessor.id.stringify %}{% end %}

    # :nodoc:
    # Internal method to access the value of the given key and cast it to the appropriate type.
    def __{{accessor.id}}
      %value = self.[{{key}}]?

      {% if !nilable %}
      if %value.nil?
        raise K8S::Kubernetes::Resource::Error::NotNilable.new({{key}}, {{accessor.id.stringify}})
      end
      {% end %}
      k8s_cast_type(%value, {{*kind.union_types}}{% if nilable %}, Nil {% end %})
    end

    {% if description %}
    # {{description}}{% end %}
    def {{accessor.id}} : {{kind}} {% if nilable %} | Nil {% end %}
      __{{accessor.id}}
    end

    # :ditto:
    def {{accessor.id}}? : {{kind}} | Nil
      return nil if self.[{{key}}]?.nil?
      __{{accessor.id}}
    end

    # :ditto:
    def {{accessor.id}}! : {{kind}}
      {% if !default.nil? %}
      self.{{accessor.id}} = {{default}} if self.{{accessor.id}}?.nil?
      {% end %}
      __{{accessor.id}}.not_nil!
    end

    # :ditto:
    {% if read_only %}private{% end %} def {{accessor.id}}=(value : {{kind}}{% if nilable %} | Nil {% end %})
      self.[{{key}}] = value
    end
  end

  # Will define a new K8S resource.
  #
  # ```
  # ::K8S::Kubernetes::Resource.define_object("apps", "v1", "DaemonSetTest",
  #   {accessor: "spec", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1::DaemonSetSpec, description: %<The desired behavior of this daemon set. ....>},
  #   {accessor: "status", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1::DaemonSetStatus, description: %<The current status of this daemon set. ....>},
  #   namespace: "::K8S::Api",
  # )
  # ```
  macro define_object(group, version, kind, namespace = nil, properties = [] of NamedTupleLiteral, list = false, list_kind = nil)
    # Build the group string since we dont have reverse, this gets complicated.
    {%
      group_parts = group.split(".")
      index = group_parts.size - 1
      new_group_parts = [] of StringLiteral
      (0..index).each do |i|
        new_group_parts << group_parts[index]
        index -= 1
      end

      r_group_full = new_group_parts.join(".")
      r_group = r_group_full
        .gsub(/^(io(\.k8s)?|com)\./, "")
        .gsub(/\.pkg\./, ".")
        .gsub(/JSON/, "Json")
        .gsub(/\-/, "_")

      mod_path = (r_group + "." + version).split(".").map(&.camelcase).join("::")
      if namespace
        mod_path = "#{namespace.gsub(/^::/, "").id}::#{mod_path.id}"
      end

      c_kind = kind.gsub(/JSON/, "Json")
    %}

    module ::{{mod_path.id}}
      @[::K8S::GroupVersionKind(group: {{r_group_full.id.stringify}}, version: {{version.id.stringify}}, kind: {{kind.id.stringify}}, full: "{{group.id}}.{{version.id}}.{{kind.id}}")]
      @[::K8S::ObjectProperties(
        api_version: {name: "api_version", kind: String, default: "{{r_group_full.id}}/{{version.id}}", key: "apiVersion", nilable: false, read_only: true, description: %<APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))>},
        kind: { name: "kind", kind: String, default: "{{kind.id}}", nilable: false, read_only: true, description: %<Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))>},
        {% if list %}
        metadata: {name: "metadata", kind: ::K8S::Apimachinery::Apis::Meta::V1::ListMeta, default: nil, nilable: true, read_only: false, description: %<Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))>},
        items: {name: "items", kind: Array({{list_kind.id}}), default: nil, nilable: false, read_only: false, description: %<Items is a list of `{list_kind.id}}`.>},
        {% else %}
        metadata: {name: "metadata", kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta, default: nil, nilable: true, read_only: false, description: %<Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))>},
        {% end %}
        {% for prop in properties %}{{prop[:name].id}}: {{prop}},
        {% end %}
      )]
      struct {{c_kind.id}} < ::K8S::Kubernetes::Resource::{% if list %}List({{list_kind.id}}){% else %}Object{% end %}
        {% for prop in properties %}
        define_prop({{**prop}})
        {% end %}

        def self.new
          self.new({
            apiVersion: "{{r_group_full.id}}/{{version.id}}",
            kind: "{{kind.id}}",
            {% if list %}
            items: Array({{list_kind.id}}).new,
            {% end %}
          })
        end

        # :nodoc:
        private def _init_validate!
          raise K8S::Kubernetes::Resource::Error.new %<apiVersion: "#{self.api_version}" does not match expected: "{{r_group_full.id}}/{{version.id}}"> if self.api_version != "{{r_group_full.id}}/{{version.id}}"
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
      end
    end
  end
end
