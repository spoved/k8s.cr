# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("EventSeries",
  namespace: "::K8S::Api::Events::V1",
  properties: [

    {name: "count", kind: Int32, key: "count", nilable: false, read_only: false, description: "count is the number of occurrences in this series up to the last heartbeat time."},
    {name: "last_observed_time", kind: ::Time, key: "lastObservedTime", nilable: false, read_only: false, description: "lastObservedTime is the time when last Event from the series was seen before last heartbeat."},

  ]
)
