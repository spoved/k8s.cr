# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/label_selector"

::K8S::Kubernetes::Resource.define_object("PodsMetricStatus",
  namespace: "::K8S::Api::Autoscaling::V2beta1",
  properties: [

    {name: "current_average_value", kind: Union(::Int32 | ::String), key: "currentAverageValue", nilable: false, read_only: false, description: "currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity)"},
    {name: "metric_name", kind: String, key: "metricName", nilable: false, read_only: false, description: "metricName is the name of the metric in question"},
    {name: "selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "selector", nilable: true, read_only: false, description: "selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the PodsMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics."},

  ]
)
