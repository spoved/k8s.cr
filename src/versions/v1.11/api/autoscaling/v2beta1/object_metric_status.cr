# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./cross_version_object_reference"

::K8S::Kubernetes::Resource.define_object("ObjectMetricStatus",
  namespace: "::K8S::Api::Autoscaling::V2beta1",
  properties: [

    {name: "current_value", kind: Union(::Int32 | ::String), key: "currentValue", nilable: false, read_only: false, description: "currentValue is the current value of the metric (as a quantity)."},
    {name: "metric_name", kind: String, key: "metricName", nilable: false, read_only: false, description: "metricName is the name of the metric in question."},
    {name: "target", kind: ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference, key: "target", nilable: false, read_only: false, description: "target is the described Kubernetes object."},

  ]
)
