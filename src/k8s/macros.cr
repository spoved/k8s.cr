require "json"
require "yaml"

macro k8s_json_discriminator(mappings)
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
              api_value = pull.string_value
            else
              raise ::JSON::SerializableError.new("JSON discriminator field 'apiVersion' has an invalid value type of #{value_kind.to_s}", to_s, nil, *location, nil)
            end
            builder.field(key, api_value)
            pull.read_next
          elsif key == "kind"
            value_kind = pull.kind
            case value_kind
            when .string?
              discriminator_value = pull.string_value
            else
              raise ::JSON::SerializableError.new("JSON discriminator field 'kind' has an invalid value type of #{value_kind.to_s}", to_s, nil, *location, nil)
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

    if discriminator_value == "APIResourceList"
      return ::K8S::Apimachinery::Apis::Meta::V1::APIResourceList.from_json(json)
    end

    case {api_value, discriminator_value}
    {% for value in mappings.resolve %}
    when { {{ value[0] }}, {{value[1]}} }
      {{value[2].id}}.from_json(json)
    {% end %}
    else
      raise ::JSON::SerializableError.new("Unknown 'apiVersion', 'kind' discriminator values: #{api_value.inspect} #{discriminator_value.inspect}", to_s, nil, *location, nil)
    end
  end
end

macro k8s_yaml_discriminator(mappings)
  def self.new(ctx : YAML::ParseContext, node : YAML::Nodes::Node)
    api_value = nil
    discriminator_value = nil

    ctx.read_alias(node, \{{@type}}) do |obj|
      return obj
    end

    unless node.is_a?(YAML::Nodes::Mapping)
      node.raise "expected YAML mapping, not #{node.class}"
    end

    node.each do |key, value|
      next unless key.is_a?(YAML::Nodes::Scalar) && value.is_a?(YAML::Nodes::Scalar)
      next unless key.value == "kind" || key.value == "apiVersion"

      discriminator_value = value.value if key.value == "kind"
      api_value = value.value if key.value == "apiVersion" || key.value == "groupVersion"
    end

    node.raise "Missing YAML discriminator field 'kind'" unless discriminator_value
    node.raise "Missing YAML discriminator field 'apiVersion'" unless api_value

    case {api_value, discriminator_value}
    {% for value in mappings.resolve %}
    when { {{ value[0] }}, {{value[1]}} }
      return {{value[2].id}}.new(ctx, node)
    {% end %}
    else
      node.raise "Unknown 'apiVersion', 'kind' discriminator values: #{api_value.inspect} #{discriminator_value.inspect}"
    end
  end
end
