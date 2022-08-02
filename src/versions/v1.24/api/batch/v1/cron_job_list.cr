# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./cron_job"

::K8S::Kubernetes::Resource.define_resource("batch", "v1", "CronJobList",
  namespace: "::K8S::Api::Batch::V1",
  list: true,
  list_kind: K8S::Api::Batch::V1::CronJob,
  description: "CronJobList is a collection of cron jobs.",
)
