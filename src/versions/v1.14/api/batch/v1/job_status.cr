# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./job_condition"

::K8S::Kubernetes::Resource.define_object("JobStatus",
  namespace: "::K8S::Api::Batch::V1",
  properties: [

    {name: "active", kind: Int32, key: "active", nilable: true, read_only: false, description: "The number of actively running pods."},
    {name: "completion_time", kind: ::Time, key: "completionTime", nilable: true, read_only: false, description: "Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC."},
    {name: "conditions", kind: ::Array(::K8S::Api::Batch::V1::JobCondition), key: "conditions", nilable: true, read_only: false, description: "The latest available observations of an object's current state. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)"},
    {name: "failed", kind: Int32, key: "failed", nilable: true, read_only: false, description: "The number of pods which reached phase Failed."},
    {name: "start_time", kind: ::Time, key: "startTime", nilable: true, read_only: false, description: "Represents time when the job was acknowledged by the job controller. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC."},
    {name: "succeeded", kind: Int32, key: "succeeded", nilable: true, read_only: false, description: "The number of pods which reached phase Succeeded."},

  ]
)
