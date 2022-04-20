# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ResourceMetricSource",
  namespace: "::K8S::Api::Autoscaling::V2beta1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "name is the name of the resource in question."},
    {name: "target_average_utilization", kind: Int32, key: "targetAverageUtilization", nilable: true, read_only: false, description: "targetAverageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods."},
    {name: "target_average_value", kind: Union(::Int32 | ::String), key: "targetAverageValue", nilable: true, read_only: false, description: "targetAverageValue is the target value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the \"pods\" metric source type."},

  ]
)
