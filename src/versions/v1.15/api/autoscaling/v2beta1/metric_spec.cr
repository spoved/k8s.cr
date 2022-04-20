# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./external_metric_source"
require "./object_metric_source"
require "./pods_metric_source"
require "./resource_metric_source"

::K8S::Kubernetes::Resource.define_object("MetricSpec",
  namespace: "::K8S::Api::Autoscaling::V2beta1",
  properties: [

    {name: "external", kind: ::K8S::Api::Autoscaling::V2beta1::ExternalMetricSource, key: "external", nilable: true, read_only: false, description: "external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster)."},
    {name: "object", kind: ::K8S::Api::Autoscaling::V2beta1::ObjectMetricSource, key: "object", nilable: true, read_only: false, description: "object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object)."},
    {name: "pods", kind: ::K8S::Api::Autoscaling::V2beta1::PodsMetricSource, key: "pods", nilable: true, read_only: false, description: "pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value."},
    {name: "resource", kind: ::K8S::Api::Autoscaling::V2beta1::ResourceMetricSource, key: "resource", nilable: true, read_only: false, description: "resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the \"pods\" source."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "type is the type of metric source.  It should be one of \"Object\", \"Pods\" or \"Resource\", each mapping to a matching field in the object."},

  ]
)
