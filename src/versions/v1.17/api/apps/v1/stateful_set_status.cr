# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # StatefulSetStatus represents the current state of a StatefulSet.
  @[::K8S::Properties(
    collision_count: {type: Int32, nilable: true, key: "collisionCount", getter: false, setter: false},
    conditions: {type: Array(Api::Apps::V1::StatefulSetCondition), nilable: true, key: "conditions", getter: false, setter: false},
    current_replicas: {type: Int32, nilable: true, key: "currentReplicas", getter: false, setter: false},
    current_revision: {type: String, nilable: true, key: "currentRevision", getter: false, setter: false},
    observed_generation: {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
    ready_replicas: {type: Int32, nilable: true, key: "readyReplicas", getter: false, setter: false},
    replicas: {type: Int32, nilable: false, key: "replicas", getter: false, setter: false},
    update_revision: {type: String, nilable: true, key: "updateRevision", getter: false, setter: false},
    updated_replicas: {type: Int32, nilable: true, key: "updatedReplicas", getter: false, setter: false},
  )]
  class Api::Apps::V1::StatefulSetStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
    @[::JSON::Field(key: "collisionCount", emit_null: false)]
    @[::YAML::Field(key: "collisionCount", emit_null: false)]
    property collision_count : Int32 | Nil

    # Represents the latest available observations of a statefulset's current state.
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(Api::Apps::V1::StatefulSetCondition) | Nil

    # currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
    @[::JSON::Field(key: "currentReplicas", emit_null: false)]
    @[::YAML::Field(key: "currentReplicas", emit_null: false)]
    property current_replicas : Int32 | Nil

    # currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
    @[::JSON::Field(key: "currentRevision", emit_null: false)]
    @[::YAML::Field(key: "currentRevision", emit_null: false)]
    property current_revision : String | Nil

    # observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
    @[::JSON::Field(key: "observedGeneration", emit_null: false)]
    @[::YAML::Field(key: "observedGeneration", emit_null: false)]
    property observed_generation : Int32 | Nil

    # readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition.
    @[::JSON::Field(key: "readyReplicas", emit_null: false)]
    @[::YAML::Field(key: "readyReplicas", emit_null: false)]
    property ready_replicas : Int32 | Nil

    # replicas is the number of Pods created by the StatefulSet controller.
    @[::JSON::Field(key: "replicas", emit_null: true)]
    @[::YAML::Field(key: "replicas", emit_null: true)]
    property replicas : Int32

    # updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
    @[::JSON::Field(key: "updateRevision", emit_null: false)]
    @[::YAML::Field(key: "updateRevision", emit_null: false)]
    property update_revision : String | Nil

    # updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
    @[::JSON::Field(key: "updatedReplicas", emit_null: false)]
    @[::YAML::Field(key: "updatedReplicas", emit_null: false)]
    property updated_replicas : Int32 | Nil

    def initialize(*, @replicas : Int32, @collision_count : Int32 | Nil = nil, @conditions : Array(Api::Apps::V1::StatefulSetCondition) | Nil = nil, @current_replicas : Int32 | Nil = nil, @current_revision : String | Nil = nil, @observed_generation : Int32 | Nil = nil, @ready_replicas : Int32 | Nil = nil, @update_revision : String | Nil = nil, @updated_replicas : Int32 | Nil = nil)
    end
  end
end
