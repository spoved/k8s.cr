# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./metric_target"

::K8S::Kubernetes::Resource.define_object("ContainerResourceMetricSource",
  namespace: "::K8S::Api::Autoscaling::V2",
  properties: [

    {name: "container", kind: String, key: "container", nilable: false, read_only: false, description: "container is the name of the container in the pods of the scaling target"},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "name is the name of the resource in question."},
    {name: "target", kind: ::K8S::Api::Autoscaling::V2::MetricTarget, key: "target", nilable: false, read_only: false, description: "target specifies the target value for the given metric"},

  ]
)
