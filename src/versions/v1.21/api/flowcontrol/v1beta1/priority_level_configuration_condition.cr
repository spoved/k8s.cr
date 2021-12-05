# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PriorityLevelConfigurationCondition defines the condition of priority level.
  @[::K8S::Properties(
    last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    reason: {type: String, nilable: true, key: "reason", getter: false, setter: false},
    status: {type: String, nilable: true, key: "status", getter: false, setter: false},
    type: {type: String, nilable: true, key: "type", getter: false, setter: false},
  )]
  class Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `lastTransitionTime` is the last time the condition transitioned from one status to another.
    @[::JSON::Field(key: "lastTransitionTime")]
    @[::YAML::Field(key: "lastTransitionTime")]
    property last_transition_time : Time | Nil

    # `message` is a human-readable message indicating details about last transition.
    property message : String | Nil

    # `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
    property reason : String | Nil

    # `status` is the status of the condition. Can be True, False, Unknown. Required.
    property status : String | Nil

    # `type` is the type of the condition. Required.
    property type : String | Nil

    def initialize(*, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @status : String | Nil = nil, @type : String | Nil = nil)
    end
  end
end
