# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./metric_value_status"
require "./cross_version_object_reference"
require "./metric_identifier"

::K8S::Kubernetes::Resource.define_object("ObjectMetricStatus",
  namespace: "::K8S::Api::Autoscaling::V2",
  properties: [

    {name: "current", kind: ::K8S::Api::Autoscaling::V2::MetricValueStatus, key: "current", nilable: false, read_only: false, description: "current contains the current value for the given metric"},
    {name: "described_object", kind: ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference, key: "describedObject", nilable: false, read_only: false, description: "DescribedObject specifies the descriptions of a object,such as kind,name apiVersion"},
    {name: "metric", kind: ::K8S::Api::Autoscaling::V2::MetricIdentifier, key: "metric", nilable: false, read_only: false, description: "metric identifies the target metric by name and selector"},

  ]
)
