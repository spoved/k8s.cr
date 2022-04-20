# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ResourceMetricStatus",
  namespace: "::K8S::Api::Autoscaling::V2beta1",
  properties: [

    {name: "current_average_utilization", kind: Int32, key: "currentAverageUtilization", nilable: true, read_only: false, description: "currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification."},
    {name: "current_average_value", kind: Union(::Int32 | ::String), key: "currentAverageValue", nilable: false, read_only: false, description: "currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the \"pods\" metric source type. It will always be set, regardless of the corresponding metric specification."},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "name is the name of the resource in question."},

  ]
)
