require "json"
require "yaml"
require "./error"

# :nodoc:
macro k8s_sanitize_api(api)
  {{api}}.gsub(/(\.authorization)?\.k8s\.io/, "")
end

macro k8s_new_resource(group, ver, kind, obj)
  {% others = {} of StringLiteral => TypeNode %}
  {% for resource in K8S::Kubernetes::Resource.all_subclasses %}
    {% if !resource.abstract? && resource.annotation(::K8S::GroupVersionKind) %}
      {% for anno in resource.annotations(::K8S::GroupVersionKind) %}
        {% value = "{#{anno[:group].gsub(/(\.authorization)?\.k8s\.io/, "")},#{anno[:version]},#{anno[:kind]}}" %}
        {% if !others[value] %} {% others[value] = resource %} {% end %}
      {% end %}
    {% end %}
  {% end %}
  {% for resource in K8S::Kubernetes::Resource.all_subclasses %}
    {% if !resource.abstract? && resource.annotation(::K8S::GroupVersionKind) %}
      {% for anno in resource.annotations(::K8S::GroupVersionKind) %}
        {% value = "{\"\",#{anno[:version]},#{anno[:kind]}}" %}
        {% if anno[:group] != "" && !others[value] %} {% others[value] = resource %} {% end %}
        {% value1 = "{\"core\",#{anno[:version]},#{anno[:kind]}}" %}
        {% if !others[value1] && anno[:group] == "" %} {% others[value1] = resource %} {% end %}
      {% end %}
    {% end %}
  {% end %}
  {% for mapping in K8S::Kubernetes::Resource::MAPPINGS %}
    {% value = %<{"",#{mapping[0]},#{mapping[1].split("::").last}}> %}
    {% if !others[value] %} {% others[value] = mapping[2].resolve %} {% end %}
    {% if mapping[0] =~ /\// %}{% split = mapping[0].split('/') %}
    {% value1 = "{#{split.first},#{split.last},#{mapping[2]}}" %}
    {% if !others[value1] && split.first == "" %} {% others[value1] = resource %} {% end %}
    {% end %}
  {% end %}

  case { {{group}}, {{ver}}, {{kind}} }
  {% for key, resource in others %}
  when {{key.id}}
    {{resource.id}}.new({{obj}})
  {% end %}
  else
    Log.warn &.emit %<Unknown api resource: "#{{{group}}}/#{{{ver}}}/#{{{kind}}}">,
      group: {{group}}.to_s, version: {{ver}}.to_s, kind: {{kind}}.to_s
    # raise K8S::Error::UnknownResource.new("#{{{group}}}/#{{{ver}}}/#{{{kind}}}")
    K8S::Kubernetes::Resource::Generic.new({{obj}})
  end
end

# :nodoc:
macro k8s_resource_class(group, ver, kind)
  {% others = {} of StringLiteral => TypeNode %}
  {% for resource in K8S::Kubernetes::Resource.all_subclasses %}
    {% if !resource.abstract? && resource.annotation(::K8S::GroupVersionKind) %}
      {% for anno in resource.annotations(::K8S::GroupVersionKind) %}
        {% value = "{#{anno[:group].gsub(/(\.authorization)?\.k8s\.io/, "")},#{anno[:version]},#{anno[:kind]}}" %}
        {% if !others[value] %} {% others[value] = resource %} {% end %}
      {% end %}
    {% end %}
  {% end %}
  {% for resource in K8S::Kubernetes::Resource.all_subclasses %}
    {% if !resource.abstract? && resource.annotation(::K8S::GroupVersionKind) %}
      {% for anno in resource.annotations(::K8S::GroupVersionKind) %}
        {% value = "{\"\",#{anno[:version]},#{anno[:kind]}}" %}
        {% if anno[:group] != "" && !others[value] %} {% others[value] = resource %} {% end %}
        {% value1 = "{\"core\",#{anno[:version]},#{anno[:kind]}}" %}
        {% if !others[value1] && anno[:group] == "" %} {% others[value1] = resource %} {% end %}
      {% end %}
    {% end %}
  {% end %}
  {% for mapping in K8S::Kubernetes::Resource::MAPPINGS %}
    {% value = %<{"",#{mapping[0]},#{mapping[1].split("::").last}}> %}
    {% if !others[value] %} {% others[value] = mapping[2].resolve %} {% end %}
    {% if mapping[0] =~ /\// %}{% split = mapping[0].split('/') %}
    {% value1 = "{#{split.first},#{split.last},#{mapping[2]}}" %}
    {% if !others[value1] && split.first == "" %} {% others[value1] = resource %} {% end %}
    {% end %}
  {% end %}

  case { {{group}}, {{ver}}, {{kind}} }
  {% for key, resource in others %}
  when {{key.id}}
    {{resource.id}}
  {% end %}
  else
    Log.warn &.emit %<Unknown api resource: "#{{{group}}}/#{{{ver}}}/#{{{kind}}}">,
      group: {{group}}.to_s, version: {{ver}}.to_s, kind: {{kind}}.to_s
    raise K8S::Error::UnknownResource.new("#{{{group}}}/#{{{ver}}}/#{{{kind}}}")
  end
end
