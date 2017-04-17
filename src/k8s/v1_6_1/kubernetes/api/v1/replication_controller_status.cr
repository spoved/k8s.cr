# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ReplicationControllerStatus represents the current status of a replication controller.
class K8S::V1_6_1::Kubernetes::Api::V1::ReplicationControllerStatus
  # The number of available replicas (ready for at least minReadySeconds) for this replication controller.
  property available_replicas : Int32?

  # Represents the latest available observations of a replication controller's current state.
  property conditions : Array(::K8S::V1_6_1::Kubernetes::Api::V1::ReplicationControllerCondition)?

  # The number of pods that have labels matching the labels of the pod template of the replication controller.
  property fully_labeled_replicas : Int32?

  # ObservedGeneration reflects the generation of the most recently observed replication controller.
  property observed_generation : Int32?

  # The number of ready replicas for this replication controller.
  property ready_replicas : Int32?

  # Replicas is the most recently oberved number of replicas.More info: http://kubernetes.io/docs/user-guide/replication-controller#what-is-a-replication-controller
  property replicas : Int32

  YAML.mapping({available_replicas:     {type: Int32, nilable: true, key: availableReplicas, getter: false, setter: false},
                conditions:             {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::ReplicationControllerCondition), nilable: true, key: conditions, getter: false, setter: false},
                fully_labeled_replicas: {type: Int32, nilable: true, key: fullyLabeledReplicas, getter: false, setter: false},
                observed_generation:    {type: Int32, nilable: true, key: observedGeneration, getter: false, setter: false},
                ready_replicas:         {type: Int32, nilable: true, key: readyReplicas, getter: false, setter: false},
                replicas:               {type: Int32, nilable: false, key: replicas, getter: false, setter: false}}, true)

  JSON.mapping({available_replicas:     {type: Int32, nilable: true, key: availableReplicas, getter: false, setter: false},
                conditions:             {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::ReplicationControllerCondition), nilable: true, key: conditions, getter: false, setter: false},
                fully_labeled_replicas: {type: Int32, nilable: true, key: fullyLabeledReplicas, getter: false, setter: false},
                observed_generation:    {type: Int32, nilable: true, key: observedGeneration, getter: false, setter: false},
                ready_replicas:         {type: Int32, nilable: true, key: readyReplicas, getter: false, setter: false},
                replicas:               {type: Int32, nilable: false, key: replicas, getter: false, setter: false}}, true)

  def initialize(@replicas, @available_replicas = nil, @conditions = nil, @fully_labeled_replicas = nil, @observed_generation = nil, @ready_replicas = nil)
  end
end
