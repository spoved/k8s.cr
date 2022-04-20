# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./metric_value_status"
require "./metric_identifier"

::K8S::Kubernetes::Resource.define_object("PodsMetricStatus",
  namespace: "::K8S::Api::Autoscaling::V2",
  properties: [

    {name: "current", kind: ::K8S::Api::Autoscaling::V2::MetricValueStatus, key: "current", nilable: false, read_only: false, description: "current contains the current value for the given metric"},
    {name: "metric", kind: ::K8S::Api::Autoscaling::V2::MetricIdentifier, key: "metric", nilable: false, read_only: false, description: "metric identifies the target metric by name and selector"},

  ]
)
