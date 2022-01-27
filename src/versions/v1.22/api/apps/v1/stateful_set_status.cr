# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1::StatefulSetStatus; end

require "./stateful_set_condition"

module K8S
  # Namespace holding the types for `Api::Apps::V1::StatefulSetStatus`.
  module Types::Api::Apps::V1::StatefulSetStatus
    # Total number of available pods (ready for at least minReadySeconds) targeted by this statefulset. This is an alpha field and requires enabling StatefulSetMinReadySeconds feature gate. Remove omitempty when graduating to beta
    abstract def available_replicas : Int32?
    # :ditto:
    abstract def available_replicas! : Int32
    # :ditto:
    abstract def available_replicas? : Int32?
    # :ditto:
    abstract def available_replicas=(value : Int32)
    # collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
    abstract def collision_count : Int32?
    # :ditto:
    abstract def collision_count! : Int32
    # :ditto:
    abstract def collision_count? : Int32?
    # :ditto:
    abstract def collision_count=(value : Int32)
    # Represents the latest available observations of a statefulset's current state.
    abstract def conditions : ::Array(::K8S::Api::Apps::V1::StatefulSetCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Apps::V1::StatefulSetCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Apps::V1::StatefulSetCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Apps::V1::StatefulSetCondition))
    # currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
    abstract def current_replicas : Int32?
    # :ditto:
    abstract def current_replicas! : Int32
    # :ditto:
    abstract def current_replicas? : Int32?
    # :ditto:
    abstract def current_replicas=(value : Int32)
    # currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
    abstract def current_revision : String?
    # :ditto:
    abstract def current_revision! : String
    # :ditto:
    abstract def current_revision? : String?
    # :ditto:
    abstract def current_revision=(value : String)
    # observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
    abstract def observed_generation : Int32?
    # :ditto:
    abstract def observed_generation! : Int32
    # :ditto:
    abstract def observed_generation? : Int32?
    # :ditto:
    abstract def observed_generation=(value : Int32)
    # readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition.
    abstract def ready_replicas : Int32?
    # :ditto:
    abstract def ready_replicas! : Int32
    # :ditto:
    abstract def ready_replicas? : Int32?
    # :ditto:
    abstract def ready_replicas=(value : Int32)
    # replicas is the number of Pods created by the StatefulSet controller.
    abstract def replicas : Int32?
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
    abstract def update_revision=(value : String)
    # updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
    abstract def updated_replicas : Int32?
    # :ditto:
    abstract def updated_replicas! : Int32
    # :ditto:
    abstract def updated_replicas? : Int32?
    # :ditto:
    abstract def updated_replicas=(value : Int32)
  end

  # StatefulSetStatus represents the current state of a StatefulSet.
  @[::K8S::Properties(
    available_replicas: {key: "availableReplicas", accessor: "available_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Total number of available pods (ready for at least minReadySeconds) targeted by this statefulset. This is an alpha field and requires enabling StatefulSetMinReadySeconds feature gate. Remove omitempty when graduating to beta", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    collision_count: {key: "collisionCount", accessor: "collision_count", kind: "Int32", nilable: true, default: nil, read_only: false, description: "collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Apps::V1::StatefulSetCondition)", nilable: true, default: nil, read_only: false, description: "Represents the latest available observations of a statefulset's current state.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    current_replicas: {key: "currentReplicas", accessor: "current_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    current_revision: {key: "currentRevision", accessor: "current_revision", kind: "String", nilable: true, default: nil, read_only: false, description: "currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    observed_generation: {key: "observedGeneration", accessor: "observed_generation", kind: "Int32", nilable: true, default: nil, read_only: false, description: "observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ready_replicas: {key: "readyReplicas", accessor: "ready_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    replicas: {key: "replicas", accessor: "replicas", kind: "Int32", nilable: false, default: nil, read_only: false, description: "replicas is the number of Pods created by the StatefulSet controller.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    update_revision: {key: "updateRevision", accessor: "update_revision", kind: "String", nilable: true, default: nil, read_only: false, description: "updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    updated_replicas: {key: "updatedReplicas", accessor: "updated_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1::StatefulSetStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Apps::V1::StatefulSetStatus
    k8s_object_accessor("availableReplicas", available_replicas : Int32, true, false, "Total number of available pods (ready for at least minReadySeconds) targeted by this statefulset. This is an alpha field and requires enabling StatefulSetMinReadySeconds feature gate. Remove omitempty when graduating to beta")
    k8s_object_accessor("collisionCount", collision_count : Int32, true, false, "collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.")
    k8s_object_accessor("conditions", conditions : ::Array(::K8S::Api::Apps::V1::StatefulSetCondition), true, false, "Represents the latest available observations of a statefulset's current state.")
    k8s_object_accessor("currentReplicas", current_replicas : Int32, true, false, "currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.")
    k8s_object_accessor("currentRevision", current_revision : String, true, false, "currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).")
    k8s_object_accessor("observedGeneration", observed_generation : Int32, true, false, "observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.")
    k8s_object_accessor("readyReplicas", ready_replicas : Int32, true, false, "readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition.")
    k8s_object_accessor("replicas", replicas : Int32, false, false, "replicas is the number of Pods created by the StatefulSet controller.")
    k8s_object_accessor("updateRevision", update_revision : String, true, false, "updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)")
    k8s_object_accessor("updatedReplicas", updated_replicas : Int32, true, false, "updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.")

    def initialize(*, available_replicas : Int32? = nil, collision_count : Int32? = nil, conditions : ::Array(::K8S::Api::Apps::V1::StatefulSetCondition)? = nil, current_replicas : Int32? = nil, current_revision : String? = nil, observed_generation : Int32? = nil, ready_replicas : Int32? = nil, replicas : Int32? = nil, update_revision : String? = nil, updated_replicas : Int32? = nil)
      super()
      self.["availableReplicas"] = available_replicas
      self.["collisionCount"] = collision_count
      self.["conditions"] = conditions
      self.["currentReplicas"] = current_replicas
      self.["currentRevision"] = current_revision
      self.["observedGeneration"] = observed_generation
      self.["readyReplicas"] = ready_replicas
      self.["replicas"] = replicas
      self.["updateRevision"] = update_revision
      self.["updatedReplicas"] = updated_replicas
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "availableReplicas", accessor: "available_replicas", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "collisionCount", accessor: "collision_count", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Apps::V1::StatefulSetCondition)},
      {key: "currentReplicas", accessor: "current_replicas", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "currentRevision", accessor: "current_revision", nilable: true, read_only: false, default: nil, kind: String},
      {key: "observedGeneration", accessor: "observed_generation", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "readyReplicas", accessor: "ready_replicas", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "replicas", accessor: "replicas", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "updateRevision", accessor: "update_revision", nilable: true, read_only: false, default: nil, kind: String},
      {key: "updatedReplicas", accessor: "updated_replicas", nilable: true, read_only: false, default: nil, kind: Int32},
    ])
  end
end
