# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::Api::Autoscaling::V2beta1::MetricSpec; end

require "./container_resource_metric_source"
require "./external_metric_source"
require "./object_metric_source"
require "./pods_metric_source"
require "./resource_metric_source"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::MetricSpec`.
  #
  # NOTE: Module auto-generated by `AnyHash.define_new`.
  module Types::Api::Autoscaling::V2beta1::MetricSpec
    alias Key = String
    alias ValueType = ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricSource | ::K8S::Api::Autoscaling::V2beta1::ExternalMetricSource | ::K8S::Api::Autoscaling::V2beta1::ObjectMetricSource | ::K8S::Api::Autoscaling::V2beta1::PodsMetricSource | ::K8S::Api::Autoscaling::V2beta1::ResourceMetricSource | String | Nil
    # alias Value = ValueType | Array(Value) | Set(Value) | Hash(Key, Value)
    alias Instance = ::AnyHash(Key, ValueType)

    # container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source. This is an alpha feature and can be enabled by the HPAContainerMetrics feature flag.
    abstract def container_resource : ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricSource?
    # :ditto:
    abstract def container_resource! : ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricSource
    # :ditto:
    abstract def container_resource? : ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricSource?
    # :ditto:
    abstract def container_resource=(value : ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricSource?)
    # external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
    abstract def external : ::K8S::Api::Autoscaling::V2beta1::ExternalMetricSource?
    # :ditto:
    abstract def external! : ::K8S::Api::Autoscaling::V2beta1::ExternalMetricSource
    # :ditto:
    abstract def external? : ::K8S::Api::Autoscaling::V2beta1::ExternalMetricSource?
    # :ditto:
    abstract def external=(value : ::K8S::Api::Autoscaling::V2beta1::ExternalMetricSource?)
    # object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
    abstract def object : ::K8S::Api::Autoscaling::V2beta1::ObjectMetricSource?
    # :ditto:
    abstract def object! : ::K8S::Api::Autoscaling::V2beta1::ObjectMetricSource
    # :ditto:
    abstract def object? : ::K8S::Api::Autoscaling::V2beta1::ObjectMetricSource?
    # :ditto:
    abstract def object=(value : ::K8S::Api::Autoscaling::V2beta1::ObjectMetricSource?)
    # pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
    abstract def pods : ::K8S::Api::Autoscaling::V2beta1::PodsMetricSource?
    # :ditto:
    abstract def pods! : ::K8S::Api::Autoscaling::V2beta1::PodsMetricSource
    # :ditto:
    abstract def pods? : ::K8S::Api::Autoscaling::V2beta1::PodsMetricSource?
    # :ditto:
    abstract def pods=(value : ::K8S::Api::Autoscaling::V2beta1::PodsMetricSource?)
    # resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    abstract def resource : ::K8S::Api::Autoscaling::V2beta1::ResourceMetricSource?
    # :ditto:
    abstract def resource! : ::K8S::Api::Autoscaling::V2beta1::ResourceMetricSource
    # :ditto:
    abstract def resource? : ::K8S::Api::Autoscaling::V2beta1::ResourceMetricSource?
    # :ditto:
    abstract def resource=(value : ::K8S::Api::Autoscaling::V2beta1::ResourceMetricSource?)
    # type is the type of metric source.  It should be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each mapping to a matching field in the object. Note: "ContainerResource" type is available on when the feature-gate HPAContainerMetrics is enabled
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # MetricSpec specifies how to scale based on a single metric (only `type` and one other matching field should be set at once).
  @[::K8S::Properties(
    container_resource: {key: "containerResource", accessor: "container_resource", kind: "::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricSource", nilable: true, default: nil, read_only: false, description: "container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the \"pods\" source. This is an alpha feature and can be enabled by the HPAContainerMetrics feature flag."},
    external: {key: "external", accessor: "external", kind: "::K8S::Api::Autoscaling::V2beta1::ExternalMetricSource", nilable: true, default: nil, read_only: false, description: "external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster)."},
    object: {key: "object", accessor: "object", kind: "::K8S::Api::Autoscaling::V2beta1::ObjectMetricSource", nilable: true, default: nil, read_only: false, description: "object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object)."},
    pods: {key: "pods", accessor: "pods", kind: "::K8S::Api::Autoscaling::V2beta1::PodsMetricSource", nilable: true, default: nil, read_only: false, description: "pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value."},
    resource: {key: "resource", accessor: "resource", kind: "::K8S::Api::Autoscaling::V2beta1::ResourceMetricSource", nilable: true, default: nil, read_only: false, description: "resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the \"pods\" source."},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "type is the type of metric source.  It should be one of \"ContainerResource\", \"External\", \"Object\", \"Pods\" or \"Resource\", each mapping to a matching field in the object. Note: \"ContainerResource\" type is available on when the feature-gate HPAContainerMetrics is enabled"},
  )]
  class Api::Autoscaling::V2beta1::MetricSpec < ::K8S::Types::Api::Autoscaling::V2beta1::MetricSpec::Instance
    include ::K8S::Types::Api::Autoscaling::V2beta1::MetricSpec
    include ::K8S::Kubernetes::Object

    # container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source. This is an alpha feature and can be enabled by the HPAContainerMetrics feature flag.
    def container_resource : ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricSource?
      self.["containerResource"].as(::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricSource?)
    end

    # :ditto:
    def container_resource! : ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricSource
      self.["containerResource"].as(::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricSource?).not_nil!
    end

    # :ditto:
    def container_resource? : ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricSource?
      self.["containerResource"]?.as(::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricSource?)
    end

    # :ditto:
    def container_resource=(value : ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricSource?)
      self.["containerResource"] = value
    end

    # external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
    def external : ::K8S::Api::Autoscaling::V2beta1::ExternalMetricSource?
      self.["external"].as(::K8S::Api::Autoscaling::V2beta1::ExternalMetricSource?)
    end

    # :ditto:
    def external! : ::K8S::Api::Autoscaling::V2beta1::ExternalMetricSource
      self.["external"].as(::K8S::Api::Autoscaling::V2beta1::ExternalMetricSource?).not_nil!
    end

    # :ditto:
    def external? : ::K8S::Api::Autoscaling::V2beta1::ExternalMetricSource?
      self.["external"]?.as(::K8S::Api::Autoscaling::V2beta1::ExternalMetricSource?)
    end

    # :ditto:
    def external=(value : ::K8S::Api::Autoscaling::V2beta1::ExternalMetricSource?)
      self.["external"] = value
    end

    # object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
    def object : ::K8S::Api::Autoscaling::V2beta1::ObjectMetricSource?
      self.["object"].as(::K8S::Api::Autoscaling::V2beta1::ObjectMetricSource?)
    end

    # :ditto:
    def object! : ::K8S::Api::Autoscaling::V2beta1::ObjectMetricSource
      self.["object"].as(::K8S::Api::Autoscaling::V2beta1::ObjectMetricSource?).not_nil!
    end

    # :ditto:
    def object? : ::K8S::Api::Autoscaling::V2beta1::ObjectMetricSource?
      self.["object"]?.as(::K8S::Api::Autoscaling::V2beta1::ObjectMetricSource?)
    end

    # :ditto:
    def object=(value : ::K8S::Api::Autoscaling::V2beta1::ObjectMetricSource?)
      self.["object"] = value
    end

    # pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
    def pods : ::K8S::Api::Autoscaling::V2beta1::PodsMetricSource?
      self.["pods"].as(::K8S::Api::Autoscaling::V2beta1::PodsMetricSource?)
    end

    # :ditto:
    def pods! : ::K8S::Api::Autoscaling::V2beta1::PodsMetricSource
      self.["pods"].as(::K8S::Api::Autoscaling::V2beta1::PodsMetricSource?).not_nil!
    end

    # :ditto:
    def pods? : ::K8S::Api::Autoscaling::V2beta1::PodsMetricSource?
      self.["pods"]?.as(::K8S::Api::Autoscaling::V2beta1::PodsMetricSource?)
    end

    # :ditto:
    def pods=(value : ::K8S::Api::Autoscaling::V2beta1::PodsMetricSource?)
      self.["pods"] = value
    end

    # resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    def resource : ::K8S::Api::Autoscaling::V2beta1::ResourceMetricSource?
      self.["resource"].as(::K8S::Api::Autoscaling::V2beta1::ResourceMetricSource?)
    end

    # :ditto:
    def resource! : ::K8S::Api::Autoscaling::V2beta1::ResourceMetricSource
      self.["resource"].as(::K8S::Api::Autoscaling::V2beta1::ResourceMetricSource?).not_nil!
    end

    # :ditto:
    def resource? : ::K8S::Api::Autoscaling::V2beta1::ResourceMetricSource?
      self.["resource"]?.as(::K8S::Api::Autoscaling::V2beta1::ResourceMetricSource?)
    end

    # :ditto:
    def resource=(value : ::K8S::Api::Autoscaling::V2beta1::ResourceMetricSource?)
      self.["resource"] = value
    end

    # type is the type of metric source.  It should be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each mapping to a matching field in the object. Note: "ContainerResource" type is available on when the feature-gate HPAContainerMetrics is enabled
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
        { key: "containerResource", accessor: "container_resource", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::ContainerResourceMetricSource },
        { key: "external", accessor: "external", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::ExternalMetricSource },
        { key: "object", accessor: "object", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::ObjectMetricSource },
        { key: "pods", accessor: "pods", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::PodsMetricSource },
        { key: "resource", accessor: "resource", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::ResourceMetricSource },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
