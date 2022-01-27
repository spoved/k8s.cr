# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NodeCondition; end

module K8S
  # Namespace holding the types for `Api::Core::V1::NodeCondition`.
  module Types::Api::Core::V1::NodeCondition
    # Last time we got an update on a given condition.
    abstract def last_heartbeat_time : ::Time?
    # :ditto:
    abstract def last_heartbeat_time! : ::Time
    # :ditto:
    abstract def last_heartbeat_time? : ::Time?
    # :ditto:
    abstract def last_heartbeat_time=(value : ::Time)
    # Last time the condition transit from one status to another.
    abstract def last_transition_time : ::Time?
    # :ditto:
    abstract def last_transition_time! : ::Time
    # :ditto:
    abstract def last_transition_time? : ::Time?
    # :ditto:
    abstract def last_transition_time=(value : ::Time)
    # Human readable message indicating details about last transition.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String)
    # (brief) reason for the condition's last transition.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String)
    # Status of the condition, one of True, False, Unknown.
    abstract def status : String?
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
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # NodeCondition contains condition information for a node.
  @[::K8S::Properties(
    last_heartbeat_time: {key: "lastHeartbeatTime", accessor: "last_heartbeat_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Last time we got an update on a given condition.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    last_transition_time: {key: "lastTransitionTime", accessor: "last_transition_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Last time the condition transit from one status to another.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "Human readable message indicating details about last transition.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "(brief) reason for the condition's last transition.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    status: {key: "status", accessor: "status", kind: "String", nilable: false, default: nil, read_only: false, description: "Status of the condition, one of True, False, Unknown.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "Type of node condition.\n\nPossible enum values:\n - `\"DiskPressure\"` means the kubelet is under pressure due to insufficient available disk.\n - `\"MemoryPressure\"` means the kubelet is under pressure due to insufficient available memory.\n - `\"NetworkUnavailable\"` means that network for the node is not correctly configured.\n - `\"PIDPressure\"` means the kubelet is under pressure due to insufficient available PID.\n - `\"Ready\"` means kubelet is healthy and ready to accept pods.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::NodeCondition < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::NodeCondition
    k8s_object_accessor("lastHeartbeatTime", last_heartbeat_time : ::Time, true, false, "Last time we got an update on a given condition.")
    k8s_object_accessor("lastTransitionTime", last_transition_time : ::Time, true, false, "Last time the condition transit from one status to another.")
    k8s_object_accessor("message", message : String, true, false, "Human readable message indicating details about last transition.")
    k8s_object_accessor("reason", reason : String, true, false, "(brief) reason for the condition's last transition.")
    k8s_object_accessor("status", status : String, false, false, "Status of the condition, one of True, False, Unknown.")
    k8s_object_accessor("type", type : String, false, false, "Type of node condition.\n\nPossible enum values:\n - `\"DiskPressure\"` means the kubelet is under pressure due to insufficient available disk.\n - `\"MemoryPressure\"` means the kubelet is under pressure due to insufficient available memory.\n - `\"NetworkUnavailable\"` means that network for the node is not correctly configured.\n - `\"PIDPressure\"` means the kubelet is under pressure due to insufficient available PID.\n - `\"Ready\"` means kubelet is healthy and ready to accept pods.")

    def initialize(*, last_heartbeat_time : ::Time? = nil, last_transition_time : ::Time? = nil, message : String? = nil, reason : String? = nil, status : String? = nil, type : String? = nil)
      super()
      self.["lastHeartbeatTime"] = last_heartbeat_time
      self.["lastTransitionTime"] = last_transition_time
      self.["message"] = message
      self.["reason"] = reason
      self.["status"] = status
      self.["type"] = type
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "lastHeartbeatTime", accessor: "last_heartbeat_time", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "lastTransitionTime", accessor: "last_transition_time", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String},
      {key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String},
      {key: "status", accessor: "status", nilable: false, read_only: false, default: nil, kind: String},
      {key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
