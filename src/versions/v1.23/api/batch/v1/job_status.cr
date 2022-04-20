# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./job_condition"
require "./uncounted_terminated_pods"

::K8S::Kubernetes::Resource.define_object("JobStatus",
  namespace: "::K8S::Api::Batch::V1",
  properties: [

    {name: "active", kind: Int32, key: "active", nilable: true, read_only: false, description: "The number of pending and running pods."},
    {name: "completed_indexes", kind: String, key: "completedIndexes", nilable: true, read_only: false, description: "CompletedIndexes holds the completed indexes when .spec.completionMode = \"Indexed\" in a text format. The indexes are represented as decimal integers separated by commas. The numbers are listed in increasing order. Three or more consecutive numbers are compressed and represented by the first and last element of the series, separated by a hyphen. For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as \"1,3-5,7\"."},
    {name: "completion_time", kind: ::Time, key: "completionTime", nilable: true, read_only: false, description: "Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. The completion time is only set when the job finishes successfully."},
    {name: "conditions", kind: ::Array(::K8S::Api::Batch::V1::JobCondition), key: "conditions", nilable: true, read_only: false, description: "The latest available observations of an object's current state. When a Job fails, one of the conditions will have type \"Failed\" and status true. When a Job is suspended, one of the conditions will have type \"Suspended\" and status true; when the Job is resumed, the status of this condition will become false. When a Job is completed, one of the conditions will have type \"Complete\" and status true. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)"},
    {name: "failed", kind: Int32, key: "failed", nilable: true, read_only: false, description: "The number of pods which reached phase Failed."},
    {name: "ready", kind: Int32, key: "ready", nilable: true, read_only: false, description: "The number of pods which have a Ready condition.\n\nThis field is alpha-level. The job controller populates the field when the feature gate JobReadyPods is enabled (disabled by default)."},
    {name: "start_time", kind: ::Time, key: "startTime", nilable: true, read_only: false, description: "Represents time when the job controller started processing a job. When a Job is created in the suspended state, this field is not set until the first time it is resumed. This field is reset every time a Job is resumed from suspension. It is represented in RFC3339 form and is in UTC."},
    {name: "succeeded", kind: Int32, key: "succeeded", nilable: true, read_only: false, description: "The number of pods which reached phase Succeeded."},
    {name: "uncounted_terminated_pods", kind: ::K8S::Api::Batch::V1::UncountedTerminatedPods, key: "uncountedTerminatedPods", nilable: true, read_only: false, description: "UncountedTerminatedPods holds the UIDs of Pods that have terminated but the job controller hasn't yet accounted for in the status counters.\n\nThe job controller creates pods with a finalizer. When a pod terminates (succeeded or failed), the controller does three steps to account for it in the job status: (1) Add the pod UID to the arrays in this field. (2) Remove the pod finalizer. (3) Remove the pod UID from the arrays while increasing the corresponding\n    counter.\n\nThis field is beta-level. The job controller only makes use of this field when the feature gate JobTrackingWithFinalizers is enabled (enabled by default). Old jobs might not be tracked using this field, in which case the field remains null."},

  ]
)
