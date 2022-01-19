# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1::DeploymentStatus; end

require "./deployment_condition"

module K8S
  # Namespace holding the types for `Api::Apps::V1::DeploymentStatus`.
  module Types::Api::Apps::V1::DeploymentStatus
    alias ValueType = Int32 | ::Array(::K8S::Api::Apps::V1::DeploymentCondition) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
    abstract def available_replicas : Int32?
    # :ditto:
    abstract def available_replicas! : Int32
    # :ditto:
    abstract def available_replicas? : Int32?
    # :ditto:
    abstract def available_replicas=(value : Int32?)
    # Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
    abstract def collision_count : Int32?
    # :ditto:
    abstract def collision_count! : Int32
    # :ditto:
    abstract def collision_count? : Int32?
    # :ditto:
    abstract def collision_count=(value : Int32?)
    # Represents the latest available observations of a deployment's current state.
    abstract def conditions : ::Array(::K8S::Api::Apps::V1::DeploymentCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Apps::V1::DeploymentCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Apps::V1::DeploymentCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Apps::V1::DeploymentCondition)?)
    # The generation observed by the deployment controller.
    abstract def observed_generation : Int32?
    # :ditto:
    abstract def observed_generation! : Int32
    # :ditto:
    abstract def observed_generation? : Int32?
    # :ditto:
    abstract def observed_generation=(value : Int32?)
    # readyReplicas is the number of pods targeted by this Deployment with a Ready Condition.
    abstract def ready_replicas : Int32?
    # :ditto:
    abstract def ready_replicas! : Int32
    # :ditto:
    abstract def ready_replicas? : Int32?
    # :ditto:
    abstract def ready_replicas=(value : Int32?)
    # Total number of non-terminated pods targeted by this deployment (their labels match the selector).
    abstract def replicas : Int32?
    # :ditto:
    abstract def replicas! : Int32
    # :ditto:
    abstract def replicas? : Int32?
    # :ditto:
    abstract def replicas=(value : Int32?)
    # Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
    abstract def unavailable_replicas : Int32?
    # :ditto:
    abstract def unavailable_replicas! : Int32
    # :ditto:
    abstract def unavailable_replicas? : Int32?
    # :ditto:
    abstract def unavailable_replicas=(value : Int32?)
    # Total number of non-terminated pods targeted by this deployment that have the desired template spec.
    abstract def updated_replicas : Int32?
    # :ditto:
    abstract def updated_replicas! : Int32
    # :ditto:
    abstract def updated_replicas? : Int32?
    # :ditto:
    abstract def updated_replicas=(value : Int32?)
  end

  # DeploymentStatus is the most recently observed status of the Deployment.
  @[::K8S::Properties(
    available_replicas: {key: "availableReplicas", accessor: "available_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Total number of available pods (ready for at least minReadySeconds) targeted by this deployment."},
    collision_count: {key: "collisionCount", accessor: "collision_count", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet."},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Apps::V1::DeploymentCondition)", nilable: true, default: nil, read_only: false, description: "Represents the latest available observations of a deployment's current state."},
    observed_generation: {key: "observedGeneration", accessor: "observed_generation", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The generation observed by the deployment controller."},
    ready_replicas: {key: "readyReplicas", accessor: "ready_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "readyReplicas is the number of pods targeted by this Deployment with a Ready Condition."},
    replicas: {key: "replicas", accessor: "replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Total number of non-terminated pods targeted by this deployment (their labels match the selector)."},
    unavailable_replicas: {key: "unavailableReplicas", accessor: "unavailable_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created."},
    updated_replicas: {key: "updatedReplicas", accessor: "updated_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Total number of non-terminated pods targeted by this deployment that have the desired template spec."},
  )]
  class Api::Apps::V1::DeploymentStatus < ::K8S::Types::Api::Apps::V1::DeploymentStatus::Instance
    include ::K8S::Types::Api::Apps::V1::DeploymentStatus
    include ::K8S::Kubernetes::Object

    # Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
    def available_replicas : Int32?
      self.["availableReplicas"].as(Int32?)
    end

    # :ditto:
    def available_replicas! : Int32
      self.["availableReplicas"].as(Int32?).not_nil!
    end

    # :ditto:
    def available_replicas? : Int32?
      self.["availableReplicas"]?.as(Int32?)
    end

    # :ditto:
    def available_replicas=(value : Int32?)
      self.["availableReplicas"] = value
    end

    # Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
    def collision_count : Int32?
      self.["collisionCount"].as(Int32?)
    end

    # :ditto:
    def collision_count! : Int32
      self.["collisionCount"].as(Int32?).not_nil!
    end

    # :ditto:
    def collision_count? : Int32?
      self.["collisionCount"]?.as(Int32?)
    end

    # :ditto:
    def collision_count=(value : Int32?)
      self.["collisionCount"] = value
    end

    # Represents the latest available observations of a deployment's current state.
    def conditions : ::Array(::K8S::Api::Apps::V1::DeploymentCondition)?
      self.["conditions"].as(::Array(::K8S::Api::Apps::V1::DeploymentCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Api::Apps::V1::DeploymentCondition)
      self.["conditions"].as(::Array(::K8S::Api::Apps::V1::DeploymentCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Api::Apps::V1::DeploymentCondition)?
      self.["conditions"]?.as(::Array(::K8S::Api::Apps::V1::DeploymentCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Api::Apps::V1::DeploymentCondition)?)
      self.["conditions"] = value
    end

    # The generation observed by the deployment controller.
    def observed_generation : Int32?
      self.["observedGeneration"].as(Int32?)
    end

    # :ditto:
    def observed_generation! : Int32
      self.["observedGeneration"].as(Int32?).not_nil!
    end

    # :ditto:
    def observed_generation? : Int32?
      self.["observedGeneration"]?.as(Int32?)
    end

    # :ditto:
    def observed_generation=(value : Int32?)
      self.["observedGeneration"] = value
    end

    # readyReplicas is the number of pods targeted by this Deployment with a Ready Condition.
    def ready_replicas : Int32?
      self.["readyReplicas"].as(Int32?)
    end

    # :ditto:
    def ready_replicas! : Int32
      self.["readyReplicas"].as(Int32?).not_nil!
    end

    # :ditto:
    def ready_replicas? : Int32?
      self.["readyReplicas"]?.as(Int32?)
    end

    # :ditto:
    def ready_replicas=(value : Int32?)
      self.["readyReplicas"] = value
    end

    # Total number of non-terminated pods targeted by this deployment (their labels match the selector).
    def replicas : Int32?
      self.["replicas"].as(Int32?)
    end

    # :ditto:
    def replicas! : Int32
      self.["replicas"].as(Int32?).not_nil!
    end

    # :ditto:
    def replicas? : Int32?
      self.["replicas"]?.as(Int32?)
    end

    # :ditto:
    def replicas=(value : Int32?)
      self.["replicas"] = value
    end

    # Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
    def unavailable_replicas : Int32?
      self.["unavailableReplicas"].as(Int32?)
    end

    # :ditto:
    def unavailable_replicas! : Int32
      self.["unavailableReplicas"].as(Int32?).not_nil!
    end

    # :ditto:
    def unavailable_replicas? : Int32?
      self.["unavailableReplicas"]?.as(Int32?)
    end

    # :ditto:
    def unavailable_replicas=(value : Int32?)
      self.["unavailableReplicas"] = value
    end

    # Total number of non-terminated pods targeted by this deployment that have the desired template spec.
    def updated_replicas : Int32?
      self.["updatedReplicas"].as(Int32?)
    end

    # :ditto:
    def updated_replicas! : Int32
      self.["updatedReplicas"].as(Int32?).not_nil!
    end

    # :ditto:
    def updated_replicas? : Int32?
      self.["updatedReplicas"]?.as(Int32?)
    end

    # :ditto:
    def updated_replicas=(value : Int32?)
      self.["updatedReplicas"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "availableReplicas", accessor: "available_replicas", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "collisionCount", accessor: "collision_count", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Apps::V1::DeploymentCondition) },
        { key: "observedGeneration", accessor: "observed_generation", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "readyReplicas", accessor: "ready_replicas", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "replicas", accessor: "replicas", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "unavailableReplicas", accessor: "unavailable_replicas", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "updatedReplicas", accessor: "updated_replicas", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
