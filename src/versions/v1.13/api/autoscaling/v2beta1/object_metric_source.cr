# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/label_selector"
require "./cross_version_object_reference"

::K8S::Kubernetes::Resource.define_object("ObjectMetricSource",
  namespace: "::K8S::Api::Autoscaling::V2beta1",
  properties: [

    {name: "average_value", kind: Union(::Int32 | ::String), key: "averageValue", nilable: true, read_only: false, description: "averageValue is the target value of the average of the metric across all relevant pods (as a quantity)"},
    {name: "metric_name", kind: String, key: "metricName", nilable: false, read_only: false, description: "metricName is the name of the metric in question."},
    {name: "selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "selector", nilable: true, read_only: false, description: "selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics."},
    {name: "target", kind: ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference, key: "target", nilable: false, read_only: false, description: "target is the described Kubernetes object."},
    {name: "target_value", kind: Union(::Int32 | ::String), key: "targetValue", nilable: false, read_only: false, description: "targetValue is the target value of the metric (as a quantity)."},

  ]
)
