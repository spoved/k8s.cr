# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PodCondition contains details for the current condition of this pod.
  @[::K8S::Properties(
    last_probe_time: {type: Time, nilable: true, key: "lastProbeTime", getter: false, setter: false},
    last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    reason: {type: String, nilable: true, key: "reason", getter: false, setter: false},
    status: {type: String, nilable: false, key: "status", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Api::Core::V1::PodCondition
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Last time we probed the condition.
    @[::JSON::Field(key: "lastProbeTime", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "lastProbeTime", emit_null: false, converter: K8S::TimeFormat.new)]
    property last_probe_time : Time | Nil

    # Last time the condition transitioned from one status to another.
    @[::JSON::Field(key: "lastTransitionTime", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "lastTransitionTime", emit_null: false, converter: K8S::TimeFormat.new)]
    property last_transition_time : Time | Nil

    # Human-readable message indicating details about last transition.
    @[::JSON::Field(key: "message", emit_null: false)]
    @[::YAML::Field(key: "message", emit_null: false)]
    property message : String | Nil

    # Unique, one-word, CamelCase reason for the condition's last transition.
    @[::JSON::Field(key: "reason", emit_null: false)]
    @[::YAML::Field(key: "reason", emit_null: false)]
    property reason : String | Nil

    # Status is the status of the condition. Can be True, False, Unknown. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions)
    @[::JSON::Field(key: "status", emit_null: true)]
    @[::YAML::Field(key: "status", emit_null: true)]
    property status : String

    # Type is the type of the condition. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions)
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    def initialize(*, @status : String, @type : String, @last_probe_time : Time | Nil = nil, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end