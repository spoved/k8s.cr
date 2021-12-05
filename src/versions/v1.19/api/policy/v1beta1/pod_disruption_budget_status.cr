# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PodDisruptionBudgetStatus represents information about the status of a PodDisruptionBudget. Status may trail the actual state of a system.
  @[::K8S::Properties(
    current_healthy: {type: Int32, nilable: false, key: "currentHealthy", getter: false, setter: false},
    desired_healthy: {type: Int32, nilable: false, key: "desiredHealthy", getter: false, setter: false},
    disrupted_pods: {type: Hash(String, String), nilable: true, key: "disruptedPods", getter: false, setter: false},
    disruptions_allowed: {type: Int32, nilable: false, key: "disruptionsAllowed", getter: false, setter: false},
    expected_pods: {type: Int32, nilable: false, key: "expectedPods", getter: false, setter: false},
    observed_generation: {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
  )]
  class Api::Policy::V1beta1::PodDisruptionBudgetStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # current number of healthy pods
    @[::JSON::Field(key: "currentHealthy")]
    @[::YAML::Field(key: "currentHealthy")]
    property current_healthy : Int32

    # minimum desired number of healthy pods
    @[::JSON::Field(key: "desiredHealthy")]
    @[::YAML::Field(key: "desiredHealthy")]
    property desired_healthy : Int32

    # DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
    @[::JSON::Field(key: "disruptedPods")]
    @[::YAML::Field(key: "disruptedPods")]
    property disrupted_pods : Hash(String, String) | Nil

    # Number of pod disruptions that are currently allowed.
    @[::JSON::Field(key: "disruptionsAllowed")]
    @[::YAML::Field(key: "disruptionsAllowed")]
    property disruptions_allowed : Int32

    # total number of pods counted by this disruption budget
    @[::JSON::Field(key: "expectedPods")]
    @[::YAML::Field(key: "expectedPods")]
    property expected_pods : Int32

    # Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.
    @[::JSON::Field(key: "observedGeneration")]
    @[::YAML::Field(key: "observedGeneration")]
    property observed_generation : Int32 | Nil

    def initialize(*, @current_healthy : Int32, @desired_healthy : Int32, @disruptions_allowed : Int32, @expected_pods : Int32, @disrupted_pods : Hash(String, String) | Nil = nil, @observed_generation : Int32 | Nil = nil)
    end
  end
end
