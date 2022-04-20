# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./cross_version_object_reference"
require "./metric_identifier"
require "./metric_target"

::K8S::Kubernetes::Resource.define_object("ObjectMetricSource",
  namespace: "::K8S::Api::Autoscaling::V2",
  properties: [

    {name: "described_object", kind: ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference, key: "describedObject", nilable: false, read_only: false, description: "describedObject specifies the descriptions of a object,such as kind,name apiVersion"},
    {name: "metric", kind: ::K8S::Api::Autoscaling::V2::MetricIdentifier, key: "metric", nilable: false, read_only: false, description: "metric identifies the target metric by name and selector"},
    {name: "target", kind: ::K8S::Api::Autoscaling::V2::MetricTarget, key: "target", nilable: false, read_only: false, description: "target specifies the target value for the given metric"},

  ]
)
