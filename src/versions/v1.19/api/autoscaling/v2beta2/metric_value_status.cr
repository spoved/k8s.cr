# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("MetricValueStatus",
  namespace: "::K8S::Api::Autoscaling::V2beta2",
  properties: [

    {name: "average_utilization", kind: Int32, key: "averageUtilization", nilable: true, read_only: false, description: "currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods."},
    {name: "average_value", kind: Union(::Int32 | ::String), key: "averageValue", nilable: true, read_only: false, description: "averageValue is the current value of the average of the metric across all relevant pods (as a quantity)"},
    {name: "value", kind: Union(::Int32 | ::String), key: "value", nilable: true, read_only: false, description: "value is the current value of the metric (as a quantity)."},

  ]
)
