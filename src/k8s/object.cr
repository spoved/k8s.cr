require "./internals"
require "./error"
require "./macros"
require "../ext/json_yaml"

abstract struct K8S::Kubernetes::Object
  private getter __object__ : K8S::Internals::GenericObject

  def initialize(hash : Enumerable | Iterable | NamedTuple | Nil = nil)
    @__object__ = K8S::Internals::GenericObject.new(hash)
  end

  def initialize(@__object__ : K8S::Internals::GenericObject); end

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
    Log.debug { "OVERRIDEEE" }
    _diff(obj1.to_h, obj2.to_h, **options)
  end
end

struct ::K8S::GenericObject < K8S::Kubernetes::Object; end
