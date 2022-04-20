# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./cross_version_object_reference"

::K8S::Kubernetes::Resource.define_object("ObjectMetricSource",
  namespace: "::K8S::Api::Autoscaling::V2beta1",
  properties: [

    {name: "metric_name", kind: String, key: "metricName", nilable: false, read_only: false, description: "metricName is the name of the metric in question."},
    {name: "target", kind: ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference, key: "target", nilable: false, read_only: false, description: "target is the described Kubernetes object."},
    {name: "target_value", kind: Union(::Int32 | ::String), key: "targetValue", nilable: false, read_only: false, description: "targetValue is the target value of the metric (as a quantity)."},

  ]
)
