# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NodeCondition; end

module K8S
  # Namespace holding the types for `Api::Core::V1::NodeCondition`.
  module Types::Api::Core::V1::NodeCondition
    alias ValueType = ::Time | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Last time we got an update on a given condition.
    abstract def last_heartbeat_time : ::Time?
    # :ditto:
    abstract def last_heartbeat_time! : ::Time
    # :ditto:
    abstract def last_heartbeat_time? : ::Time?
    # :ditto:
    abstract def last_heartbeat_time=(value : ::Time?)
    # Last time the condition transit from one status to another.
    abstract def last_transition_time : ::Time?
    # :ditto:
    abstract def last_transition_time! : ::Time
    # :ditto:
    abstract def last_transition_time? : ::Time?
    # :ditto:
    abstract def last_transition_time=(value : ::Time?)
    # Human readable message indicating details about last transition.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String?)
    # (brief) reason for the condition's last transition.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String?)
    # Status of the condition, one of True, False, Unknown.
    abstract def status : String
    # :ditto:
    abstract def status! : String
    # :ditto:
    abstract def status? : String?
    # :ditto:
    abstract def status=(value : String)
    # Type of node condition.
    #
    # Possible enum values:
    #  - `"DiskPressure"` means the kubelet is under pressure due to insufficient available disk.
    #  - `"MemoryPressure"` means the kubelet is under pressure due to insufficient available memory.
    #  - `"NetworkUnavailable"` means that network for the node is not correctly configured.
    #  - `"PIDPressure"` means the kubelet is under pressure due to insufficient available PID.
    #  - `"Ready"` means kubelet is healthy and ready to accept pods.
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # NodeCondition contains condition information for a node.
  @[::K8S::Properties(
    last_heartbeat_time: {key: "lastHeartbeatTime", accessor: "last_heartbeat_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Last time we got an update on a given condition."},
    last_transition_time: {key: "lastTransitionTime", accessor: "last_transition_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Last time the condition transit from one status to another."},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "Human readable message indicating details about last transition."},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "(brief) reason for the condition's last transition."},
    status: {key: "status", accessor: "status", kind: "String", nilable: false, default: nil, read_only: false, description: "Status of the condition, one of True, False, Unknown."},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "Type of node condition.\n\nPossible enum values:\n - `\"DiskPressure\"` means the kubelet is under pressure due to insufficient available disk.\n - `\"MemoryPressure\"` means the kubelet is under pressure due to insufficient available memory.\n - `\"NetworkUnavailable\"` means that network for the node is not correctly configured.\n - `\"PIDPressure\"` means the kubelet is under pressure due to insufficient available PID.\n - `\"Ready\"` means kubelet is healthy and ready to accept pods."},
  )]
  class Api::Core::V1::NodeCondition < ::K8S::Types::Api::Core::V1::NodeCondition::Instance
    include ::K8S::Types::Api::Core::V1::NodeCondition
    include ::K8S::Kubernetes::Object

    # Last time we got an update on a given condition.
    def last_heartbeat_time : ::Time?
      self.["lastHeartbeatTime"].as(::Time?)
    end

    # :ditto:
    def last_heartbeat_time! : ::Time
      self.["lastHeartbeatTime"].as(::Time?).not_nil!
    end

    # :ditto:
    def last_heartbeat_time? : ::Time?
      self.["lastHeartbeatTime"]?.as(::Time?)
    end

    # :ditto:
    def last_heartbeat_time=(value : ::Time?)
      self.["lastHeartbeatTime"] = value
    end

    # Last time the condition transit from one status to another.
    def last_transition_time : ::Time?
      self.["lastTransitionTime"].as(::Time?)
    end

    # :ditto:
    def last_transition_time! : ::Time
      self.["lastTransitionTime"].as(::Time?).not_nil!
    end

    # :ditto:
    def last_transition_time? : ::Time?
      self.["lastTransitionTime"]?.as(::Time?)
    end

    # :ditto:
    def last_transition_time=(value : ::Time?)
      self.["lastTransitionTime"] = value
    end

    # Human readable message indicating details about last transition.
    def message : String?
      self.["message"].as(String?)
    end

    # :ditto:
    def message! : String
      self.["message"].as(String?).not_nil!
    end

    # :ditto:
    def message? : String?
      self.["message"]?.as(String?)
    end

    # :ditto:
    def message=(value : String?)
      self.["message"] = value
    end

    # (brief) reason for the condition's last transition.
    def reason : String?
      self.["reason"].as(String?)
    end

    # :ditto:
    def reason! : String
      self.["reason"].as(String?).not_nil!
    end

    # :ditto:
    def reason? : String?
      self.["reason"]?.as(String?)
    end

    # :ditto:
    def reason=(value : String?)
      self.["reason"] = value
    end

    # Status of the condition, one of True, False, Unknown.
    def status : String
      self.["status"].as(String)
    end

    # :ditto:
    def status! : String
      self.["status"].as(String).not_nil!
    end

    # :ditto:
    def status? : String?
      self.["status"]?.as(String?)
    end

    # :ditto:
    def status=(value : String)
      self.["status"] = value
    end

    # Type of node condition.
    #
    # Possible enum values:
    #  - `"DiskPressure"` means the kubelet is under pressure due to insufficient available disk.
    #  - `"MemoryPressure"` means the kubelet is under pressure due to insufficient available memory.
    #  - `"NetworkUnavailable"` means that network for the node is not correctly configured.
    #  - `"PIDPressure"` means the kubelet is under pressure due to insufficient available PID.
    #  - `"Ready"` means kubelet is healthy and ready to accept pods.
    def type : String
      self.["type"].as(String)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String)
      self.["type"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "lastHeartbeatTime", accessor: "last_heartbeat_time", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "lastTransitionTime", accessor: "last_transition_time", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String },
        { key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String },
        { key: "status", accessor: "status", nilable: false, read_only: false, default: nil, kind: String },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
