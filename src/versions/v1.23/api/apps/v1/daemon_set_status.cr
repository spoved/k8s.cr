# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # DaemonSetStatus represents the current status of a daemon set.
  @[::K8S::Properties(
    collision_count: {type: Int32, nilable: true, key: "collisionCount", getter: false, setter: false},
    conditions: {type: Array(Api::Apps::V1::DaemonSetCondition), nilable: true, key: "conditions", getter: false, setter: false},
    current_number_scheduled: {type: Int32, nilable: false, key: "currentNumberScheduled", getter: false, setter: false},
    desired_number_scheduled: {type: Int32, nilable: false, key: "desiredNumberScheduled", getter: false, setter: false},
    number_available: {type: Int32, nilable: true, key: "numberAvailable", getter: false, setter: false},
    number_misscheduled: {type: Int32, nilable: false, key: "numberMisscheduled", getter: false, setter: false},
    number_ready: {type: Int32, nilable: false, key: "numberReady", getter: false, setter: false},
    number_unavailable: {type: Int32, nilable: true, key: "numberUnavailable", getter: false, setter: false},
    observed_generation: {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
    updated_number_scheduled: {type: Int32, nilable: true, key: "updatedNumberScheduled", getter: false, setter: false},
  )]
  class Api::Apps::V1::DaemonSetStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
    @[::JSON::Field(key: "collisionCount", emit_null: false)]
    @[::YAML::Field(key: "collisionCount", emit_null: false)]
    property collision_count : Int32 | Nil

    # Represents the latest available observations of a DaemonSet's current state.
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(Api::Apps::V1::DaemonSetCondition) | Nil

    # The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)
    @[::JSON::Field(key: "currentNumberScheduled", emit_null: true)]
    @[::YAML::Field(key: "currentNumberScheduled", emit_null: true)]
    property current_number_scheduled : Int32

    # The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: [https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)
    @[::JSON::Field(key: "desiredNumberScheduled", emit_null: true)]
    @[::YAML::Field(key: "desiredNumberScheduled", emit_null: true)]
    property desired_number_scheduled : Int32

    # The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
    @[::JSON::Field(key: "numberAvailable", emit_null: false)]
    @[::YAML::Field(key: "numberAvailable", emit_null: false)]
    property number_available : Int32 | Nil

    # The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)
    @[::JSON::Field(key: "numberMisscheduled", emit_null: true)]
    @[::YAML::Field(key: "numberMisscheduled", emit_null: true)]
    property number_misscheduled : Int32

    # numberReady is the number of nodes that should be running the daemon pod and have one or more of the daemon pod running with a Ready Condition.
    @[::JSON::Field(key: "numberReady", emit_null: true)]
    @[::YAML::Field(key: "numberReady", emit_null: true)]
    property number_ready : Int32

    # The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
    @[::JSON::Field(key: "numberUnavailable", emit_null: false)]
    @[::YAML::Field(key: "numberUnavailable", emit_null: false)]
    property number_unavailable : Int32 | Nil

    # The most recent generation observed by the daemon set controller.
    @[::JSON::Field(key: "observedGeneration", emit_null: false)]
    @[::YAML::Field(key: "observedGeneration", emit_null: false)]
    property observed_generation : Int32 | Nil

    # The total number of nodes that are running updated daemon pod
    @[::JSON::Field(key: "updatedNumberScheduled", emit_null: false)]
    @[::YAML::Field(key: "updatedNumberScheduled", emit_null: false)]
    property updated_number_scheduled : Int32 | Nil

    def initialize(*, @current_number_scheduled : Int32, @desired_number_scheduled : Int32, @number_misscheduled : Int32, @number_ready : Int32, @collision_count : Int32 | Nil = nil, @conditions : Array(Api::Apps::V1::DaemonSetCondition) | Nil = nil, @number_available : Int32 | Nil = nil, @number_unavailable : Int32 | Nil = nil, @observed_generation : Int32 | Nil = nil, @updated_number_scheduled : Int32 | Nil = nil)
    end
  end
end
