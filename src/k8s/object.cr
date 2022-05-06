require "./internals"
require "./error"
require "./macros"
require "../ext/json_yaml"

abstract struct K8S::Kubernetes::Object
  private getter __object__ : K8S::Internals::GenericObject

  def initialize(hash : Enumerable | Iterable | NamedTuple | Nil = nil)
    @__object__ = K8S::Internals::GenericObject.new(hash)
    _init_validate!
  end

  # :nodoc:
  protected def _init_validate!
  end

  def initialize(@__object__ : K8S::Internals::GenericObject)
    _init_validate!
  end

  macro method_missing(call)
    @__object__.{{call}}
  end

  def self.new(pull : ::JSON::PullParser)
    new(K8S::Internals::GenericObject.new(pull))
  end

  def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
    new(K8S::Internals::GenericObject.new(ctx, node))
  end

  def ==(other : K8S::Internals::GenericObject)
    @__object__ == other
  end

  def diff(other : K8S::Internals::HashObject | K8S::Kubernetes::Object)
    ::Hashdiff.diff(@__object__.to_h, other.to_h)
  end
end

def K8S::Internals::GenericObject.deep_cast_value(value : K8S::Kubernetes::Object)
  self.deep_cast_value(value.to_h)
end

module Hashdiff
  def similar?(obja : K8S::Kubernetes::Object | K8S::Internals::GenericObject, objb : K8S::Kubernetes::Object | K8S::Internals::GenericObject, **options) : Bool
    true
  end

  def _diff(obj1 : ::K8S::Kubernetes::Object | ::K8S::Internals::HashObject, obj2 : ::K8S::Kubernetes::Object | ::K8S::Internals::HashObject, **options)
    _diff(obj1.to_h, obj2.to_h, **options)
  end
end

struct ::K8S::GenericObject < K8S::Kubernetes::Object; end

# Cycle through all object subclasses and create initializers
macro finished
  {% for klass in K8S::Kubernetes::Object.all_subclasses %}{% if !klass.abstract? %}
  {% annos = klass.annotations(::K8S::ObjectProperties) %}
  {% if annos.size > 0 %}
  struct {{klass.id}}
    def initialize(hash : Enumerable | Iterable | NamedTuple | Nil = nil)
      @__object__ = K8S::Internals::GenericObject.new(hash)

      # Check to see if the values are stored under the correct key,
      # if they are not, then we need to move them to the correct key
      {% for anno in annos %}{% for name, value in anno.named_args %}
      {% if value[:key] && value[:key] != value[:name] %}
      if @__object__[{{value[:name]}}]?
        {% if value[:nilable] %}
        @__object__[{{value[:key]}}] = @__object__.delete({{value[:name]}})
        {% else %}
        %val = @__object__.delete({{value[:name]}})
        @__object__[{{value[:key]}}] = %val unless %val.nil?
        {% end %}
      end
      {% end %}
      {% end %}{% end %}

      _init_validate!
    end
  end
  {% end %}
  {% end %}{% end %}
end
