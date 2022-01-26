# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1::DaemonSetStatus; end

require "./daemon_set_condition"

module K8S
  # Namespace holding the types for `Api::Apps::V1::DaemonSetStatus`.
  module Types::Api::Apps::V1::DaemonSetStatus
    # Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
    abstract def collision_count : Int32?
    # :ditto:
    abstract def collision_count! : Int32
    # :ditto:
    abstract def collision_count? : Int32?
    # :ditto:
    abstract def collision_count=(value : Int32?)
    # Represents the latest available observations of a DaemonSet's current state.
    abstract def conditions : ::Array(::K8S::Api::Apps::V1::DaemonSetCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Apps::V1::DaemonSetCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Apps::V1::DaemonSetCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Apps::V1::DaemonSetCondition)?)
    # The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/))
    abstract def current_number_scheduled : Int32
    # :ditto:
    abstract def current_number_scheduled! : Int32
    # :ditto:
    abstract def current_number_scheduled? : Int32?
    # :ditto:
    abstract def current_number_scheduled=(value : Int32)
    # The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/))
    abstract def desired_number_scheduled : Int32
    # :ditto:
    abstract def desired_number_scheduled! : Int32
    # :ditto:
    abstract def desired_number_scheduled? : Int32?
    # :ditto:
    abstract def desired_number_scheduled=(value : Int32)
    # The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
    abstract def number_available : Int32?
    # :ditto:
    abstract def number_available! : Int32
    # :ditto:
    abstract def number_available? : Int32?
    # :ditto:
    abstract def number_available=(value : Int32?)
    # The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/))
    abstract def number_misscheduled : Int32
    # :ditto:
    abstract def number_misscheduled! : Int32
    # :ditto:
    abstract def number_misscheduled? : Int32?
    # :ditto:
    abstract def number_misscheduled=(value : Int32)
    # The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.
    abstract def number_ready : Int32
    # :ditto:
    abstract def number_ready! : Int32
    # :ditto:
    abstract def number_ready? : Int32?
    # :ditto:
    abstract def number_ready=(value : Int32)
    # The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
    abstract def number_unavailable : Int32?
    # :ditto:
    abstract def number_unavailable! : Int32
    # :ditto:
    abstract def number_unavailable? : Int32?
    # :ditto:
    abstract def number_unavailable=(value : Int32?)
    # The most recent generation observed by the daemon set controller.
    abstract def observed_generation : Int32?
    # :ditto:
    abstract def observed_generation! : Int32
    # :ditto:
    abstract def observed_generation? : Int32?
    # :ditto:
    abstract def observed_generation=(value : Int32?)
    # The total number of nodes that are running updated daemon pod
    abstract def updated_number_scheduled : Int32?
    # :ditto:
    abstract def updated_number_scheduled! : Int32
    # :ditto:
    abstract def updated_number_scheduled? : Int32?
    # :ditto:
    abstract def updated_number_scheduled=(value : Int32?)
  end

  # DaemonSetStatus represents the current status of a daemon set.
  @[::K8S::Properties(
    collision_count: {key: "collisionCount", accessor: "collision_count", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Apps::V1::DaemonSetCondition)", nilable: true, default: nil, read_only: false, description: "Represents the latest available observations of a DaemonSet's current state.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    current_number_scheduled: {key: "currentNumberScheduled", accessor: "current_number_scheduled", kind: "Int32", nilable: false, default: nil, read_only: false, description: "The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    desired_number_scheduled: {key: "desiredNumberScheduled", accessor: "desired_number_scheduled", kind: "Int32", nilable: false, default: nil, read_only: false, description: "The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: [https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    number_available: {key: "numberAvailable", accessor: "number_available", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    number_misscheduled: {key: "numberMisscheduled", accessor: "number_misscheduled", kind: "Int32", nilable: false, default: nil, read_only: false, description: "The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    number_ready: {key: "numberReady", accessor: "number_ready", kind: "Int32", nilable: false, default: nil, read_only: false, description: "The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    number_unavailable: {key: "numberUnavailable", accessor: "number_unavailable", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    observed_generation: {key: "observedGeneration", accessor: "observed_generation", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The most recent generation observed by the daemon set controller.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    updated_number_scheduled: {key: "updatedNumberScheduled", accessor: "updated_number_scheduled", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The total number of nodes that are running updated daemon pod", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1::DaemonSetStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Apps::V1::DaemonSetStatus

    # Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
    def collision_count : Int32?
      self.["collisionCount"].as(Int32?)
    end

    # :ditto:
    def collision_count! : Int32
      self.["collisionCount"].as(Int32?).not_nil!
    end

    # :ditto:
    def collision_count? : Int32?
      self.["collisionCount"]?.as(Int32?)
    end

    # :ditto:
    def collision_count=(value : Int32?)
      self.["collisionCount"] = value
    end

    # Represents the latest available observations of a DaemonSet's current state.
    def conditions : ::Array(::K8S::Api::Apps::V1::DaemonSetCondition)?
      self.["conditions"].as(::Array(::K8S::Api::Apps::V1::DaemonSetCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Api::Apps::V1::DaemonSetCondition)
      self.["conditions"].as(::Array(::K8S::Api::Apps::V1::DaemonSetCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Api::Apps::V1::DaemonSetCondition)?
      self.["conditions"]?.as(::Array(::K8S::Api::Apps::V1::DaemonSetCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Api::Apps::V1::DaemonSetCondition)?)
      self.["conditions"] = value
    end

    # The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/))
    def current_number_scheduled : Int32
      self.["currentNumberScheduled"].as(Int32)
    end

    # :ditto:
    def current_number_scheduled! : Int32
      self.["currentNumberScheduled"].as(Int32).not_nil!
    end

    # :ditto:
    def current_number_scheduled? : Int32?
      self.["currentNumberScheduled"]?.as(Int32?)
    end

    # :ditto:
    def current_number_scheduled=(value : Int32)
      self.["currentNumberScheduled"] = value
    end

    # The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/))
    def desired_number_scheduled : Int32
      self.["desiredNumberScheduled"].as(Int32)
    end

    # :ditto:
    def desired_number_scheduled! : Int32
      self.["desiredNumberScheduled"].as(Int32).not_nil!
    end

    # :ditto:
    def desired_number_scheduled? : Int32?
      self.["desiredNumberScheduled"]?.as(Int32?)
    end

    # :ditto:
    def desired_number_scheduled=(value : Int32)
      self.["desiredNumberScheduled"] = value
    end

    # The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
    def number_available : Int32?
      self.["numberAvailable"].as(Int32?)
    end

    # :ditto:
    def number_available! : Int32
      self.["numberAvailable"].as(Int32?).not_nil!
    end

    # :ditto:
    def number_available? : Int32?
      self.["numberAvailable"]?.as(Int32?)
    end

    # :ditto:
    def number_available=(value : Int32?)
      self.["numberAvailable"] = value
    end

    # The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/))
    def number_misscheduled : Int32
      self.["numberMisscheduled"].as(Int32)
    end

    # :ditto:
    def number_misscheduled! : Int32
      self.["numberMisscheduled"].as(Int32).not_nil!
    end

    # :ditto:
    def number_misscheduled? : Int32?
      self.["numberMisscheduled"]?.as(Int32?)
    end

    # :ditto:
    def number_misscheduled=(value : Int32)
      self.["numberMisscheduled"] = value
    end

    # The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready.
    def number_ready : Int32
      self.["numberReady"].as(Int32)
    end

    # :ditto:
    def number_ready! : Int32
      self.["numberReady"].as(Int32).not_nil!
    end

    # :ditto:
    def number_ready? : Int32?
      self.["numberReady"]?.as(Int32?)
    end

    # :ditto:
    def number_ready=(value : Int32)
      self.["numberReady"] = value
    end

    # The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
    def number_unavailable : Int32?
      self.["numberUnavailable"].as(Int32?)
    end

    # :ditto:
    def number_unavailable! : Int32
      self.["numberUnavailable"].as(Int32?).not_nil!
    end

    # :ditto:
    def number_unavailable? : Int32?
      self.["numberUnavailable"]?.as(Int32?)
    end

    # :ditto:
    def number_unavailable=(value : Int32?)
      self.["numberUnavailable"] = value
    end

    # The most recent generation observed by the daemon set controller.
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

    # The total number of nodes that are running updated daemon pod
    def updated_number_scheduled : Int32?
      self.["updatedNumberScheduled"].as(Int32?)
    end

    # :ditto:
    def updated_number_scheduled! : Int32
      self.["updatedNumberScheduled"].as(Int32?).not_nil!
    end

    # :ditto:
    def updated_number_scheduled? : Int32?
      self.["updatedNumberScheduled"]?.as(Int32?)
    end

    # :ditto:
    def updated_number_scheduled=(value : Int32?)
      self.["updatedNumberScheduled"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "collisionCount", accessor: "collision_count", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Apps::V1::DaemonSetCondition) },
        { key: "currentNumberScheduled", accessor: "current_number_scheduled", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "desiredNumberScheduled", accessor: "desired_number_scheduled", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "numberAvailable", accessor: "number_available", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "numberMisscheduled", accessor: "number_misscheduled", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "numberReady", accessor: "number_ready", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "numberUnavailable", accessor: "number_unavailable", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "observedGeneration", accessor: "observed_generation", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "updatedNumberScheduled", accessor: "updated_number_scheduled", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
