# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./replication_controller_condition"

::K8S::Kubernetes::Resource.define_object("ReplicationControllerStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "available_replicas", kind: Int32, key: "availableReplicas", nilable: true, read_only: false, description: "The number of available replicas (ready for at least minReadySeconds) for this replication controller."},
    {name: "conditions", kind: ::Array(::K8S::Api::Core::V1::ReplicationControllerCondition), key: "conditions", nilable: true, read_only: false, description: "Represents the latest available observations of a replication controller's current state."},
    {name: "fully_labeled_replicas", kind: Int32, key: "fullyLabeledReplicas", nilable: true, read_only: false, description: "The number of pods that have labels matching the labels of the pod template of the replication controller."},
    {name: "observed_generation", kind: Int32, key: "observedGeneration", nilable: true, read_only: false, description: "ObservedGeneration reflects the generation of the most recently observed replication controller."},
    {name: "ready_replicas", kind: Int32, key: "readyReplicas", nilable: true, read_only: false, description: "The number of ready replicas for this replication controller."},
    {name: "replicas", kind: Int32, key: "replicas", nilable: false, read_only: false, description: "Replicas is the most recently observed number of replicas. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller)"},

  ]
)
