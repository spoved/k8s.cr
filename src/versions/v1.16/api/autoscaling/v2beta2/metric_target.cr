# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("MetricTarget",
  namespace: "::K8S::Api::Autoscaling::V2beta2",
  properties: [

    {name: "average_utilization", kind: Int32, key: "averageUtilization", nilable: true, read_only: false, description: "averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type"},
    {name: "average_value", kind: Union(::Int32 | ::String), key: "averageValue", nilable: true, read_only: false, description: "averageValue is the target value of the average of the metric across all relevant pods (as a quantity)"},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "type represents whether the metric type is Utilization, Value, or AverageValue"},
    {name: "value", kind: Union(::Int32 | ::String), key: "value", nilable: true, read_only: false, description: "value is the target value of the metric (as a quantity)."},

  ]
)
