# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ReplicationControllerStatus; end

require "./replication_controller_condition"

module K8S
  # Namespace holding the types for `Api::Core::V1::ReplicationControllerStatus`.
  module Types::Api::Core::V1::ReplicationControllerStatus
    alias ValueType = Int32 | ::Array(::K8S::Api::Core::V1::ReplicationControllerCondition) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The number of available replicas (ready for at least minReadySeconds) for this replication controller.
    abstract def available_replicas : Int32?
    # :ditto:
    abstract def available_replicas! : Int32
    # :ditto:
    abstract def available_replicas? : Int32?
    # :ditto:
    abstract def available_replicas=(value : Int32?)
    # Represents the latest available observations of a replication controller's current state.
    abstract def conditions : ::Array(::K8S::Api::Core::V1::ReplicationControllerCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Core::V1::ReplicationControllerCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Core::V1::ReplicationControllerCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Core::V1::ReplicationControllerCondition)?)
    # The number of pods that have labels matching the labels of the pod template of the replication controller.
    abstract def fully_labeled_replicas : Int32?
    # :ditto:
    abstract def fully_labeled_replicas! : Int32
    # :ditto:
    abstract def fully_labeled_replicas? : Int32?
    # :ditto:
    abstract def fully_labeled_replicas=(value : Int32?)
    # ObservedGeneration reflects the generation of the most recently observed replication controller.
    abstract def observed_generation : Int32?
    # :ditto:
    abstract def observed_generation! : Int32
    # :ditto:
    abstract def observed_generation? : Int32?
    # :ditto:
    abstract def observed_generation=(value : Int32?)
    # The number of ready replicas for this replication controller.
    abstract def ready_replicas : Int32?
    # :ditto:
    abstract def ready_replicas! : Int32
    # :ditto:
    abstract def ready_replicas? : Int32?
    # :ditto:
    abstract def ready_replicas=(value : Int32?)
    # Replicas is the most recently oberved number of replicas. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller)](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller))
    abstract def replicas : Int32
    # :ditto:
    abstract def replicas! : Int32
    # :ditto:
    abstract def replicas? : Int32?
    # :ditto:
    abstract def replicas=(value : Int32)
  end

  # ReplicationControllerStatus represents the current status of a replication controller.
  @[::K8S::Properties(
    available_replicas: {key: "availableReplicas", accessor: "available_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of available replicas (ready for at least minReadySeconds) for this replication controller."},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Core::V1::ReplicationControllerCondition)", nilable: true, default: nil, read_only: false, description: "Represents the latest available observations of a replication controller's current state."},
    fully_labeled_replicas: {key: "fullyLabeledReplicas", accessor: "fully_labeled_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of pods that have labels matching the labels of the pod template of the replication controller."},
    observed_generation: {key: "observedGeneration", accessor: "observed_generation", kind: "Int32", nilable: true, default: nil, read_only: false, description: "ObservedGeneration reflects the generation of the most recently observed replication controller."},
    ready_replicas: {key: "readyReplicas", accessor: "ready_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of ready replicas for this replication controller."},
    replicas: {key: "replicas", accessor: "replicas", kind: "Int32", nilable: false, default: nil, read_only: false, description: "Replicas is the most recently oberved number of replicas. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller)"},
  )]
  class Api::Core::V1::ReplicationControllerStatus < ::K8S::Types::Api::Core::V1::ReplicationControllerStatus::Instance
    include ::K8S::Types::Api::Core::V1::ReplicationControllerStatus
    include ::K8S::Kubernetes::Object

    # The number of available replicas (ready for at least minReadySeconds) for this replication controller.
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

    # Represents the latest available observations of a replication controller's current state.
    def conditions : ::Array(::K8S::Api::Core::V1::ReplicationControllerCondition)?
      self.["conditions"].as(::Array(::K8S::Api::Core::V1::ReplicationControllerCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Api::Core::V1::ReplicationControllerCondition)
      self.["conditions"].as(::Array(::K8S::Api::Core::V1::ReplicationControllerCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Api::Core::V1::ReplicationControllerCondition)?
      self.["conditions"]?.as(::Array(::K8S::Api::Core::V1::ReplicationControllerCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Api::Core::V1::ReplicationControllerCondition)?)
      self.["conditions"] = value
    end

    # The number of pods that have labels matching the labels of the pod template of the replication controller.
    def fully_labeled_replicas : Int32?
      self.["fullyLabeledReplicas"].as(Int32?)
    end

    # :ditto:
    def fully_labeled_replicas! : Int32
      self.["fullyLabeledReplicas"].as(Int32?).not_nil!
    end

    # :ditto:
    def fully_labeled_replicas? : Int32?
      self.["fullyLabeledReplicas"]?.as(Int32?)
    end

    # :ditto:
    def fully_labeled_replicas=(value : Int32?)
      self.["fullyLabeledReplicas"] = value
    end

    # ObservedGeneration reflects the generation of the most recently observed replication controller.
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

    # The number of ready replicas for this replication controller.
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

    # Replicas is the most recently oberved number of replicas. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller)](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller))
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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "availableReplicas", accessor: "available_replicas", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ReplicationControllerCondition) },
        { key: "fullyLabeledReplicas", accessor: "fully_labeled_replicas", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "observedGeneration", accessor: "observed_generation", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "readyReplicas", accessor: "ready_replicas", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "replicas", accessor: "replicas", nilable: false, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
