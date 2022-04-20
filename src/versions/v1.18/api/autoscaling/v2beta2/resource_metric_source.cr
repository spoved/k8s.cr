# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./metric_target"

::K8S::Kubernetes::Resource.define_object("ResourceMetricSource",
  namespace: "::K8S::Api::Autoscaling::V2beta2",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "name is the name of the resource in question."},
    {name: "target", kind: ::K8S::Api::Autoscaling::V2beta2::MetricTarget, key: "target", nilable: false, read_only: false, description: "target specifies the target value for the given metric"},

  ]
)
