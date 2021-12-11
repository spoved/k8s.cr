require "json"
require "yaml"
require "./error"

macro k8s_sanitize_api(api)
  {{api}}.gsub(/(\.authorization)?\.k8s\.io/, "")
end

macro k8s_resource_class(group, ver, kind)
  {% others = {} of StringLiteral => TypeNode %}
  {% for resource in K8S::Kubernetes::Resource.all_subclasses %}
    {% if !resource.abstract? && resource.annotation(::K8S::GroupVersionKind) %}
    {% anno = resource.annotation(::K8S::GroupVersionKind) %}
      {% value = "{#{anno[:group].gsub(/(\.authorization)?\.k8s\.io/, "")},#{anno[:version]},#{anno[:kind]}}" %}
      {% if !others[value] %} {% others[value] = resource %} {% end %}
    {% end %}
  {% end %}
  {% for resource in K8S::Kubernetes::Resource.all_subclasses %}
    {% if !resource.abstract? && resource.annotation(::K8S::GroupVersionKind) %}
      {% anno = resource.annotation(::K8S::GroupVersionKind) %}
      {% value = "{\"\",#{anno[:version]},#{anno[:kind]}}" %}
      {% if anno[:group] != "" && !others[value] %} {% others[value] = resource %} {% end %}
      {% value1 = "{\"core\",#{anno[:version]},#{anno[:kind]}}" %}
      {% if !others[value1] && anno[:group] == "" %} {% others[value1] = resource %} {% end %}
    {% end %}
  {% end %}
  {% for mapping in K8S::Kubernetes::Resource::MAPPINGS %}
    {% value = %<{"",#{mapping[0]},#{mapping[1].split("::").last}}> %}
    {% if !others[value] %} {% others[value] = mapping[2].resolve %} {% end %}
    {% if mapping[0] =~ /\// %}{% split = mapping[0].split('/') %}
    {% value1 = "{#{split.first},#{split.last},#{anno[:kind]}}" %}
    {% if !others[value1] && anno[:group] == "" %} {% others[value1] = resource %} {% end %}
    {% end %}
  {% end %}

  case { {{group}}, {{ver}}, {{kind}} }
  {% for key, resource in others %}
  when {{key.id}}
    {{resource.id}}
  {% end %}
  else
    Log.warn &.emit %<Unknown api resource: "#{{{group}}}/#{{{ver}}}/#{{{kind}}}">,
      group: {{group}}, version: {{ver}}, kind: {{kind}}
    raise K8S::Error::UnknownResource.new("#{{{group}}}/#{{{ver}}}/#{{{kind}}}")
  end
end

macro k8s_json_discriminator(mappings)
  {% verbatim do %}
  macro finished
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

    parts = api_value.split('/')
    ver = parts.pop
    group = parts.join('/')
    klass = k8s_resource_class(group, ver, discriminator_value)

    case klass
    {% for resource in K8S::Kubernetes::Resource.all_subclasses %}
    {% if !resource.abstract? && resource.annotation(::K8S::GroupVersionKind) %}
    when {{resource.id}}.class
      {{resource.id}}.from_json(json)
    {% end %}{% end %}
    else
      raise K8S::Error::UndefinedResource.new(klass)
    end
  end
  end
  {% end %}
end

macro k8s_yaml_discriminator(mappings)
  {% verbatim do %}
  macro finished
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
    klass = k8s_resource_class(group, ver, discriminator_value)

    case klass
    {% for resource in K8S::Kubernetes::Resource.all_subclasses %}
    {% if !resource.abstract? && resource.annotation(::K8S::GroupVersionKind) %}
    when {{resource.id}}.class
      {{resource.id}}.new(ctx, node)
    {% end %}{% end %}
    else
      raise K8S::Error::UndefinedResource.new(klass)
    end
  end
  end
  {% end %}
end

# TODO: Would like to be able to create objects from named tuples, but
#       that requires a lot of work.
#
# macro finished
#   {% for obj in Object.all_subclasses %}
#     {% if !obj.abstract? && obj.annotation(::K8S::Properties) %}

#     class {{obj.id}}
#       def initialize(**args)
#       {% for anno in obj.annotations(::K8S::Properties) %}
#         {% props = anno.named_args %}
#         {% for name, prop in props %}
#         if args[:{{name.id}}]
#           @{{name.id}} = args[:{{name}}]
#         end
#         {% end %}
#       {% end %}
#       end
#     end
#     {% end %}
#   {% end %}
# end
