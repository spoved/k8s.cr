# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./metric_identifier"
require "./metric_target"

::K8S::Kubernetes::Resource.define_object("ExternalMetricSource",
  namespace: "::K8S::Api::Autoscaling::V2beta2",
  properties: [

    {name: "metric", kind: ::K8S::Api::Autoscaling::V2beta2::MetricIdentifier, key: "metric", nilable: false, read_only: false, description: "metric identifies the target metric by name and selector"},
    {name: "target", kind: ::K8S::Api::Autoscaling::V2beta2::MetricTarget, key: "target", nilable: false, read_only: false, description: "target specifies the target value for the given metric"},

  ]
)
