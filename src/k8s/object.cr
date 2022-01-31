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
end
