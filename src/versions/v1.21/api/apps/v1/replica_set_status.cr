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
    include ::YAML::Serializable

    # The number of available replicas (ready for at least minReadySeconds) for this replica set.
    @[::JSON::Field(key: "availableReplicas")]
    @[::YAML::Field(key: "availableReplicas")]
    property available_replicas : Int32 | Nil

    # Represents the latest available observations of a replica set's current state.
    property conditions : Array(Api::Apps::V1::ReplicaSetCondition) | Nil

    # The number of pods that have labels matching the labels of the pod template of the replicaset.
    @[::JSON::Field(key: "fullyLabeledReplicas")]
    @[::YAML::Field(key: "fullyLabeledReplicas")]
    property fully_labeled_replicas : Int32 | Nil

    # ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
    @[::JSON::Field(key: "observedGeneration")]
    @[::YAML::Field(key: "observedGeneration")]
    property observed_generation : Int32 | Nil

    # The number of ready replicas for this replica set.
    @[::JSON::Field(key: "readyReplicas")]
    @[::YAML::Field(key: "readyReplicas")]
    property ready_replicas : Int32 | Nil

    # Replicas is the most recently oberved number of replicas. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller)
    property replicas : Int32

    def initialize(*, @replicas : Int32, @available_replicas : Int32 | Nil = nil, @conditions : Array | Nil = nil, @fully_labeled_replicas : Int32 | Nil = nil, @observed_generation : Int32 | Nil = nil, @ready_replicas : Int32 | Nil = nil)
    end
  end
end
