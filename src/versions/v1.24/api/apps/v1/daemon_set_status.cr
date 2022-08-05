# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./daemon_set_condition"

::K8S::Kubernetes::Resource.define_object("DaemonSetStatus",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "collision_count", kind: Int32, key: "collisionCount", nilable: true, read_only: false, description: "Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision."},
    {name: "conditions", kind: ::Array(::K8S::Api::Apps::V1::DaemonSetCondition), key: "conditions", nilable: true, read_only: false, description: "Represents the latest available observations of a DaemonSet's current state."},
    {name: "current_number_scheduled", kind: Int32, key: "currentNumberScheduled", nilable: false, read_only: false, description: "The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)"},
    {name: "desired_number_scheduled", kind: Int32, key: "desiredNumberScheduled", nilable: false, read_only: false, description: "The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: [https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)"},
    {name: "number_available", kind: Int32, key: "numberAvailable", nilable: true, read_only: false, description: "The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)"},
    {name: "number_misscheduled", kind: Int32, key: "numberMisscheduled", nilable: false, read_only: false, description: "The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)"},
    {name: "number_ready", kind: Int32, key: "numberReady", nilable: false, read_only: false, description: "numberReady is the number of nodes that should be running the daemon pod and have one or more of the daemon pod running with a Ready Condition."},
    {name: "number_unavailable", kind: Int32, key: "numberUnavailable", nilable: true, read_only: false, description: "The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)"},
    {name: "observed_generation", kind: Int32, key: "observedGeneration", nilable: true, read_only: false, description: "The most recent generation observed by the daemon set controller."},
    {name: "updated_number_scheduled", kind: Int32, key: "updatedNumberScheduled", nilable: true, read_only: false, description: "The total number of nodes that are running updated daemon pod"},

  ]
)
