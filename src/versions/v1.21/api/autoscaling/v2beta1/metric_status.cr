# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::MetricStatus; end

require "./container_resource_metric_status"
require "./external_metric_status"
require "./object_metric_status"
require "./pods_metric_status"
require "./resource_metric_status"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::MetricStatus`.
  module Types::Api::Autoscaling::V2beta1::MetricStatus
    # container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    abstract def container_resource : ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricStatus?
    # :ditto:
    abstract def container_resource! : ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricStatus
    # :ditto:
    abstract def container_resource? : ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricStatus?
    # :ditto:
    abstract def container_resource=(value : ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricStatus)
    # external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
    abstract def external : ::K8S::Api::Autoscaling::V2beta1::ExternalMetricStatus?
    # :ditto:
    abstract def external! : ::K8S::Api::Autoscaling::V2beta1::ExternalMetricStatus
    # :ditto:
    abstract def external? : ::K8S::Api::Autoscaling::V2beta1::ExternalMetricStatus?
    # :ditto:
    abstract def external=(value : ::K8S::Api::Autoscaling::V2beta1::ExternalMetricStatus)
    # object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
    abstract def object : ::K8S::Api::Autoscaling::V2beta1::ObjectMetricStatus?
    # :ditto:
    abstract def object! : ::K8S::Api::Autoscaling::V2beta1::ObjectMetricStatus
    # :ditto:
    abstract def object? : ::K8S::Api::Autoscaling::V2beta1::ObjectMetricStatus?
    # :ditto:
    abstract def object=(value : ::K8S::Api::Autoscaling::V2beta1::ObjectMetricStatus)
    # pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
    abstract def pods : ::K8S::Api::Autoscaling::V2beta1::PodsMetricStatus?
    # :ditto:
    abstract def pods! : ::K8S::Api::Autoscaling::V2beta1::PodsMetricStatus
    # :ditto:
    abstract def pods? : ::K8S::Api::Autoscaling::V2beta1::PodsMetricStatus?
    # :ditto:
    abstract def pods=(value : ::K8S::Api::Autoscaling::V2beta1::PodsMetricStatus)
    # resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    abstract def resource : ::K8S::Api::Autoscaling::V2beta1::ResourceMetricStatus?
    # :ditto:
    abstract def resource! : ::K8S::Api::Autoscaling::V2beta1::ResourceMetricStatus
    # :ditto:
    abstract def resource? : ::K8S::Api::Autoscaling::V2beta1::ResourceMetricStatus?
    # :ditto:
    abstract def resource=(value : ::K8S::Api::Autoscaling::V2beta1::ResourceMetricStatus)
    # type is the type of metric source.  It will be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each corresponds to a matching field in the object. Note: "ContainerResource" type is available on when the feature-gate HPAContainerMetrics is enabled
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # MetricStatus describes the last-read state of a single metric.
  @[::K8S::Properties(
    container_resource: {key: "containerResource", accessor: "container_resource", kind: "::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricStatus", nilable: true, default: nil, read_only: false, description: "container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the \"pods\" source.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    external: {key: "external", accessor: "external", kind: "::K8S::Api::Autoscaling::V2beta1::ExternalMetricStatus", nilable: true, default: nil, read_only: false, description: "external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    object: {key: "object", accessor: "object", kind: "::K8S::Api::Autoscaling::V2beta1::ObjectMetricStatus", nilable: true, default: nil, read_only: false, description: "object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pods: {key: "pods", accessor: "pods", kind: "::K8S::Api::Autoscaling::V2beta1::PodsMetricStatus", nilable: true, default: nil, read_only: false, description: "pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resource: {key: "resource", accessor: "resource", kind: "::K8S::Api::Autoscaling::V2beta1::ResourceMetricStatus", nilable: true, default: nil, read_only: false, description: "resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the \"pods\" source.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "type is the type of metric source.  It will be one of \"ContainerResource\", \"External\", \"Object\", \"Pods\" or \"Resource\", each corresponds to a matching field in the object. Note: \"ContainerResource\" type is available on when the feature-gate HPAContainerMetrics is enabled", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2beta1::MetricStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2beta1::MetricStatus
    k8s_object_accessor("containerResource", container_resource : ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricStatus, true, false, "container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the \"pods\" source.")
    k8s_object_accessor("external", external : ::K8S::Api::Autoscaling::V2beta1::ExternalMetricStatus, true, false, "external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).")
    k8s_object_accessor("object", object : ::K8S::Api::Autoscaling::V2beta1::ObjectMetricStatus, true, false, "object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).")
    k8s_object_accessor("pods", pods : ::K8S::Api::Autoscaling::V2beta1::PodsMetricStatus, true, false, "pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.")
    k8s_object_accessor("resource", resource : ::K8S::Api::Autoscaling::V2beta1::ResourceMetricStatus, true, false, "resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the \"pods\" source.")
    k8s_object_accessor("type", type : String, false, false, "type is the type of metric source.  It will be one of \"ContainerResource\", \"External\", \"Object\", \"Pods\" or \"Resource\", each corresponds to a matching field in the object. Note: \"ContainerResource\" type is available on when the feature-gate HPAContainerMetrics is enabled")

    def initialize(*, container_resource : ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricStatus? = nil, external : ::K8S::Api::Autoscaling::V2beta1::ExternalMetricStatus? = nil, object : ::K8S::Api::Autoscaling::V2beta1::ObjectMetricStatus? = nil, pods : ::K8S::Api::Autoscaling::V2beta1::PodsMetricStatus? = nil, resource : ::K8S::Api::Autoscaling::V2beta1::ResourceMetricStatus? = nil, type : String? = nil)
      super()
      self.["containerResource"] = container_resource
      self.["external"] = external
      self.["object"] = object
      self.["pods"] = pods
      self.["resource"] = resource
      self.["type"] = type
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "containerResource", accessor: "container_resource", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricStatus},
      {key: "external", accessor: "external", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::ExternalMetricStatus},
      {key: "object", accessor: "object", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::ObjectMetricStatus},
      {key: "pods", accessor: "pods", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::PodsMetricStatus},
      {key: "resource", accessor: "resource", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::ResourceMetricStatus},
      {key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
