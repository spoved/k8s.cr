# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PodsMetricStatus",
  namespace: "::K8S::Api::Autoscaling::V2beta1",
  properties: [

    {name: "current_average_value", kind: Union(::Int32 | ::String), key: "currentAverageValue", nilable: false, read_only: false, description: "currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity)"},
    {name: "metric_name", kind: String, key: "metricName", nilable: false, read_only: false, description: "metricName is the name of the metric in question"},

  ]
)
