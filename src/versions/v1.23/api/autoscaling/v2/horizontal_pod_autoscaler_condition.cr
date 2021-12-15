# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # HorizontalPodAutoscalerCondition describes the state of a HorizontalPodAutoscaler at a certain point.
  @[::K8S::Properties(
    last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    reason: {type: String, nilable: true, key: "reason", getter: false, setter: false},
    status: {type: String, nilable: false, key: "status", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2::HorizontalPodAutoscalerCondition
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # lastTransitionTime is the last time the condition transitioned from one status to another
    @[::JSON::Field(key: "lastTransitionTime", emit_null: false)]
    @[::YAML::Field(key: "lastTransitionTime", emit_null: false)]
    property last_transition_time : Time | Nil

    # message is a human-readable explanation containing details about the transition
    @[::JSON::Field(key: "message", emit_null: false)]
    @[::YAML::Field(key: "message", emit_null: false)]
    property message : String | Nil

    # reason is the reason for the condition's last transition.
    @[::JSON::Field(key: "reason", emit_null: false)]
    @[::YAML::Field(key: "reason", emit_null: false)]
    property reason : String | Nil

    # status is the status of the condition (True, False, Unknown)
    @[::JSON::Field(key: "status", emit_null: true)]
    @[::YAML::Field(key: "status", emit_null: true)]
    property status : String

    # type describes the current condition
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    def initialize(*, @status : String, @type : String, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
