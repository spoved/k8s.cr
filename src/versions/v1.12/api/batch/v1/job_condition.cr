# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # JobCondition describes current state of a job.
  @[::K8S::Properties(
    last_probe_time: {type: Time, nilable: true, key: "lastProbeTime", getter: false, setter: false},
    last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    reason: {type: String, nilable: true, key: "reason", getter: false, setter: false},
    status: {type: String, nilable: false, key: "status", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Api::Batch::V1::JobCondition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Last time the condition was checked.
    @[::JSON::Field(key: "lastProbeTime", emit_null: false)]
    @[::YAML::Field(key: "lastProbeTime", emit_null: false)]
    property last_probe_time : Time | Nil

    # Last time the condition transit from one status to another.
    @[::JSON::Field(key: "lastTransitionTime", emit_null: false)]
    @[::YAML::Field(key: "lastTransitionTime", emit_null: false)]
    property last_transition_time : Time | Nil

    # Human readable message indicating details about last transition.
    @[::JSON::Field(key: "message", emit_null: false)]
    @[::YAML::Field(key: "message", emit_null: false)]
    property message : String | Nil

    # (brief) reason for the condition's last transition.
    @[::JSON::Field(key: "reason", emit_null: false)]
    @[::YAML::Field(key: "reason", emit_null: false)]
    property reason : String | Nil

    # Status of the condition, one of True, False, Unknown.
    @[::JSON::Field(key: "status", emit_null: true)]
    @[::YAML::Field(key: "status", emit_null: true)]
    property status : String

    # Type of job condition, Complete or Failed.
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    def initialize(*, @status : String, @type : String, @last_probe_time : Time | Nil = nil, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
