# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1::DeploymentStatus; end

require "./deployment_condition"

module K8S
  # Namespace holding the types for `Api::Apps::V1::DeploymentStatus`.
  module Types::Api::Apps::V1::DeploymentStatus
    # Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
    abstract def available_replicas : Int32?
    # :ditto:
    abstract def available_replicas! : Int32
    # :ditto:
    abstract def available_replicas? : Int32?
    # :ditto:
    abstract def available_replicas=(value : Int32)
    # Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
    abstract def collision_count : Int32?
    # :ditto:
    abstract def collision_count! : Int32
    # :ditto:
    abstract def collision_count? : Int32?
    # :ditto:
    abstract def collision_count=(value : Int32)
    # Represents the latest available observations of a deployment's current state.
    abstract def conditions : ::Array(::K8S::Api::Apps::V1::DeploymentCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Apps::V1::DeploymentCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Apps::V1::DeploymentCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Apps::V1::DeploymentCondition))
    # The generation observed by the deployment controller.
    abstract def observed_generation : Int32?
    # :ditto:
    abstract def observed_generation! : Int32
    # :ditto:
    abstract def observed_generation? : Int32?
    # :ditto:
    abstract def observed_generation=(value : Int32)
    # readyReplicas is the number of pods targeted by this Deployment with a Ready Condition.
    abstract def ready_replicas : Int32?
    # :ditto:
    abstract def ready_replicas! : Int32
    # :ditto:
    abstract def ready_replicas? : Int32?
    # :ditto:
    abstract def ready_replicas=(value : Int32)
    # Total number of non-terminated pods targeted by this deployment (their labels match the selector).
    abstract def replicas : Int32?
    # :ditto:
    abstract def replicas! : Int32
    # :ditto:
    abstract def replicas? : Int32?
    # :ditto:
    abstract def replicas=(value : Int32)
    # Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
    abstract def unavailable_replicas : Int32?
    # :ditto:
    abstract def unavailable_replicas! : Int32
    # :ditto:
    abstract def unavailable_replicas? : Int32?
    # :ditto:
    abstract def unavailable_replicas=(value : Int32)
    # Total number of non-terminated pods targeted by this deployment that have the desired template spec.
    abstract def updated_replicas : Int32?
    # :ditto:
    abstract def updated_replicas! : Int32
    # :ditto:
    abstract def updated_replicas? : Int32?
    # :ditto:
    abstract def updated_replicas=(value : Int32)
  end

  # DeploymentStatus is the most recently observed status of the Deployment.
  @[::K8S::Properties(
    available_replicas: {key: "availableReplicas", accessor: "available_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    collision_count: {key: "collisionCount", accessor: "collision_count", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Apps::V1::DeploymentCondition)", nilable: true, default: nil, read_only: false, description: "Represents the latest available observations of a deployment's current state.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    observed_generation: {key: "observedGeneration", accessor: "observed_generation", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The generation observed by the deployment controller.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ready_replicas: {key: "readyReplicas", accessor: "ready_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "readyReplicas is the number of pods targeted by this Deployment with a Ready Condition.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    replicas: {key: "replicas", accessor: "replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Total number of non-terminated pods targeted by this deployment (their labels match the selector).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    unavailable_replicas: {key: "unavailableReplicas", accessor: "unavailable_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    updated_replicas: {key: "updatedReplicas", accessor: "updated_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Total number of non-terminated pods targeted by this deployment that have the desired template spec.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1::DeploymentStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Apps::V1::DeploymentStatus
    k8s_object_accessor("availableReplicas", available_replicas : Int32, true, false, "Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.")
    k8s_object_accessor("collisionCount", collision_count : Int32, true, false, "Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.")
    k8s_object_accessor("conditions", conditions : ::Array(::K8S::Api::Apps::V1::DeploymentCondition), true, false, "Represents the latest available observations of a deployment's current state.")
    k8s_object_accessor("observedGeneration", observed_generation : Int32, true, false, "The generation observed by the deployment controller.")
    k8s_object_accessor("readyReplicas", ready_replicas : Int32, true, false, "readyReplicas is the number of pods targeted by this Deployment with a Ready Condition.")
    k8s_object_accessor("replicas", replicas : Int32, true, false, "Total number of non-terminated pods targeted by this deployment (their labels match the selector).")
    k8s_object_accessor("unavailableReplicas", unavailable_replicas : Int32, true, false, "Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.")
    k8s_object_accessor("updatedReplicas", updated_replicas : Int32, true, false, "Total number of non-terminated pods targeted by this deployment that have the desired template spec.")

    def initialize(*, available_replicas : Int32? = nil, collision_count : Int32? = nil, conditions : ::Array(::K8S::Api::Apps::V1::DeploymentCondition)? = nil, observed_generation : Int32? = nil, ready_replicas : Int32? = nil, replicas : Int32? = nil, unavailable_replicas : Int32? = nil, updated_replicas : Int32? = nil)
      super()
      self.["availableReplicas"] = available_replicas
      self.["collisionCount"] = collision_count
      self.["conditions"] = conditions
      self.["observedGeneration"] = observed_generation
      self.["readyReplicas"] = ready_replicas
      self.["replicas"] = replicas
      self.["unavailableReplicas"] = unavailable_replicas
      self.["updatedReplicas"] = updated_replicas
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "availableReplicas", accessor: "available_replicas", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "collisionCount", accessor: "collision_count", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Apps::V1::DeploymentCondition)},
      {key: "observedGeneration", accessor: "observed_generation", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "readyReplicas", accessor: "ready_replicas", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "replicas", accessor: "replicas", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "unavailableReplicas", accessor: "unavailable_replicas", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "updatedReplicas", accessor: "updated_replicas", nilable: true, read_only: false, default: nil, kind: Int32},
    ])
  end
end
