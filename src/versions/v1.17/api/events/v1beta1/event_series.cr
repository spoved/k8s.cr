# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("EventSeries",
  namespace: "::K8S::Api::Events::V1beta1",
  properties: [

    {name: "count", kind: Int32, key: "count", nilable: false, read_only: false, description: "Number of occurrences in this series up to the last heartbeat time"},
    {name: "last_observed_time", kind: ::Time, key: "lastObservedTime", nilable: false, read_only: false, description: "Time when last Event from the series was seen before last heartbeat."},
    {name: "state", kind: String, key: "state", nilable: false, read_only: false, description: "Information whether this series is ongoing or finished. Deprecated. Planned removal for 1.18"},

  ]
)
