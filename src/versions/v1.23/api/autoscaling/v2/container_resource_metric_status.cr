# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./metric_value_status"

::K8S::Kubernetes::Resource.define_object("ContainerResourceMetricStatus",
  namespace: "::K8S::Api::Autoscaling::V2",
  properties: [

    {name: "container", kind: String, key: "container", nilable: false, read_only: false, description: "Container is the name of the container in the pods of the scaling target"},
    {name: "current", kind: ::K8S::Api::Autoscaling::V2::MetricValueStatus, key: "current", nilable: false, read_only: false, description: "current contains the current value for the given metric"},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is the name of the resource in question."},

  ]
)
