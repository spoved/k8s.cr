# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./stateful_set_condition"

::K8S::Kubernetes::Resource.define_object("StatefulSetStatus",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "available_replicas", kind: Int32, key: "availableReplicas", nilable: true, read_only: false, description: "Total number of available pods (ready for at least minReadySeconds) targeted by this statefulset."},
    {name: "collision_count", kind: Int32, key: "collisionCount", nilable: true, read_only: false, description: "collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision."},
    {name: "conditions", kind: ::Array(::K8S::Api::Apps::V1::StatefulSetCondition), key: "conditions", nilable: true, read_only: false, description: "Represents the latest available observations of a statefulset's current state."},
    {name: "current_replicas", kind: Int32, key: "currentReplicas", nilable: true, read_only: false, description: "currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision."},
    {name: "current_revision", kind: String, key: "currentRevision", nilable: true, read_only: false, description: "currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas)."},
    {name: "observed_generation", kind: Int32, key: "observedGeneration", nilable: true, read_only: false, description: "observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server."},
    {name: "ready_replicas", kind: Int32, key: "readyReplicas", nilable: true, read_only: false, description: "readyReplicas is the number of pods created for this StatefulSet with a Ready Condition."},
    {name: "replicas", kind: Int32, key: "replicas", nilable: false, read_only: false, description: "replicas is the number of Pods created by the StatefulSet controller."},
    {name: "update_revision", kind: String, key: "updateRevision", nilable: true, read_only: false, description: "updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)"},
    {name: "updated_replicas", kind: Int32, key: "updatedReplicas", nilable: true, read_only: false, description: "updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision."},

  ]
)
