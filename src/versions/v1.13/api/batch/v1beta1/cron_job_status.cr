# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../core/v1/object_reference"

::K8S::Kubernetes::Resource.define_object("CronJobStatus",
  namespace: "::K8S::Api::Batch::V1beta1",
  properties: [

    {name: "active", kind: ::Array(::K8S::Api::Core::V1::ObjectReference), key: "active", nilable: true, read_only: false, description: "A list of pointers to currently running jobs."},
    {name: "last_schedule_time", kind: ::Time, key: "lastScheduleTime", nilable: true, read_only: false, description: "Information when was the last time the job was successfully scheduled."},

  ]
)
