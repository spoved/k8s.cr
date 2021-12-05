# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Describes the state of the storageVersion at a certain point.
  @[::K8S::Properties(
    last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    observed_generation: {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
    reason: {type: String, nilable: false, key: "reason", getter: false, setter: false},
    status: {type: String, nilable: false, key: "status", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Api::Apiserverinternal::V1alpha1::StorageVersionCondition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Last time the condition transitioned from one status to another.
    @[::JSON::Field(key: "lastTransitionTime")]
    @[::YAML::Field(key: "lastTransitionTime")]
    property last_transition_time : Time | Nil

    # A human readable message indicating details about the transition.
    property message : String | Nil

    # If set, this represents the .metadata.generation that the condition was set based upon.
    @[::JSON::Field(key: "observedGeneration")]
    @[::YAML::Field(key: "observedGeneration")]
    property observed_generation : Int32 | Nil

    # The reason for the condition's last transition.
    property reason : String

    # Status of the condition, one of True, False, Unknown.
    property status : String

    # Type of the condition.
    property type : String

    def initialize(*, @reason : String, @status : String, @type : String, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @observed_generation : Int32 | Nil = nil)
    end
  end
end
