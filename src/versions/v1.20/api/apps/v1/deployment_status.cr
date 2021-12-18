# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # DeploymentStatus is the most recently observed status of the Deployment.
  @[::K8S::Properties(
    available_replicas: {type: Int32, nilable: true, key: "availableReplicas", getter: false, setter: false},
    collision_count: {type: Int32, nilable: true, key: "collisionCount", getter: false, setter: false},
    conditions: {type: Array(Api::Apps::V1::DeploymentCondition), nilable: true, key: "conditions", getter: false, setter: false},
    observed_generation: {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
    ready_replicas: {type: Int32, nilable: true, key: "readyReplicas", getter: false, setter: false},
    replicas: {type: Int32, nilable: true, key: "replicas", getter: false, setter: false},
    unavailable_replicas: {type: Int32, nilable: true, key: "unavailableReplicas", getter: false, setter: false},
    updated_replicas: {type: Int32, nilable: true, key: "updatedReplicas", getter: false, setter: false},
  )]
  class Api::Apps::V1::DeploymentStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
    @[::JSON::Field(key: "availableReplicas", emit_null: false)]
    @[::YAML::Field(key: "availableReplicas", emit_null: false)]
    property available_replicas : Int32 | Nil

    # Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
    @[::JSON::Field(key: "collisionCount", emit_null: false)]
    @[::YAML::Field(key: "collisionCount", emit_null: false)]
    property collision_count : Int32 | Nil

    # Represents the latest available observations of a deployment's current state.
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(Api::Apps::V1::DeploymentCondition) | Nil

    # The generation observed by the deployment controller.
    @[::JSON::Field(key: "observedGeneration", emit_null: false)]
    @[::YAML::Field(key: "observedGeneration", emit_null: false)]
    property observed_generation : Int32 | Nil

    # Total number of ready pods targeted by this deployment.
    @[::JSON::Field(key: "readyReplicas", emit_null: false)]
    @[::YAML::Field(key: "readyReplicas", emit_null: false)]
    property ready_replicas : Int32 | Nil

    # Total number of non-terminated pods targeted by this deployment (their labels match the selector).
    @[::JSON::Field(key: "replicas", emit_null: false)]
    @[::YAML::Field(key: "replicas", emit_null: false)]
    property replicas : Int32 | Nil

    # Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
    @[::JSON::Field(key: "unavailableReplicas", emit_null: false)]
    @[::YAML::Field(key: "unavailableReplicas", emit_null: false)]
    property unavailable_replicas : Int32 | Nil

    # Total number of non-terminated pods targeted by this deployment that have the desired template spec.
    @[::JSON::Field(key: "updatedReplicas", emit_null: false)]
    @[::YAML::Field(key: "updatedReplicas", emit_null: false)]
    property updated_replicas : Int32 | Nil

    def initialize(*, @available_replicas : Int32 | Nil = nil, @collision_count : Int32 | Nil = nil, @conditions : Array(Api::Apps::V1::DeploymentCondition) | Nil = nil, @observed_generation : Int32 | Nil = nil, @ready_replicas : Int32 | Nil = nil, @replicas : Int32 | Nil = nil, @unavailable_replicas : Int32 | Nil = nil, @updated_replicas : Int32 | Nil = nil)
    end
  end
end
