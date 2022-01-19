# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Policy::V1beta1::PodDisruptionBudgetStatus; end

module K8S
  # Namespace holding the types for `Api::Policy::V1beta1::PodDisruptionBudgetStatus`.
  module Types::Api::Policy::V1beta1::PodDisruptionBudgetStatus
    alias ValueType = Int32 | ::Hash(String, ::Time) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # current number of healthy pods
    abstract def current_healthy : Int32
    # :ditto:
    abstract def current_healthy! : Int32
    # :ditto:
    abstract def current_healthy? : Int32?
    # :ditto:
    abstract def current_healthy=(value : Int32)
    # minimum desired number of healthy pods
    abstract def desired_healthy : Int32
    # :ditto:
    abstract def desired_healthy! : Int32
    # :ditto:
    abstract def desired_healthy? : Int32?
    # :ditto:
    abstract def desired_healthy=(value : Int32)
    # DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
    abstract def disrupted_pods : ::Hash(String, ::Time)?
    # :ditto:
    abstract def disrupted_pods! : ::Hash(String, ::Time)
    # :ditto:
    abstract def disrupted_pods? : ::Hash(String, ::Time)?
    # :ditto:
    abstract def disrupted_pods=(value : ::Hash(String, ::Time)?)
    # Number of pod disruptions that are currently allowed.
    abstract def disruptions_allowed : Int32
    # :ditto:
    abstract def disruptions_allowed! : Int32
    # :ditto:
    abstract def disruptions_allowed? : Int32?
    # :ditto:
    abstract def disruptions_allowed=(value : Int32)
    # total number of pods counted by this disruption budget
    abstract def expected_pods : Int32
    # :ditto:
    abstract def expected_pods! : Int32
    # :ditto:
    abstract def expected_pods? : Int32?
    # :ditto:
    abstract def expected_pods=(value : Int32)
    # Most recent generation observed when updating this PDB status. PodDisruptionsAllowed and other status informatio is valid only if observedGeneration equals to PDB's object generation.
    abstract def observed_generation : Int32?
    # :ditto:
    abstract def observed_generation! : Int32
    # :ditto:
    abstract def observed_generation? : Int32?
    # :ditto:
    abstract def observed_generation=(value : Int32?)
  end

  # PodDisruptionBudgetStatus represents information about the status of a PodDisruptionBudget. Status may trail the actual state of a system.
  @[::K8S::Properties(
    current_healthy: {key: "currentHealthy", accessor: "current_healthy", kind: "Int32", nilable: false, default: nil, read_only: false, description: "current number of healthy pods"},
    desired_healthy: {key: "desiredHealthy", accessor: "desired_healthy", kind: "Int32", nilable: false, default: nil, read_only: false, description: "minimum desired number of healthy pods"},
    disrupted_pods: {key: "disruptedPods", accessor: "disrupted_pods", kind: "::Hash(String, ::Time)", nilable: true, default: nil, read_only: false, description: "DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions."},
    disruptions_allowed: {key: "disruptionsAllowed", accessor: "disruptions_allowed", kind: "Int32", nilable: false, default: nil, read_only: false, description: "Number of pod disruptions that are currently allowed."},
    expected_pods: {key: "expectedPods", accessor: "expected_pods", kind: "Int32", nilable: false, default: nil, read_only: false, description: "total number of pods counted by this disruption budget"},
    observed_generation: {key: "observedGeneration", accessor: "observed_generation", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Most recent generation observed when updating this PDB status. PodDisruptionsAllowed and other status informatio is valid only if observedGeneration equals to PDB's object generation."},
  )]
  class Api::Policy::V1beta1::PodDisruptionBudgetStatus < ::K8S::Types::Api::Policy::V1beta1::PodDisruptionBudgetStatus::Instance
    include ::K8S::Types::Api::Policy::V1beta1::PodDisruptionBudgetStatus
    include ::K8S::Kubernetes::Object

    # current number of healthy pods
    def current_healthy : Int32
      self.["currentHealthy"].as(Int32)
    end

    # :ditto:
    def current_healthy! : Int32
      self.["currentHealthy"].as(Int32).not_nil!
    end

    # :ditto:
    def current_healthy? : Int32?
      self.["currentHealthy"]?.as(Int32?)
    end

    # :ditto:
    def current_healthy=(value : Int32)
      self.["currentHealthy"] = value
    end

    # minimum desired number of healthy pods
    def desired_healthy : Int32
      self.["desiredHealthy"].as(Int32)
    end

    # :ditto:
    def desired_healthy! : Int32
      self.["desiredHealthy"].as(Int32).not_nil!
    end

    # :ditto:
    def desired_healthy? : Int32?
      self.["desiredHealthy"]?.as(Int32?)
    end

    # :ditto:
    def desired_healthy=(value : Int32)
      self.["desiredHealthy"] = value
    end

    # DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
    def disrupted_pods : ::Hash(String, ::Time)?
      self.["disruptedPods"].as(::Hash(String, ::Time)?)
    end

    # :ditto:
    def disrupted_pods! : ::Hash(String, ::Time)
      self.["disruptedPods"].as(::Hash(String, ::Time)?).not_nil!
    end

    # :ditto:
    def disrupted_pods? : ::Hash(String, ::Time)?
      self.["disruptedPods"]?.as(::Hash(String, ::Time)?)
    end

    # :ditto:
    def disrupted_pods=(value : ::Hash(String, ::Time)?)
      self.["disruptedPods"] = value
    end

    # Number of pod disruptions that are currently allowed.
    def disruptions_allowed : Int32
      self.["disruptionsAllowed"].as(Int32)
    end

    # :ditto:
    def disruptions_allowed! : Int32
      self.["disruptionsAllowed"].as(Int32).not_nil!
    end

    # :ditto:
    def disruptions_allowed? : Int32?
      self.["disruptionsAllowed"]?.as(Int32?)
    end

    # :ditto:
    def disruptions_allowed=(value : Int32)
      self.["disruptionsAllowed"] = value
    end

    # total number of pods counted by this disruption budget
    def expected_pods : Int32
      self.["expectedPods"].as(Int32)
    end

    # :ditto:
    def expected_pods! : Int32
      self.["expectedPods"].as(Int32).not_nil!
    end

    # :ditto:
    def expected_pods? : Int32?
      self.["expectedPods"]?.as(Int32?)
    end

    # :ditto:
    def expected_pods=(value : Int32)
      self.["expectedPods"] = value
    end

    # Most recent generation observed when updating this PDB status. PodDisruptionsAllowed and other status informatio is valid only if observedGeneration equals to PDB's object generation.
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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "currentHealthy", accessor: "current_healthy", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "desiredHealthy", accessor: "desired_healthy", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "disruptedPods", accessor: "disrupted_pods", nilable: true, read_only: false, default: nil, kind: ::Hash(String, ::Time) },
        { key: "disruptionsAllowed", accessor: "disruptions_allowed", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "expectedPods", accessor: "expected_pods", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "observedGeneration", accessor: "observed_generation", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
