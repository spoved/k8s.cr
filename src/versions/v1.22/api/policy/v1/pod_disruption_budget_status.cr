# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/condition"

::K8S::Kubernetes::Resource.define_object("PodDisruptionBudgetStatus",
  namespace: "::K8S::Api::Policy::V1",
  properties: [

    {name: "conditions", kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition), key: "conditions", nilable: true, read_only: false, description: "Conditions contain conditions for PDB. The disruption controller sets the DisruptionAllowed condition. The following are known values for the reason field (additional reasons could be added in the future): - SyncFailed: The controller encountered an error and wasn't able to compute\n              the number of allowed disruptions. Therefore no disruptions are\n              allowed and the status of the condition will be False.\n- InsufficientPods: The number of pods are either at or below the number\n                    required by the PodDisruptionBudget. No disruptions are\n                    allowed and the status of the condition will be False.\n- SufficientPods: There are more pods than required by the PodDisruptionBudget.\n                  The condition will be True, and the number of allowed\n                  disruptions are provided by the disruptionsAllowed property."},
    {name: "current_healthy", kind: Int32, key: "currentHealthy", nilable: false, read_only: false, description: "current number of healthy pods"},
    {name: "desired_healthy", kind: Int32, key: "desiredHealthy", nilable: false, read_only: false, description: "minimum desired number of healthy pods"},
    {name: "disrupted_pods", kind: ::Hash(String, ::Time), key: "disruptedPods", nilable: true, read_only: false, description: "DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions."},
    {name: "disruptions_allowed", kind: Int32, key: "disruptionsAllowed", nilable: false, read_only: false, description: "Number of pod disruptions that are currently allowed."},
    {name: "expected_pods", kind: Int32, key: "expectedPods", nilable: false, read_only: false, description: "total number of pods counted by this disruption budget"},
    {name: "observed_generation", kind: Int32, key: "observedGeneration", nilable: true, read_only: false, description: "Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation."},

  ]
)
