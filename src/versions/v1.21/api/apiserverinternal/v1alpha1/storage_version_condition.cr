# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Describes the state of the storageVersion at a certain point.
  class Api::Apiserverinternal::V1alpha1::StorageVersionCondition
    # Last time the condition transitioned from one status to another.
    property last_transition_time : Time | Nil

    # A human readable message indicating details about the transition.
    property message : String | Nil

    # If set, this represents the .metadata.generation that the condition was set based upon.
    property observed_generation : Int32 | Nil

    # The reason for the condition's last transition.
    property reason : String

    # Status of the condition, one of True, False, Unknown.
    property status : String

    # Type of the condition.
    property type : String

    ::YAML.mapping({
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
      message:              {type: String, nilable: true, key: "message", getter: false, setter: false},
      observed_generation:  {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
      reason:               {type: String, nilable: false, key: "reason", getter: false, setter: false},
      status:               {type: String, nilable: false, key: "status", getter: false, setter: false},
      type:                 {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
      message:              {type: String, nilable: true, key: "message", getter: false, setter: false},
      observed_generation:  {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
      reason:               {type: String, nilable: false, key: "reason", getter: false, setter: false},
      status:               {type: String, nilable: false, key: "status", getter: false, setter: false},
      type:                 {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @reason : String, @status : String, @type : String, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @observed_generation : Int32 | Nil = nil)
    end
  end
end
