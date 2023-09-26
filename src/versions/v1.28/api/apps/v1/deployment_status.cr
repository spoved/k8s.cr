# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./deployment_condition"

::K8S::Kubernetes::Resource.define_object("DeploymentStatus",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "available_replicas", kind: Int32, key: "availableReplicas", nilable: true, read_only: false, description: "Total number of available pods (ready for at least minReadySeconds) targeted by this deployment."},
    {name: "collision_count", kind: Int32, key: "collisionCount", nilable: true, read_only: false, description: "Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet."},
    {name: "conditions", kind: ::Array(::K8S::Api::Apps::V1::DeploymentCondition), key: "conditions", nilable: true, read_only: false, description: "Represents the latest available observations of a deployment's current state."},
    {name: "observed_generation", kind: Int32, key: "observedGeneration", nilable: true, read_only: false, description: "The generation observed by the deployment controller."},
    {name: "ready_replicas", kind: Int32, key: "readyReplicas", nilable: true, read_only: false, description: "readyReplicas is the number of pods targeted by this Deployment with a Ready Condition."},
    {name: "replicas", kind: Int32, key: "replicas", nilable: true, read_only: false, description: "Total number of non-terminated pods targeted by this deployment (their labels match the selector)."},
    {name: "unavailable_replicas", kind: Int32, key: "unavailableReplicas", nilable: true, read_only: false, description: "Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created."},
    {name: "updated_replicas", kind: Int32, key: "updatedReplicas", nilable: true, read_only: false, description: "Total number of non-terminated pods targeted by this deployment that have the desired template spec."},

  ]
)
