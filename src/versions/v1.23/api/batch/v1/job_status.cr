# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Batch::V1::JobStatus; end

require "./job_condition"
require "./uncounted_terminated_pods"

module K8S
  # Namespace holding the types for `Api::Batch::V1::JobStatus`.
  module Types::Api::Batch::V1::JobStatus
    # The number of pending and running pods.
    abstract def active : Int32?
    # :ditto:
    abstract def active! : Int32
    # :ditto:
    abstract def active? : Int32?
    # :ditto:
    abstract def active=(value : Int32)
    # CompletedIndexes holds the completed indexes when .spec.completionMode = "Indexed" in a text format. The indexes are represented as decimal integers separated by commas. The numbers are listed in increasing order. Three or more consecutive numbers are compressed and represented by the first and last element of the series, separated by a hyphen. For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as "1,3-5,7".
    abstract def completed_indexes : String?
    # :ditto:
    abstract def completed_indexes! : String
    # :ditto:
    abstract def completed_indexes? : String?
    # :ditto:
    abstract def completed_indexes=(value : String)
    # Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. The completion time is only set when the job finishes successfully.
    abstract def completion_time : ::Time?
    # :ditto:
    abstract def completion_time! : ::Time
    # :ditto:
    abstract def completion_time? : ::Time?
    # :ditto:
    abstract def completion_time=(value : ::Time)
    # The latest available observations of an object's current state. When a Job fails, one of the conditions will have type "Failed" and status true. When a Job is suspended, one of the conditions will have type "Suspended" and status true; when the Job is resumed, the status of this condition will become false. When a Job is completed, one of the conditions will have type "Complete" and status true. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/))
    abstract def conditions : ::Array(::K8S::Api::Batch::V1::JobCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Batch::V1::JobCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Batch::V1::JobCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Batch::V1::JobCondition))
    # The number of pods which reached phase Failed.
    abstract def failed : Int32?
    # :ditto:
    abstract def failed! : Int32
    # :ditto:
    abstract def failed? : Int32?
    # :ditto:
    abstract def failed=(value : Int32)
    # The number of pods which have a Ready condition.
    #
    # This field is alpha-level. The job controller populates the field when the feature gate JobReadyPods is enabled (disabled by default).
    abstract def ready : Int32?
    # :ditto:
    abstract def ready! : Int32
    # :ditto:
    abstract def ready? : Int32?
    # :ditto:
    abstract def ready=(value : Int32)
    # Represents time when the job controller started processing a job. When a Job is created in the suspended state, this field is not set until the first time it is resumed. This field is reset every time a Job is resumed from suspension. It is represented in RFC3339 form and is in UTC.
    abstract def start_time : ::Time?
    # :ditto:
    abstract def start_time! : ::Time
    # :ditto:
    abstract def start_time? : ::Time?
    # :ditto:
    abstract def start_time=(value : ::Time)
    # The number of pods which reached phase Succeeded.
    abstract def succeeded : Int32?
    # :ditto:
    abstract def succeeded! : Int32
    # :ditto:
    abstract def succeeded? : Int32?
    # :ditto:
    abstract def succeeded=(value : Int32)
    # UncountedTerminatedPods holds the UIDs of Pods that have terminated but the job controller hasn't yet accounted for in the status counters.
    #
    # The job controller creates pods with a finalizer. When a pod terminates (succeeded or failed), the controller does three steps to account for it in the job status: (1) Add the pod UID to the arrays in this field. (2) Remove the pod finalizer. (3) Remove the pod UID from the arrays while increasing the corresponding
    #     counter.
    #
    # This field is beta-level. The job controller only makes use of this field when the feature gate JobTrackingWithFinalizers is enabled (enabled by default). Old jobs might not be tracked using this field, in which case the field remains null.
    abstract def uncounted_terminated_pods : ::K8S::Api::Batch::V1::UncountedTerminatedPods?
    # :ditto:
    abstract def uncounted_terminated_pods! : ::K8S::Api::Batch::V1::UncountedTerminatedPods
    # :ditto:
    abstract def uncounted_terminated_pods? : ::K8S::Api::Batch::V1::UncountedTerminatedPods?
    # :ditto:
    abstract def uncounted_terminated_pods=(value : ::K8S::Api::Batch::V1::UncountedTerminatedPods)
  end

  # JobStatus represents the current state of a Job.
  @[::K8S::Properties(
    active: {key: "active", accessor: "active", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of pending and running pods.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    completed_indexes: {key: "completedIndexes", accessor: "completed_indexes", kind: "String", nilable: true, default: nil, read_only: false, description: "CompletedIndexes holds the completed indexes when .spec.completionMode = \"Indexed\" in a text format. The indexes are represented as decimal integers separated by commas. The numbers are listed in increasing order. Three or more consecutive numbers are compressed and represented by the first and last element of the series, separated by a hyphen. For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as \"1,3-5,7\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    completion_time: {key: "completionTime", accessor: "completion_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. The completion time is only set when the job finishes successfully.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Batch::V1::JobCondition)", nilable: true, default: nil, read_only: false, description: "The latest available observations of an object's current state. When a Job fails, one of the conditions will have type \"Failed\" and status true. When a Job is suspended, one of the conditions will have type \"Suspended\" and status true; when the Job is resumed, the status of this condition will become false. When a Job is completed, one of the conditions will have type \"Complete\" and status true. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    failed: {key: "failed", accessor: "failed", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of pods which reached phase Failed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ready: {key: "ready", accessor: "ready", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of pods which have a Ready condition.\n\nThis field is alpha-level. The job controller populates the field when the feature gate JobReadyPods is enabled (disabled by default).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    start_time: {key: "startTime", accessor: "start_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Represents time when the job controller started processing a job. When a Job is created in the suspended state, this field is not set until the first time it is resumed. This field is reset every time a Job is resumed from suspension. It is represented in RFC3339 form and is in UTC.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    succeeded: {key: "succeeded", accessor: "succeeded", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of pods which reached phase Succeeded.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    uncounted_terminated_pods: {key: "uncountedTerminatedPods", accessor: "uncounted_terminated_pods", kind: "::K8S::Api::Batch::V1::UncountedTerminatedPods", nilable: true, default: nil, read_only: false, description: "UncountedTerminatedPods holds the UIDs of Pods that have terminated but the job controller hasn't yet accounted for in the status counters.\n\nThe job controller creates pods with a finalizer. When a pod terminates (succeeded or failed), the controller does three steps to account for it in the job status: (1) Add the pod UID to the arrays in this field. (2) Remove the pod finalizer. (3) Remove the pod UID from the arrays while increasing the corresponding\n    counter.\n\nThis field is beta-level. The job controller only makes use of this field when the feature gate JobTrackingWithFinalizers is enabled (enabled by default). Old jobs might not be tracked using this field, in which case the field remains null.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Batch::V1::JobStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Batch::V1::JobStatus
    k8s_object_accessor("active", active : Int32, true, false, "The number of pending and running pods.")
    k8s_object_accessor("completedIndexes", completed_indexes : String, true, false, "CompletedIndexes holds the completed indexes when .spec.completionMode = \"Indexed\" in a text format. The indexes are represented as decimal integers separated by commas. The numbers are listed in increasing order. Three or more consecutive numbers are compressed and represented by the first and last element of the series, separated by a hyphen. For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as \"1,3-5,7\".")
    k8s_object_accessor("completionTime", completion_time : ::Time, true, false, "Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. The completion time is only set when the job finishes successfully.")
    k8s_object_accessor("conditions", conditions : ::Array(::K8S::Api::Batch::V1::JobCondition), true, false, "The latest available observations of an object's current state. When a Job fails, one of the conditions will have type \"Failed\" and status true. When a Job is suspended, one of the conditions will have type \"Suspended\" and status true; when the Job is resumed, the status of this condition will become false. When a Job is completed, one of the conditions will have type \"Complete\" and status true. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)")
    k8s_object_accessor("failed", failed : Int32, true, false, "The number of pods which reached phase Failed.")
    k8s_object_accessor("ready", ready : Int32, true, false, "The number of pods which have a Ready condition.\n\nThis field is alpha-level. The job controller populates the field when the feature gate JobReadyPods is enabled (disabled by default).")
    k8s_object_accessor("startTime", start_time : ::Time, true, false, "Represents time when the job controller started processing a job. When a Job is created in the suspended state, this field is not set until the first time it is resumed. This field is reset every time a Job is resumed from suspension. It is represented in RFC3339 form and is in UTC.")
    k8s_object_accessor("succeeded", succeeded : Int32, true, false, "The number of pods which reached phase Succeeded.")
    k8s_object_accessor("uncountedTerminatedPods", uncounted_terminated_pods : ::K8S::Api::Batch::V1::UncountedTerminatedPods, true, false, "UncountedTerminatedPods holds the UIDs of Pods that have terminated but the job controller hasn't yet accounted for in the status counters.\n\nThe job controller creates pods with a finalizer. When a pod terminates (succeeded or failed), the controller does three steps to account for it in the job status: (1) Add the pod UID to the arrays in this field. (2) Remove the pod finalizer. (3) Remove the pod UID from the arrays while increasing the corresponding\n    counter.\n\nThis field is beta-level. The job controller only makes use of this field when the feature gate JobTrackingWithFinalizers is enabled (enabled by default). Old jobs might not be tracked using this field, in which case the field remains null.")

    def initialize(*, active : Int32? = nil, completed_indexes : String? = nil, completion_time : ::Time? = nil, conditions : ::Array(::K8S::Api::Batch::V1::JobCondition)? = nil, failed : Int32? = nil, ready : Int32? = nil, start_time : ::Time? = nil, succeeded : Int32? = nil, uncounted_terminated_pods : ::K8S::Api::Batch::V1::UncountedTerminatedPods? = nil)
      super()
      self.["active"] = active
      self.["completedIndexes"] = completed_indexes
      self.["completionTime"] = completion_time
      self.["conditions"] = conditions
      self.["failed"] = failed
      self.["ready"] = ready
      self.["startTime"] = start_time
      self.["succeeded"] = succeeded
      self.["uncountedTerminatedPods"] = uncounted_terminated_pods
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "active", accessor: "active", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "completedIndexes", accessor: "completed_indexes", nilable: true, read_only: false, default: nil, kind: String},
      {key: "completionTime", accessor: "completion_time", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Batch::V1::JobCondition)},
      {key: "failed", accessor: "failed", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "ready", accessor: "ready", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "startTime", accessor: "start_time", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "succeeded", accessor: "succeeded", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "uncountedTerminatedPods", accessor: "uncounted_terminated_pods", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Batch::V1::UncountedTerminatedPods},
    ])
  end
end
