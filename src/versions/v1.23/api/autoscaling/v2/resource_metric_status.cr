# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./metric_value_status"

::K8S::Kubernetes::Resource.define_object("ResourceMetricStatus",
  namespace: "::K8S::Api::Autoscaling::V2",
  properties: [

    {name: "current", kind: ::K8S::Api::Autoscaling::V2::MetricValueStatus, key: "current", nilable: false, read_only: false, description: "current contains the current value for the given metric"},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is the name of the resource in question."},

  ]
)
