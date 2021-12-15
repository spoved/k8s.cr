# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # EndpointConditions represents the current condition of an endpoint.
  @[::K8S::Properties(
    ready: {type: Bool, nilable: true, key: "ready", getter: false, setter: false},
  )]
  class Api::Discovery::V1beta1::EndpointConditions
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready.
    @[::JSON::Field(key: "ready", emit_null: false)]
    @[::YAML::Field(key: "ready", emit_null: false)]
    property ready : Bool | Nil

    def initialize(*, @ready : Bool | Nil = nil)
    end
  end
end
