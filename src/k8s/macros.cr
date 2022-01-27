require "json"
require "yaml"
require "./error"

# :nodoc:
macro k8s_sanitize_api(api)
  {{api}}.gsub(/(\.authorization)?\.k8s\.io/, "")
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
      group: {{group}}, version: {{ver}}, kind: {{kind}}
    raise K8S::Error::UnknownResource.new("#{{{group}}}/#{{{ver}}}/#{{{kind}}}")
  end
end

# :nodoc:
macro k8s_cast_array_typ(value, typ)
  {% typ = typ.resolve %}
  {{value}}.as(Array)
        .map(&.as({{typ.type_vars[0].id.gsub(/\+/, "")}}))
        .as({{typ.id}})
end

# :nodoc:
macro k8s_cast_hash_typ(value, typ)
  {% typ = typ.resolve %}
  {{value}}.as(Hash)
    .transform_values(&.as({{typ.type_vars[1].id.gsub(/\+/, "")}}))
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
    {% else %}
      {{value}}.as({{kind.id}})
    {% end %}
  {% end %}
  else
    Log.warn &.emit %<Unknown type: "#{{{value}}}">
    raise "#{{{value}}}"
  end
end

# :nodoc:
macro k8s_object_accessor(key, accessor, nilable = true, read_only = false, description = nil)
  {% kind = accessor.type.resolve %}

  # :nodoc:
  # Internal method to access the value of the given key and cast it to the appropriate type.
  def __{{accessor.var.id}}
    return nil if self.[{{key}}]?.nil?
    value = self.[{{key}}]
    k8s_cast_type(value, {{*kind.union_types}})
  end

  {% if description %}
  # {{description}}{% end %}
  def {{accessor.var.id}}? : {{kind}} | Nil
    __{{accessor.var.id}}
  end

  # :ditto:
  def {{accessor.var.id}} : {{kind}} | Nil
    __{{accessor.var.id}}
  end

  # :ditto:
  def {{accessor.var.id}}! : {{kind}}
    {% if accessor.value %}
    self.{{accessor.var.id}} = {{accessor.value}} if self.{{accessor.var.id}}?.nil?
    {% end %}
    __{{accessor.var.id}}.not_nil!
  end

  # :ditto:
  {% if read_only %}private{% end %} def {{accessor.var.id}}=(value : {{kind}}{% if nilable %} | Nil {% end %})
    self.[{{key}}] = value
  end
end
