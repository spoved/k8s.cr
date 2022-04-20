# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/label_selector"

::K8S::Kubernetes::Resource.define_object("ExternalMetricStatus",
  namespace: "::K8S::Api::Autoscaling::V2beta1",
  properties: [

    {name: "current_average_value", kind: Union(::Int32 | ::String), key: "currentAverageValue", nilable: true, read_only: false, description: "currentAverageValue is the current value of metric averaged over autoscaled pods."},
    {name: "current_value", kind: Union(::Int32 | ::String), key: "currentValue", nilable: false, read_only: false, description: "currentValue is the current value of the metric (as a quantity)"},
    {name: "metric_name", kind: String, key: "metricName", nilable: false, read_only: false, description: "metricName is the name of a metric used for autoscaling in metric system."},
    {name: "metric_selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "metricSelector", nilable: true, read_only: false, description: "metricSelector is used to identify a specific time series within a given metric."},

  ]
)
