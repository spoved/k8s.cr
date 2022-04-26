# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./job_spec"
require "./job_status"

::K8S::Kubernetes::Resource.define_resource("batch", "v1", "Job",
  namespace: "::K8S::Api::Batch::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Batch::V1::JobSpec, key: "spec", nilable: true, read_only: false, description: "Specification of the desired behavior of a job. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},
    {name: "status", kind: ::K8S::Api::Batch::V1::JobStatus, key: "status", nilable: true, read_only: false, description: "Current status of a job. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "Job represents the configuration of a single job.",
  versions: [{group: "batch", kind: "Job", version: "v1"}],
)
