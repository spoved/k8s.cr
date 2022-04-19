# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/label_selector"

::K8S::Kubernetes::Resource.define_object("ExternalMetricSource",
  namespace: "::K8S::Api::Autoscaling::V2beta1",
  properties: [

    {name: "metric_name", kind: String, key: "metricName", nilable: false, read_only: false, description: "metricName is the name of the metric in question."},
    {name: "metric_selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "metricSelector", nilable: true, read_only: false, description: "metricSelector is used to identify a specific time series within a given metric."},
    {name: "target_average_value", kind: Union(::Int32 | ::String), key: "targetAverageValue", nilable: true, read_only: false, description: "targetAverageValue is the target per-pod value of global metric (as a quantity). Mutually exclusive with TargetValue."},
    {name: "target_value", kind: Union(::Int32 | ::String), key: "targetValue", nilable: true, read_only: false, description: "targetValue is the target value of the metric (as a quantity). Mutually exclusive with TargetAverageValue."},

  ]
)
