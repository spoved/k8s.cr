# :nodoc:
struct JSON::Any
  # Convert a YAML object to a JSON document.
  def self.new(ctx : YAML::ParseContext, node : YAML::Nodes::Node)
    JSON::Any.from_json YAML::Any.new(ctx, node).to_json
  end
end

# :nodoc:
class ::AnyHash::JSON
  # Convert a YAML object to a AnyHash::JSON document.
  def self.new(ctx : YAML::ParseContext, node : YAML::Nodes::Node)
    ::AnyHash::JSON.new(::JSON::Any.new(ctx, node).as_h)
  end
end

# :nodoc:
struct YAML::Any
  # Convert a JSON document to a YAML object.
  def self.new(parser : ::JSON::PullParser) : YAML::Any
    YAML.parse(JSON.parse(parser.read_raw).to_yaml)
  end
end

module ::K8S::Kubernetes::Resource
  macro finished
    {% entries = [] of NamedTuple %}
    {% others = {} of StringLiteral => TypeNode %}
    {% for resource in K8S::Kubernetes::Resource.all_subclasses %}
      {% if !resource.abstract? && resource.annotation(::K8S::GroupVersionKind) %}
        {% for anno in resource.annotations(::K8S::GroupVersionKind) %}
          {% entries << {
               group:    anno[:group].gsub(/(\.authorization)?\.k8s\.io/, ""),
               version:  anno[:version],
               kind:     anno[:kind],
               resource: resource,
             } %}
          {% value = "{#{anno[:group].gsub(/(\.authorization)?\.k8s\.io/, "")},#{anno[:version]},#{anno[:kind]}}" %}
          {% if !others[value] %}
            {% others[value] = resource %}
          {% end %}
        {% end %}
      {% end %}
    {% end %}
    {% for resource in K8S::Kubernetes::Resource.all_subclasses %}
      {% if !resource.abstract? && resource.annotation(::K8S::GroupVersionKind) %}
        {% for anno in resource.annotations(::K8S::GroupVersionKind) %}
          {% value = "{\"\",#{anno[:version]},#{anno[:kind]}}" %}
          {% if anno[:group] != "" && !others[value] %}
            {% others[value] = resource %}
            {% entries << {
                 group:    "",
                 version:  anno[:version],
                 kind:     anno[:kind],
                 resource: resource,
               } %}
          {% end %}
          {% value1 = "{\"core\",#{anno[:version]},#{anno[:kind]}}" %}
          {% if !others[value1] && anno[:group] == "" %}
            {% others[value1] = resource %}
            {% entries << {
                 group:    "core",
                 version:  anno[:version],
                 kind:     anno[:kind],
                 resource: resource,
               } %}
          {% end %}
        {% end %}
      {% end %}
    {% end %}
    {% for mapping in K8S::Kubernetes::Resource::MAPPINGS %}
      {% value = %<{"",#{mapping[0]},#{mapping[1].split("::").last}}> %}
      {% entries << {
           group:    "",
           version:  mapping[0],
           kind:     mapping[1].split("::").last,
           resource: mapping[2].resolve,
         } %}
      {% if !others[value] %}
        {% others[value] = mapping[2].resolve %}
      {% end %}
      {% if mapping[0] =~ /\// %}
        {% split = mapping[0].split('/') %}
        {% value1 = "{#{split.first},#{split.last},#{mapping[2]}}" %}
        {% entries << {
             group:    split.first,
             version:  split.last,
             kind:     mapping[2],
             resource: mapping[2].resolve,
           } %}
        {% if !others[value1] && split.first == "" %}
          {% others[value1] = mapping[2].resolve %}
        {% end %}
      {% end %}
    {% end %}

    # :nodoc:
    REGISTRY = [
      {{*entries}}
    ]
  end

  macro define_serialize_methods(props)
    def self.new(pull : ::JSON::PullParser)
      hash = new
      pull.read_object do |key, key_location|
        parsed_key = K.from_json_object_key?(key)
        raise ::JSON::ParseException.new("Can't convert #{key.inspect} into #{K}", *key_location) unless parsed_key

        case parsed_key
        {% for prop in props %}
        when {{prop[:key].id.stringify}} {% if prop[:key] != prop[:accessor] %}, {{prop[:accessor].id.stringify}} {% end %}
          hash.@__hash__[{{prop[:key].id.stringify}}] = ({{prop[:kind].id}}).new(pull)
        {% end %}
        else
          raise ::JSON::ParseException.new("Unknown key #{parsed_key}", *key_location)
        end
      end

      hash
    end

    def to_json(json : ::JSON::Builder) : Nil
      json.object do
        {% for prop in props %}
        json.field {{prop[:key].id.stringify}}.to_json_object_key do
           {{prop[:accessor].id}}.to_json(json)
        end
        {% end %}

        # TODO: Handle unmapped keys

        # each do |key, value|
        #   json.field key.to_json_object_key do
        #     value.to_json(json)
        #   end
        # end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      hash = new
      unless node.is_a?(::YAML::Nodes::Mapping)
        node.raise "Expected mapping, not #{node.kind}"
      end

      ::YAML::Schema::Core.each(node) do |key, value|
        parsed_key = K.new(ctx, key)
        case parsed_key
        {% for prop in props %}
        when {{prop[:key].id.stringify}} {% if prop[:key] != prop[:accessor] %}, {{prop[:accessor].id.stringify}} {% end %}
          parsed_value = {{prop[:kind].id}}.new(ctx, value)
          Log.trace { "Setting #{parsed_key} to #{parsed_value}" }
          hash[{{prop[:key].id.stringify}}] = parsed_value
        {% end %}
        else
          node.raise "Unknown key #{parsed_key}"
        end
      end
      hash
    end

    def to_yaml(yaml : ::YAML::Nodes::Builder) : Nil
      yaml.mapping(reference: self) do
        {% for prop in props %}
        {{prop[:key].id.stringify}}.to_yaml(yaml)
        {{prop[:accessor].id}}.to_yaml(yaml)
        {% end %}

        # TODO: Handle unmapped keys

        # each do |key, value|
        #   key.to_yaml(yaml)
        #   value.to_yaml(yaml)
        # end
      end
    end
  end

  protected def self.resource_class(group : String, ver : String, kind : String)
    reg = REGISTRY.find { |a| a[:group] == group && a[:version] == ver && a[:kind] == kind }
    reg[:resource] unless reg.nil?
  end

  private macro __from_yaml(group, ver, kind, ctx, node)
    case { {{group}}, {{ver}}, {{kind}} }
    {% for entry in REGISTRY %}
    when { {{entry[:group]}}, {{entry[:version]}}, {{entry[:kind]}} }
      {{entry[:resource]}}.new({{ctx}}, {{node}}).as(::K8S::Kubernetes::Resource)
    {% end %}
    else
      raise K8S::Error::UndefinedResource.new({{kind}})
    end
  end

  private macro __from_json(group, ver, kind, pull)
    case { {{group}}, {{ver}}, {{kind}} }
    {% for entry in REGISTRY %}
    when { {{entry[:group]}}, {{entry[:version]}}, {{entry[:kind]}} }
      {{entry[:resource]}}.new({{pull}}).as(::K8S::Kubernetes::Resource)
    {% end %}
    else
      raise K8S::Error::UndefinedResource.new({{kind}})
    end
  end

  def self.new(pull : ::JSON::PullParser)
    location = pull.location

    api_value = nil
    discriminator_value = nil

    # Try to find the discriminator while also getting the raw
    # string value of the parsed JSON, so then we can pass it
    # to the final type.
    json = String.build do |io|
      JSON.build(io) do |builder|
        builder.start_object
        pull.read_object do |key|
          if key == "apiVersion" || key == "groupVersion"
            value_kind = pull.kind
            case value_kind
            when .string?
              api_value = k8s_sanitize_api(pull.string_value)
            else
              raise ::JSON::SerializableError.new("JSON discriminator field 'apiVersion' has an invalid value type of #{value_kind}", to_s, nil, *location, nil)
            end
            builder.field(key, api_value)
            pull.read_next
          elsif key == "kind"
            value_kind = pull.kind
            case value_kind
            when .string?
              discriminator_value = pull.string_value
            else
              raise ::JSON::SerializableError.new("JSON discriminator field 'kind' has an invalid value type of #{value_kind}", to_s, nil, *location, nil)
            end
            builder.field(key, discriminator_value)
            pull.read_next
          else
            builder.field(key) { pull.read_raw(builder) }
          end
        end
        builder.end_object
      end
    end

    unless api_value
      raise ::JSON::SerializableError.new("Missing JSON discriminator field 'apiVersion'", to_s, nil, *location, nil)
    end

    unless discriminator_value
      raise ::JSON::SerializableError.new("Missing JSON discriminator field 'kind'", to_s, nil, *location, nil)
    end

    parts = api_value.split('/')
    ver = parts.pop
    group = parts.join('/')
    # pp({group: group, ver: ver, discriminator_value: discriminator_value})
    __from_json(group, ver, discriminator_value, pull)
  end

  def self.from_json(json : String)
    new(::JSON::PullParser.new(json))
  end

  def self.from_yaml(string_or_io)
    list = ::K8S::Api::Core::V1::List.new

    # node = YAML::Nodes.parse(string_or_io).nodes.first
    parser = ::K8S::Kubernetes::Resource::YAMLParser.new(string_or_io, &.parse_all_nodes)
    parser.each do |doc|
      doc.nodes.each do |node|
        list.items! << new(YAML::ParseContext.new, node)
      end
    end
    list
  end

  def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
    api_value = nil
    discriminator_value = nil

    ctx.read_alias(node, {{@type}}) do |obj|
      return obj
    end

    unless node.is_a?(YAML::Nodes::Mapping)
      node.raise "expected YAML mapping, not #{node.class}"
    end

    node.each do |key, value|
      next unless key.is_a?(YAML::Nodes::Scalar) && value.is_a?(YAML::Nodes::Scalar)
      next unless key.value == "kind" || key.value == "apiVersion"

      discriminator_value = value.value if key.value == "kind"
      api_value = value.value.gsub(".k8s.io", "") if key.value == "apiVersion" || key.value == "groupVersion"
    end

    node.raise "Missing YAML discriminator field 'kind'" if discriminator_value.nil?
    node.raise "Missing YAML discriminator field 'apiVersion'" if api_value.nil?

    # for the compilers benefit
    discriminator_value = discriminator_value.not_nil!
    api_value = api_value.not_nil!

    parts = api_value.split('/')
    ver = parts.pop
    group = parts.join('/')

    # pp({group: group, ver: ver, discriminator_value: discriminator_value})
    __from_yaml(group, ver, discriminator_value, ctx, node)
  end
end
