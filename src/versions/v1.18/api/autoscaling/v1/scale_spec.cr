# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ScaleSpec describes the attributes of a scale subresource.
  class Api::Autoscaling::V1::ScaleSpec
    # desired number of instances for the scaled object.
    property replicas : Int32 | Nil

    ::YAML.mapping({
      replicas: {type: Int32, nilable: true, key: "replicas", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      replicas: {type: Int32, nilable: true, key: "replicas", getter: false, setter: false},
    }, true)

    def initialize(*, @replicas : Int32 | Nil = nil)
    end
  end
end
