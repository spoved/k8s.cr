# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ReplicaSetStatus represents the current status of a ReplicaSet.
  @[::K8S::Properties(
    available_replicas: {type: Int32, nilable: true, key: "availableReplicas", getter: false, setter: false},
    conditions: {type: Array(Api::Apps::V1::ReplicaSetCondition), nilable: true, key: "conditions", getter: false, setter: false},
    fully_labeled_replicas: {type: Int32, nilable: true, key: "fullyLabeledReplicas", getter: false, setter: false},
    observed_generation: {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
    ready_replicas: {type: Int32, nilable: true, key: "readyReplicas", getter: false, setter: false},
    replicas: {type: Int32, nilable: false, key: "replicas", getter: false, setter: false},
  )]
  class Api::Apps::V1::ReplicaSetStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # The number of available replicas (ready for at least minReadySeconds) for this replica set.
    @[::JSON::Field(key: "availableReplicas", emit_null: false)]
    @[::YAML::Field(key: "availableReplicas", emit_null: false)]
    property available_replicas : Int32 | Nil

    # Represents the latest available observations of a replica set's current state.
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(Api::Apps::V1::ReplicaSetCondition) | Nil

    # The number of pods that have labels matching the labels of the pod template of the replicaset.
    @[::JSON::Field(key: "fullyLabeledReplicas", emit_null: false)]
    @[::YAML::Field(key: "fullyLabeledReplicas", emit_null: false)]
    property fully_labeled_replicas : Int32 | Nil

    # ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
    @[::JSON::Field(key: "observedGeneration", emit_null: false)]
    @[::YAML::Field(key: "observedGeneration", emit_null: false)]
    property observed_generation : Int32 | Nil

    # readyReplicas is the number of pods targeted by this ReplicaSet with a Ready Condition.
    @[::JSON::Field(key: "readyReplicas", emit_null: false)]
    @[::YAML::Field(key: "readyReplicas", emit_null: false)]
    property ready_replicas : Int32 | Nil

    # Replicas is the most recently oberved number of replicas. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller)
    @[::JSON::Field(key: "replicas", emit_null: true)]
    @[::YAML::Field(key: "replicas", emit_null: true)]
    property replicas : Int32

    def initialize(*, @replicas : Int32, @available_replicas : Int32 | Nil = nil, @conditions : Array(Api::Apps::V1::ReplicaSetCondition) | Nil = nil, @fully_labeled_replicas : Int32 | Nil = nil, @observed_generation : Int32 | Nil = nil, @ready_replicas : Int32 | Nil = nil)
    end
  end
end
