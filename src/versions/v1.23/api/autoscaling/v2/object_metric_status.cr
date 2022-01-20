# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2::ObjectMetricStatus; end

require "./metric_value_status"
require "./cross_version_object_reference"
require "./metric_identifier"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2::ObjectMetricStatus`.
  module Types::Api::Autoscaling::V2::ObjectMetricStatus
    alias ValueType = ::K8S::Api::Autoscaling::V2::MetricValueStatus | ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference | ::K8S::Api::Autoscaling::V2::MetricIdentifier | Nil
    alias Instance = ::K8S::Object(ValueType)

    # current contains the current value for the given metric
    abstract def current : ::K8S::Api::Autoscaling::V2::MetricValueStatus
    # :ditto:
    abstract def current! : ::K8S::Api::Autoscaling::V2::MetricValueStatus
    # :ditto:
    abstract def current? : ::K8S::Api::Autoscaling::V2::MetricValueStatus?
    # :ditto:
    abstract def current=(value : ::K8S::Api::Autoscaling::V2::MetricValueStatus)
    # DescribedObject specifies the descriptions of a object,such as kind,name apiVersion
    abstract def described_object : ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference
    # :ditto:
    abstract def described_object! : ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference
    # :ditto:
    abstract def described_object? : ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference?
    # :ditto:
    abstract def described_object=(value : ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference)
    # metric identifies the target metric by name and selector
    abstract def metric : ::K8S::Api::Autoscaling::V2::MetricIdentifier
    # :ditto:
    abstract def metric! : ::K8S::Api::Autoscaling::V2::MetricIdentifier
    # :ditto:
    abstract def metric? : ::K8S::Api::Autoscaling::V2::MetricIdentifier?
    # :ditto:
    abstract def metric=(value : ::K8S::Api::Autoscaling::V2::MetricIdentifier)
  end

  # ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  @[::K8S::Properties(
    current: {key: "current", accessor: "current", kind: "::K8S::Api::Autoscaling::V2::MetricValueStatus", nilable: false, default: nil, read_only: false, description: "current contains the current value for the given metric", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    described_object: {key: "describedObject", accessor: "described_object", kind: "::K8S::Api::Autoscaling::V2::CrossVersionObjectReference", nilable: false, default: nil, read_only: false, description: "DescribedObject specifies the descriptions of a object,such as kind,name apiVersion", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metric: {key: "metric", accessor: "metric", kind: "::K8S::Api::Autoscaling::V2::MetricIdentifier", nilable: false, default: nil, read_only: false, description: "metric identifies the target metric by name and selector", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2::ObjectMetricStatus < ::K8S::Types::Api::Autoscaling::V2::ObjectMetricStatus::Instance
    include ::K8S::Types::Api::Autoscaling::V2::ObjectMetricStatus
    include ::K8S::Kubernetes::Object

    # current contains the current value for the given metric
    def current : ::K8S::Api::Autoscaling::V2::MetricValueStatus
      self.["current"].as(::K8S::Api::Autoscaling::V2::MetricValueStatus)
    end

    # :ditto:
    def current! : ::K8S::Api::Autoscaling::V2::MetricValueStatus
      self.["current"].as(::K8S::Api::Autoscaling::V2::MetricValueStatus).not_nil!
    end

    # :ditto:
    def current? : ::K8S::Api::Autoscaling::V2::MetricValueStatus?
      self.["current"]?.as(::K8S::Api::Autoscaling::V2::MetricValueStatus?)
    end

    # :ditto:
    def current=(value : ::K8S::Api::Autoscaling::V2::MetricValueStatus)
      self.["current"] = value
    end

    # DescribedObject specifies the descriptions of a object,such as kind,name apiVersion
    def described_object : ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference
      self.["describedObject"].as(::K8S::Api::Autoscaling::V2::CrossVersionObjectReference)
    end

    # :ditto:
    def described_object! : ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference
      self.["describedObject"].as(::K8S::Api::Autoscaling::V2::CrossVersionObjectReference).not_nil!
    end

    # :ditto:
    def described_object? : ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference?
      self.["describedObject"]?.as(::K8S::Api::Autoscaling::V2::CrossVersionObjectReference?)
    end

    # :ditto:
    def described_object=(value : ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference)
      self.["describedObject"] = value
    end

    # metric identifies the target metric by name and selector
    def metric : ::K8S::Api::Autoscaling::V2::MetricIdentifier
      self.["metric"].as(::K8S::Api::Autoscaling::V2::MetricIdentifier)
    end

    # :ditto:
    def metric! : ::K8S::Api::Autoscaling::V2::MetricIdentifier
      self.["metric"].as(::K8S::Api::Autoscaling::V2::MetricIdentifier).not_nil!
    end

    # :ditto:
    def metric? : ::K8S::Api::Autoscaling::V2::MetricIdentifier?
      self.["metric"]?.as(::K8S::Api::Autoscaling::V2::MetricIdentifier?)
    end

    # :ditto:
    def metric=(value : ::K8S::Api::Autoscaling::V2::MetricIdentifier)
      self.["metric"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "current", accessor: "current", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::MetricValueStatus },
        { key: "describedObject", accessor: "described_object", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference },
        { key: "metric", accessor: "metric", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::MetricIdentifier },
      ])
end
  end
end
