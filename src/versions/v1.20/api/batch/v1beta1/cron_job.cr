# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./cron_job_spec"
require "./cron_job_status"

::K8S::Kubernetes::Resource.define_resource("batch", "v1beta1", "CronJob",
  namespace: "::K8S::Api::Batch::V1beta1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Batch::V1beta1::CronJobSpec, key: "spec", nilable: true, read_only: false, description: "Specification of the desired behavior of a cron job, including the schedule. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},
    {name: "status", kind: ::K8S::Api::Batch::V1beta1::CronJobStatus, key: "status", nilable: true, read_only: false, description: "Current status of a cron job. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "CronJob represents the configuration of a single cron job.",
)
