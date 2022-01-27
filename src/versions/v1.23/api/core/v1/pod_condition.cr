# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PodCondition; end

module K8S
  # Namespace holding the types for `Api::Core::V1::PodCondition`.
  module Types::Api::Core::V1::PodCondition
    # Last time we probed the condition.
    abstract def last_probe_time : ::Time?
    # :ditto:
    abstract def last_probe_time! : ::Time
    # :ditto:
    abstract def last_probe_time? : ::Time?
    # :ditto:
    abstract def last_probe_time=(value : ::Time)
    # Last time the condition transitioned from one status to another.
    abstract def last_transition_time : ::Time?
    # :ditto:
    abstract def last_transition_time! : ::Time
    # :ditto:
    abstract def last_transition_time? : ::Time?
    # :ditto:
    abstract def last_transition_time=(value : ::Time)
    # Human-readable message indicating details about last transition.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String)
    # Unique, one-word, CamelCase reason for the condition's last transition.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String)
    # Status is the status of the condition. Can be True, False, Unknown. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions))
    abstract def status : String?
    # :ditto:
    abstract def status! : String
    # :ditto:
    abstract def status? : String?
    # :ditto:
    abstract def status=(value : String)
    # Type is the type of the condition. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions))
    #
    # Possible enum values:
    #  - `"ContainersReady"` indicates whether all containers in the pod are ready.
    #  - `"Initialized"` means that all init containers in the pod have started successfully.
    #  - `"PodScheduled"` represents status of the scheduling process for this pod.
    #  - `"Ready"` means the pod is able to service requests and should be added to the load balancing pools of all matching services.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # PodCondition contains details for the current condition of this pod.
  @[::K8S::Properties(
    last_probe_time: {key: "lastProbeTime", accessor: "last_probe_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Last time we probed the condition.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    last_transition_time: {key: "lastTransitionTime", accessor: "last_transition_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Last time the condition transitioned from one status to another.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "Human-readable message indicating details about last transition.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "Unique, one-word, CamelCase reason for the condition's last transition.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    status: {key: "status", accessor: "status", kind: "String", nilable: false, default: nil, read_only: false, description: "Status is the status of the condition. Can be True, False, Unknown. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "Type is the type of the condition. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions)\n\nPossible enum values:\n - `\"ContainersReady\"` indicates whether all containers in the pod are ready.\n - `\"Initialized\"` means that all init containers in the pod have started successfully.\n - `\"PodScheduled\"` represents status of the scheduling process for this pod.\n - `\"Ready\"` means the pod is able to service requests and should be added to the load balancing pools of all matching services.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PodCondition < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PodCondition
    k8s_object_accessor("lastProbeTime", last_probe_time : ::Time, true, false, "Last time we probed the condition.")
    k8s_object_accessor("lastTransitionTime", last_transition_time : ::Time, true, false, "Last time the condition transitioned from one status to another.")
    k8s_object_accessor("message", message : String, true, false, "Human-readable message indicating details about last transition.")
    k8s_object_accessor("reason", reason : String, true, false, "Unique, one-word, CamelCase reason for the condition's last transition.")
    k8s_object_accessor("status", status : String, false, false, "Status is the status of the condition. Can be True, False, Unknown. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions)")
    k8s_object_accessor("type", type : String, false, false, "Type is the type of the condition. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions)\n\nPossible enum values:\n - `\"ContainersReady\"` indicates whether all containers in the pod are ready.\n - `\"Initialized\"` means that all init containers in the pod have started successfully.\n - `\"PodScheduled\"` represents status of the scheduling process for this pod.\n - `\"Ready\"` means the pod is able to service requests and should be added to the load balancing pools of all matching services.")

    def initialize(*, last_probe_time : ::Time? = nil, last_transition_time : ::Time? = nil, message : String? = nil, reason : String? = nil, status : String? = nil, type : String? = nil)
      super()
      self.["lastProbeTime"] = last_probe_time
      self.["lastTransitionTime"] = last_transition_time
      self.["message"] = message
      self.["reason"] = reason
      self.["status"] = status
      self.["type"] = type
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "lastProbeTime", accessor: "last_probe_time", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "lastTransitionTime", accessor: "last_transition_time", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String},
      {key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String},
      {key: "status", accessor: "status", nilable: false, read_only: false, default: nil, kind: String},
      {key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
