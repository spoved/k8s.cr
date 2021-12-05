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
    include ::YAML::Serializable

    # Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
    @[::JSON::Field(key: "collisionCount")]
    @[::YAML::Field(key: "collisionCount")]
    property collision_count : Int32 | Nil

    # Represents the latest available observations of a DaemonSet's current state.
    property conditions : Array(Api::Apps::V1::DaemonSetCondition) | Nil

    # The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)
    @[::JSON::Field(key: "currentNumberScheduled")]
    @[::YAML::Field(key: "currentNumberScheduled")]
    property current_number_scheduled : Int32

    # The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: [https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)
    @[::JSON::Field(key: "desiredNumberScheduled")]
    @[::YAML::Field(key: "desiredNumberScheduled")]
    property desired_number_scheduled : Int32

    # The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
    @[::JSON::Field(key: "numberAvailable")]
    @[::YAML::Field(key: "numberAvailable")]
    property number_available : Int32 | Nil

    # The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)
    @[::JSON::Field(key: "numberMisscheduled")]
    @[::YAML::Field(key: "numberMisscheduled")]
    property number_misscheduled : Int32

    # The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.
    @[::JSON::Field(key: "numberReady")]
    @[::YAML::Field(key: "numberReady")]
    property number_ready : Int32

    # The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
    @[::JSON::Field(key: "numberUnavailable")]
    @[::YAML::Field(key: "numberUnavailable")]
    property number_unavailable : Int32 | Nil

    # The most recent generation observed by the daemon set controller.
    @[::JSON::Field(key: "observedGeneration")]
    @[::YAML::Field(key: "observedGeneration")]
    property observed_generation : Int32 | Nil

    # The total number of nodes that are running updated daemon pod
    @[::JSON::Field(key: "updatedNumberScheduled")]
    @[::YAML::Field(key: "updatedNumberScheduled")]
    property updated_number_scheduled : Int32 | Nil

    def initialize(*, @current_number_scheduled : Int32, @desired_number_scheduled : Int32, @number_misscheduled : Int32, @number_ready : Int32, @collision_count : Int32 | Nil = nil, @conditions : Array | Nil = nil, @number_available : Int32 | Nil = nil, @number_unavailable : Int32 | Nil = nil, @observed_generation : Int32 | Nil = nil, @updated_number_scheduled : Int32 | Nil = nil)
    end
  end
end
