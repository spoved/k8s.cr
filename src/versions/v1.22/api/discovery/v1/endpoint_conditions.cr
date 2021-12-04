# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # EndpointConditions represents the current condition of an endpoint.
  class Api::Discovery::V1::EndpointConditions
    include ::JSON::Serializable
    include ::YAML::Serializable

    # ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready. For compatibility reasons, ready should never be "true" for terminating endpoints.
    property ready : Bool | Nil

    # serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.
    property serving : Bool | Nil

    # terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.
    property terminating : Bool | Nil

    ::YAML.mapping({
      ready:       {type: Bool, nilable: true, key: "ready", getter: false, setter: false},
      serving:     {type: Bool, nilable: true, key: "serving", getter: false, setter: false},
      terminating: {type: Bool, nilable: true, key: "terminating", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      ready:       {type: Bool, nilable: true, key: "ready", getter: false, setter: false},
      serving:     {type: Bool, nilable: true, key: "serving", getter: false, setter: false},
      terminating: {type: Bool, nilable: true, key: "terminating", getter: false, setter: false},
    }, true)

    def initialize(*, @ready : Bool | Nil = nil, @serving : Bool | Nil = nil, @terminating : Bool | Nil = nil)
    end
  end
end
