# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2::MetricStatus; end

require "./container_resource_metric_status"
require "./external_metric_status"
require "./object_metric_status"
require "./pods_metric_status"
require "./resource_metric_status"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2::MetricStatus`.
  module Types::Api::Autoscaling::V2::MetricStatus
    alias ValueType = ::K8S::Api::Autoscaling::V2::ContainerResourceMetricStatus | ::K8S::Api::Autoscaling::V2::ExternalMetricStatus | ::K8S::Api::Autoscaling::V2::ObjectMetricStatus | ::K8S::Api::Autoscaling::V2::PodsMetricStatus | ::K8S::Api::Autoscaling::V2::ResourceMetricStatus | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    abstract def container_resource : ::K8S::Api::Autoscaling::V2::ContainerResourceMetricStatus?
    # :ditto:
    abstract def container_resource! : ::K8S::Api::Autoscaling::V2::ContainerResourceMetricStatus
    # :ditto:
    abstract def container_resource? : ::K8S::Api::Autoscaling::V2::ContainerResourceMetricStatus?
    # :ditto:
    abstract def container_resource=(value : ::K8S::Api::Autoscaling::V2::ContainerResourceMetricStatus?)
    # external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
    abstract def external : ::K8S::Api::Autoscaling::V2::ExternalMetricStatus?
    # :ditto:
    abstract def external! : ::K8S::Api::Autoscaling::V2::ExternalMetricStatus
    # :ditto:
    abstract def external? : ::K8S::Api::Autoscaling::V2::ExternalMetricStatus?
    # :ditto:
    abstract def external=(value : ::K8S::Api::Autoscaling::V2::ExternalMetricStatus?)
    # object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
    abstract def object : ::K8S::Api::Autoscaling::V2::ObjectMetricStatus?
    # :ditto:
    abstract def object! : ::K8S::Api::Autoscaling::V2::ObjectMetricStatus
    # :ditto:
    abstract def object? : ::K8S::Api::Autoscaling::V2::ObjectMetricStatus?
    # :ditto:
    abstract def object=(value : ::K8S::Api::Autoscaling::V2::ObjectMetricStatus?)
    # pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
    abstract def pods : ::K8S::Api::Autoscaling::V2::PodsMetricStatus?
    # :ditto:
    abstract def pods! : ::K8S::Api::Autoscaling::V2::PodsMetricStatus
    # :ditto:
    abstract def pods? : ::K8S::Api::Autoscaling::V2::PodsMetricStatus?
    # :ditto:
    abstract def pods=(value : ::K8S::Api::Autoscaling::V2::PodsMetricStatus?)
    # resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    abstract def resource : ::K8S::Api::Autoscaling::V2::ResourceMetricStatus?
    # :ditto:
    abstract def resource! : ::K8S::Api::Autoscaling::V2::ResourceMetricStatus
    # :ditto:
    abstract def resource? : ::K8S::Api::Autoscaling::V2::ResourceMetricStatus?
    # :ditto:
    abstract def resource=(value : ::K8S::Api::Autoscaling::V2::ResourceMetricStatus?)
    # type is the type of metric source.  It will be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each corresponds to a matching field in the object. Note: "ContainerResource" type is available on when the feature-gate HPAContainerMetrics is enabled
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # MetricStatus describes the last-read state of a single metric.
  @[::K8S::Properties(
    container_resource: {key: "containerResource", accessor: "container_resource", kind: "::K8S::Api::Autoscaling::V2::ContainerResourceMetricStatus", nilable: true, default: nil, read_only: false, description: "container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the \"pods\" source."},
    external: {key: "external", accessor: "external", kind: "::K8S::Api::Autoscaling::V2::ExternalMetricStatus", nilable: true, default: nil, read_only: false, description: "external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster)."},
    object: {key: "object", accessor: "object", kind: "::K8S::Api::Autoscaling::V2::ObjectMetricStatus", nilable: true, default: nil, read_only: false, description: "object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object)."},
    pods: {key: "pods", accessor: "pods", kind: "::K8S::Api::Autoscaling::V2::PodsMetricStatus", nilable: true, default: nil, read_only: false, description: "pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value."},
    resource: {key: "resource", accessor: "resource", kind: "::K8S::Api::Autoscaling::V2::ResourceMetricStatus", nilable: true, default: nil, read_only: false, description: "resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the \"pods\" source."},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "type is the type of metric source.  It will be one of \"ContainerResource\", \"External\", \"Object\", \"Pods\" or \"Resource\", each corresponds to a matching field in the object. Note: \"ContainerResource\" type is available on when the feature-gate HPAContainerMetrics is enabled"},
  )]
  class Api::Autoscaling::V2::MetricStatus < ::K8S::Types::Api::Autoscaling::V2::MetricStatus::Instance
    include ::K8S::Types::Api::Autoscaling::V2::MetricStatus
    include ::K8S::Kubernetes::Object

    # container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    def container_resource : ::K8S::Api::Autoscaling::V2::ContainerResourceMetricStatus?
      self.["containerResource"].as(::K8S::Api::Autoscaling::V2::ContainerResourceMetricStatus?)
    end

    # :ditto:
    def container_resource! : ::K8S::Api::Autoscaling::V2::ContainerResourceMetricStatus
      self.["containerResource"].as(::K8S::Api::Autoscaling::V2::ContainerResourceMetricStatus?).not_nil!
    end

    # :ditto:
    def container_resource? : ::K8S::Api::Autoscaling::V2::ContainerResourceMetricStatus?
      self.["containerResource"]?.as(::K8S::Api::Autoscaling::V2::ContainerResourceMetricStatus?)
    end

    # :ditto:
    def container_resource=(value : ::K8S::Api::Autoscaling::V2::ContainerResourceMetricStatus?)
      self.["containerResource"] = value
    end

    # external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
    def external : ::K8S::Api::Autoscaling::V2::ExternalMetricStatus?
      self.["external"].as(::K8S::Api::Autoscaling::V2::ExternalMetricStatus?)
    end

    # :ditto:
    def external! : ::K8S::Api::Autoscaling::V2::ExternalMetricStatus
      self.["external"].as(::K8S::Api::Autoscaling::V2::ExternalMetricStatus?).not_nil!
    end

    # :ditto:
    def external? : ::K8S::Api::Autoscaling::V2::ExternalMetricStatus?
      self.["external"]?.as(::K8S::Api::Autoscaling::V2::ExternalMetricStatus?)
    end

    # :ditto:
    def external=(value : ::K8S::Api::Autoscaling::V2::ExternalMetricStatus?)
      self.["external"] = value
    end

    # object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
    def object : ::K8S::Api::Autoscaling::V2::ObjectMetricStatus?
      self.["object"].as(::K8S::Api::Autoscaling::V2::ObjectMetricStatus?)
    end

    # :ditto:
    def object! : ::K8S::Api::Autoscaling::V2::ObjectMetricStatus
      self.["object"].as(::K8S::Api::Autoscaling::V2::ObjectMetricStatus?).not_nil!
    end

    # :ditto:
    def object? : ::K8S::Api::Autoscaling::V2::ObjectMetricStatus?
      self.["object"]?.as(::K8S::Api::Autoscaling::V2::ObjectMetricStatus?)
    end

    # :ditto:
    def object=(value : ::K8S::Api::Autoscaling::V2::ObjectMetricStatus?)
      self.["object"] = value
    end

    # pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
    def pods : ::K8S::Api::Autoscaling::V2::PodsMetricStatus?
      self.["pods"].as(::K8S::Api::Autoscaling::V2::PodsMetricStatus?)
    end

    # :ditto:
    def pods! : ::K8S::Api::Autoscaling::V2::PodsMetricStatus
      self.["pods"].as(::K8S::Api::Autoscaling::V2::PodsMetricStatus?).not_nil!
    end

    # :ditto:
    def pods? : ::K8S::Api::Autoscaling::V2::PodsMetricStatus?
      self.["pods"]?.as(::K8S::Api::Autoscaling::V2::PodsMetricStatus?)
    end

    # :ditto:
    def pods=(value : ::K8S::Api::Autoscaling::V2::PodsMetricStatus?)
      self.["pods"] = value
    end

    # resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    def resource : ::K8S::Api::Autoscaling::V2::ResourceMetricStatus?
      self.["resource"].as(::K8S::Api::Autoscaling::V2::ResourceMetricStatus?)
    end

    # :ditto:
    def resource! : ::K8S::Api::Autoscaling::V2::ResourceMetricStatus
      self.["resource"].as(::K8S::Api::Autoscaling::V2::ResourceMetricStatus?).not_nil!
    end

    # :ditto:
    def resource? : ::K8S::Api::Autoscaling::V2::ResourceMetricStatus?
      self.["resource"]?.as(::K8S::Api::Autoscaling::V2::ResourceMetricStatus?)
    end

    # :ditto:
    def resource=(value : ::K8S::Api::Autoscaling::V2::ResourceMetricStatus?)
      self.["resource"] = value
    end

    # type is the type of metric source.  It will be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each corresponds to a matching field in the object. Note: "ContainerResource" type is available on when the feature-gate HPAContainerMetrics is enabled
    def type : String
      self.["type"].as(String)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String)
      self.["type"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "containerResource", accessor: "container_resource", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::ContainerResourceMetricStatus },
        { key: "external", accessor: "external", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::ExternalMetricStatus },
        { key: "object", accessor: "object", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::ObjectMetricStatus },
        { key: "pods", accessor: "pods", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::PodsMetricStatus },
        { key: "resource", accessor: "resource", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::ResourceMetricStatus },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
