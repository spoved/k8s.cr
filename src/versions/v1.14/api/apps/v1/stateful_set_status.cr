# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1::StatefulSetStatus; end

require "./stateful_set_condition"

module K8S
  # Namespace holding the types for `Api::Apps::V1::StatefulSetStatus`.
  module Types::Api::Apps::V1::StatefulSetStatus
    alias ValueType = Int32 | ::Array(::K8S::Api::Apps::V1::StatefulSetCondition) | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
    abstract def collision_count : Int32?
    # :ditto:
    abstract def collision_count! : Int32
    # :ditto:
    abstract def collision_count? : Int32?
    # :ditto:
    abstract def collision_count=(value : Int32?)
    # Represents the latest available observations of a statefulset's current state.
    abstract def conditions : ::Array(::K8S::Api::Apps::V1::StatefulSetCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Apps::V1::StatefulSetCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Apps::V1::StatefulSetCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Apps::V1::StatefulSetCondition)?)
    # currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
    abstract def current_replicas : Int32?
    # :ditto:
    abstract def current_replicas! : Int32
    # :ditto:
    abstract def current_replicas? : Int32?
    # :ditto:
    abstract def current_replicas=(value : Int32?)
    # currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
    abstract def current_revision : String?
    # :ditto:
    abstract def current_revision! : String
    # :ditto:
    abstract def current_revision? : String?
    # :ditto:
    abstract def current_revision=(value : String?)
    # observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
    abstract def observed_generation : Int32?
    # :ditto:
    abstract def observed_generation! : Int32
    # :ditto:
    abstract def observed_generation? : Int32?
    # :ditto:
    abstract def observed_generation=(value : Int32?)
    # readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition.
    abstract def ready_replicas : Int32?
    # :ditto:
    abstract def ready_replicas! : Int32
    # :ditto:
    abstract def ready_replicas? : Int32?
    # :ditto:
    abstract def ready_replicas=(value : Int32?)
    # replicas is the number of Pods created by the StatefulSet controller.
    abstract def replicas : Int32
    # :ditto:
    abstract def replicas! : Int32
    # :ditto:
    abstract def replicas? : Int32?
    # :ditto:
    abstract def replicas=(value : Int32)
    # updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
    abstract def update_revision : String?
    # :ditto:
    abstract def update_revision! : String
    # :ditto:
    abstract def update_revision? : String?
    # :ditto:
    abstract def update_revision=(value : String?)
    # updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
    abstract def updated_replicas : Int32?
    # :ditto:
    abstract def updated_replicas! : Int32
    # :ditto:
    abstract def updated_replicas? : Int32?
    # :ditto:
    abstract def updated_replicas=(value : Int32?)
  end

  # StatefulSetStatus represents the current state of a StatefulSet.
  @[::K8S::Properties(
    collision_count: {key: "collisionCount", accessor: "collision_count", kind: "Int32", nilable: true, default: nil, read_only: false, description: "collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision."},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Apps::V1::StatefulSetCondition)", nilable: true, default: nil, read_only: false, description: "Represents the latest available observations of a statefulset's current state."},
    current_replicas: {key: "currentReplicas", accessor: "current_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision."},
    current_revision: {key: "currentRevision", accessor: "current_revision", kind: "String", nilable: true, default: nil, read_only: false, description: "currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas)."},
    observed_generation: {key: "observedGeneration", accessor: "observed_generation", kind: "Int32", nilable: true, default: nil, read_only: false, description: "observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server."},
    ready_replicas: {key: "readyReplicas", accessor: "ready_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition."},
    replicas: {key: "replicas", accessor: "replicas", kind: "Int32", nilable: false, default: nil, read_only: false, description: "replicas is the number of Pods created by the StatefulSet controller."},
    update_revision: {key: "updateRevision", accessor: "update_revision", kind: "String", nilable: true, default: nil, read_only: false, description: "updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)"},
    updated_replicas: {key: "updatedReplicas", accessor: "updated_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision."},
  )]
  class Api::Apps::V1::StatefulSetStatus < ::K8S::Types::Api::Apps::V1::StatefulSetStatus::Instance
    include ::K8S::Types::Api::Apps::V1::StatefulSetStatus
    include ::K8S::Kubernetes::Object

    # collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
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

    # Represents the latest available observations of a statefulset's current state.
    def conditions : ::Array(::K8S::Api::Apps::V1::StatefulSetCondition)?
      self.["conditions"].as(::Array(::K8S::Api::Apps::V1::StatefulSetCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Api::Apps::V1::StatefulSetCondition)
      self.["conditions"].as(::Array(::K8S::Api::Apps::V1::StatefulSetCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Api::Apps::V1::StatefulSetCondition)?
      self.["conditions"]?.as(::Array(::K8S::Api::Apps::V1::StatefulSetCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Api::Apps::V1::StatefulSetCondition)?)
      self.["conditions"] = value
    end

    # currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
    def current_replicas : Int32?
      self.["currentReplicas"].as(Int32?)
    end

    # :ditto:
    def current_replicas! : Int32
      self.["currentReplicas"].as(Int32?).not_nil!
    end

    # :ditto:
    def current_replicas? : Int32?
      self.["currentReplicas"]?.as(Int32?)
    end

    # :ditto:
    def current_replicas=(value : Int32?)
      self.["currentReplicas"] = value
    end

    # currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
    def current_revision : String?
      self.["currentRevision"].as(String?)
    end

    # :ditto:
    def current_revision! : String
      self.["currentRevision"].as(String?).not_nil!
    end

    # :ditto:
    def current_revision? : String?
      self.["currentRevision"]?.as(String?)
    end

    # :ditto:
    def current_revision=(value : String?)
      self.["currentRevision"] = value
    end

    # observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
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

    # readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition.
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

    # replicas is the number of Pods created by the StatefulSet controller.
    def replicas : Int32
      self.["replicas"].as(Int32)
    end

    # :ditto:
    def replicas! : Int32
      self.["replicas"].as(Int32).not_nil!
    end

    # :ditto:
    def replicas? : Int32?
      self.["replicas"]?.as(Int32?)
    end

    # :ditto:
    def replicas=(value : Int32)
      self.["replicas"] = value
    end

    # updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
    def update_revision : String?
      self.["updateRevision"].as(String?)
    end

    # :ditto:
    def update_revision! : String
      self.["updateRevision"].as(String?).not_nil!
    end

    # :ditto:
    def update_revision? : String?
      self.["updateRevision"]?.as(String?)
    end

    # :ditto:
    def update_revision=(value : String?)
      self.["updateRevision"] = value
    end

    # updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
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
        { key: "collisionCount", accessor: "collision_count", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Apps::V1::StatefulSetCondition) },
        { key: "currentReplicas", accessor: "current_replicas", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "currentRevision", accessor: "current_revision", nilable: true, read_only: false, default: nil, kind: String },
        { key: "observedGeneration", accessor: "observed_generation", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "readyReplicas", accessor: "ready_replicas", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "replicas", accessor: "replicas", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "updateRevision", accessor: "update_revision", nilable: true, read_only: false, default: nil, kind: String },
        { key: "updatedReplicas", accessor: "updated_replicas", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
