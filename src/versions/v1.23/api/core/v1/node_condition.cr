# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NodeCondition contains condition information for a node.
  @[::K8S::Properties(
    last_heartbeat_time: {type: Time, nilable: true, key: "lastHeartbeatTime", getter: false, setter: false},
    last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    reason: {type: String, nilable: true, key: "reason", getter: false, setter: false},
    status: {type: String, nilable: false, key: "status", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Api::Core::V1::NodeCondition
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Last time we got an update on a given condition.
    @[::JSON::Field(key: "lastHeartbeatTime", emit_null: false, converter: Time::Format.new("%Y-%m-%dT%TZ"))]
    @[::YAML::Field(key: "lastHeartbeatTime", emit_null: false, converter: Time::Format.new("%Y-%m-%dT%TZ"))]
    property last_heartbeat_time : Time | Nil

    # Last time the condition transit from one status to another.
    @[::JSON::Field(key: "lastTransitionTime", emit_null: false, converter: Time::Format.new("%Y-%m-%dT%TZ"))]
    @[::YAML::Field(key: "lastTransitionTime", emit_null: false, converter: Time::Format.new("%Y-%m-%dT%TZ"))]
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

    # Type of node condition.
    #
    # Possible enum values:
    #  - `"DiskPressure"` means the kubelet is under pressure due to insufficient available disk.
    #  - `"MemoryPressure"` means the kubelet is under pressure due to insufficient available memory.
    #  - `"NetworkUnavailable"` means that network for the node is not correctly configured.
    #  - `"PIDPressure"` means the kubelet is under pressure due to insufficient available PID.
    #  - `"Ready"` means kubelet is healthy and ready to accept pods.
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    def initialize(*, @status : String, @type : String, @last_heartbeat_time : Time | Nil = nil, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
