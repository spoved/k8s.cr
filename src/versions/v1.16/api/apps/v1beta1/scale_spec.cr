# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ScaleSpec describes the attributes of a scale subresource
  @[::K8S::Properties(
    replicas: {type: Int32, nilable: true, key: "replicas", getter: false, setter: false},
  )]
  class Api::Apps::V1beta1::ScaleSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # desired number of instances for the scaled object.
    property replicas : Int32 | Nil

    def initialize(*, @replicas : Int32 | Nil = nil)
    end
  end
end
