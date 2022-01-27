# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Policy::V1::PodDisruptionBudgetStatus; end

require "../../../apimachinery/apis/meta/v1/condition"

module K8S
  # Namespace holding the types for `Api::Policy::V1::PodDisruptionBudgetStatus`.
  module Types::Api::Policy::V1::PodDisruptionBudgetStatus
    # Conditions contain conditions for PDB. The disruption controller sets the DisruptionAllowed condition. The following are known values for the reason field (additional reasons could be added in the future): - SyncFailed: The controller encountered an error and wasn't able to compute
    #               the number of allowed disruptions. Therefore no disruptions are
    #               allowed and the status of the condition will be False.
    # - InsufficientPods: The number of pods are either at or below the number
    #                     required by the PodDisruptionBudget. No disruptions are
    #                     allowed and the status of the condition will be False.
    # - SufficientPods: There are more pods than required by the PodDisruptionBudget.
    #                   The condition will be True, and the number of allowed
    #                   disruptions are provided by the disruptionsAllowed property.
    abstract def conditions : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition))
    # current number of healthy pods
    abstract def current_healthy : Int32?
    # :ditto:
    abstract def current_healthy! : Int32
    # :ditto:
    abstract def current_healthy? : Int32?
    # :ditto:
    abstract def current_healthy=(value : Int32)
    # minimum desired number of healthy pods
    abstract def desired_healthy : Int32?
    # :ditto:
    abstract def desired_healthy! : Int32
    # :ditto:
    abstract def desired_healthy? : Int32?
    # :ditto:
    abstract def desired_healthy=(value : Int32)
    # DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
    abstract def disrupted_pods : ::Hash(String, ::Time)?
    # :ditto:
    abstract def disrupted_pods! : ::Hash(String, ::Time)
    # :ditto:
    abstract def disrupted_pods? : ::Hash(String, ::Time)?
    # :ditto:
    abstract def disrupted_pods=(value : ::Hash(String, ::Time))
    # Number of pod disruptions that are currently allowed.
    abstract def disruptions_allowed : Int32?
    # :ditto:
    abstract def disruptions_allowed! : Int32
    # :ditto:
    abstract def disruptions_allowed? : Int32?
    # :ditto:
    abstract def disruptions_allowed=(value : Int32)
    # total number of pods counted by this disruption budget
    abstract def expected_pods : Int32?
    # :ditto:
    abstract def expected_pods! : Int32
    # :ditto:
    abstract def expected_pods? : Int32?
    # :ditto:
    abstract def expected_pods=(value : Int32)
    # Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.
    abstract def observed_generation : Int32?
    # :ditto:
    abstract def observed_generation! : Int32
    # :ditto:
    abstract def observed_generation? : Int32?
    # :ditto:
    abstract def observed_generation=(value : Int32)
  end

  # PodDisruptionBudgetStatus represents information about the status of a PodDisruptionBudget. Status may trail the actual state of a system.
  @[::K8S::Properties(
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)", nilable: true, default: nil, read_only: false, description: "Conditions contain conditions for PDB. The disruption controller sets the DisruptionAllowed condition. The following are known values for the reason field (additional reasons could be added in the future): - SyncFailed: The controller encountered an error and wasn't able to compute\n              the number of allowed disruptions. Therefore no disruptions are\n              allowed and the status of the condition will be False.\n- InsufficientPods: The number of pods are either at or below the number\n                    required by the PodDisruptionBudget. No disruptions are\n                    allowed and the status of the condition will be False.\n- SufficientPods: There are more pods than required by the PodDisruptionBudget.\n                  The condition will be True, and the number of allowed\n                  disruptions are provided by the disruptionsAllowed property.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: ["type"], x_kubernetes_list_type: "map", x_kubernetes_map_type: nil},
    current_healthy: {key: "currentHealthy", accessor: "current_healthy", kind: "Int32", nilable: false, default: nil, read_only: false, description: "current number of healthy pods", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    desired_healthy: {key: "desiredHealthy", accessor: "desired_healthy", kind: "Int32", nilable: false, default: nil, read_only: false, description: "minimum desired number of healthy pods", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    disrupted_pods: {key: "disruptedPods", accessor: "disrupted_pods", kind: "::Hash(String, ::Time)", nilable: true, default: nil, read_only: false, description: "DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    disruptions_allowed: {key: "disruptionsAllowed", accessor: "disruptions_allowed", kind: "Int32", nilable: false, default: nil, read_only: false, description: "Number of pod disruptions that are currently allowed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    expected_pods: {key: "expectedPods", accessor: "expected_pods", kind: "Int32", nilable: false, default: nil, read_only: false, description: "total number of pods counted by this disruption budget", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    observed_generation: {key: "observedGeneration", accessor: "observed_generation", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Policy::V1::PodDisruptionBudgetStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Policy::V1::PodDisruptionBudgetStatus
    k8s_object_accessor("conditions", conditions : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition), true, false, "Conditions contain conditions for PDB. The disruption controller sets the DisruptionAllowed condition. The following are known values for the reason field (additional reasons could be added in the future): - SyncFailed: The controller encountered an error and wasn't able to compute\n              the number of allowed disruptions. Therefore no disruptions are\n              allowed and the status of the condition will be False.\n- InsufficientPods: The number of pods are either at or below the number\n                    required by the PodDisruptionBudget. No disruptions are\n                    allowed and the status of the condition will be False.\n- SufficientPods: There are more pods than required by the PodDisruptionBudget.\n                  The condition will be True, and the number of allowed\n                  disruptions are provided by the disruptionsAllowed property.")
    k8s_object_accessor("currentHealthy", current_healthy : Int32, false, false, "current number of healthy pods")
    k8s_object_accessor("desiredHealthy", desired_healthy : Int32, false, false, "minimum desired number of healthy pods")
    k8s_object_accessor("disruptedPods", disrupted_pods : ::Hash(String, ::Time), true, false, "DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.")
    k8s_object_accessor("disruptionsAllowed", disruptions_allowed : Int32, false, false, "Number of pod disruptions that are currently allowed.")
    k8s_object_accessor("expectedPods", expected_pods : Int32, false, false, "total number of pods counted by this disruption budget")
    k8s_object_accessor("observedGeneration", observed_generation : Int32, true, false, "Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.")

    def initialize(*, conditions : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)? = nil, current_healthy : Int32? = nil, desired_healthy : Int32? = nil, disrupted_pods : ::Hash(String, ::Time)? = nil, disruptions_allowed : Int32? = nil, expected_pods : Int32? = nil, observed_generation : Int32? = nil)
      super()
      self.["conditions"] = conditions
      self.["currentHealthy"] = current_healthy
      self.["desiredHealthy"] = desired_healthy
      self.["disruptedPods"] = disrupted_pods
      self.["disruptionsAllowed"] = disruptions_allowed
      self.["expectedPods"] = expected_pods
      self.["observedGeneration"] = observed_generation
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)},
      {key: "currentHealthy", accessor: "current_healthy", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "desiredHealthy", accessor: "desired_healthy", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "disruptedPods", accessor: "disrupted_pods", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::Time)},
      {key: "disruptionsAllowed", accessor: "disruptions_allowed", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "expectedPods", accessor: "expected_pods", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "observedGeneration", accessor: "observed_generation", nilable: true, read_only: false, default: nil, kind: Int32},
    ])
  end
end
