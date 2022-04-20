# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./container_resource_metric_source"
require "./external_metric_source"
require "./object_metric_source"
require "./pods_metric_source"
require "./resource_metric_source"

::K8S::Kubernetes::Resource.define_object("MetricSpec",
  namespace: "::K8S::Api::Autoscaling::V2",
  properties: [

    {name: "container_resource", kind: ::K8S::Api::Autoscaling::V2::ContainerResourceMetricSource, key: "containerResource", nilable: true, read_only: false, description: "containerResource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the \"pods\" source. This is an alpha feature and can be enabled by the HPAContainerMetrics feature flag."},
    {name: "external", kind: ::K8S::Api::Autoscaling::V2::ExternalMetricSource, key: "external", nilable: true, read_only: false, description: "external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster)."},
    {name: "object", kind: ::K8S::Api::Autoscaling::V2::ObjectMetricSource, key: "object", nilable: true, read_only: false, description: "object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object)."},
    {name: "pods", kind: ::K8S::Api::Autoscaling::V2::PodsMetricSource, key: "pods", nilable: true, read_only: false, description: "pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value."},
    {name: "resource", kind: ::K8S::Api::Autoscaling::V2::ResourceMetricSource, key: "resource", nilable: true, read_only: false, description: "resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the \"pods\" source."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "type is the type of metric source.  It should be one of \"ContainerResource\", \"External\", \"Object\", \"Pods\" or \"Resource\", each mapping to a matching field in the object. Note: \"ContainerResource\" type is available on when the feature-gate HPAContainerMetrics is enabled"},

  ]
)
