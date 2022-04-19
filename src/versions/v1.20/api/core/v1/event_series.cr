# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("EventSeries",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "count", kind: Int32, key: "count", nilable: true, read_only: false, description: "Number of occurrences in this series up to the last heartbeat time"},
    {name: "last_observed_time", kind: ::Time, key: "lastObservedTime", nilable: true, read_only: false, description: "Time of the last occurrence observed"},

  ]
)
