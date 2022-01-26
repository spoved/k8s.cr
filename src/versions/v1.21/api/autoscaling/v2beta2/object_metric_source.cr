# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta2::ObjectMetricSource; end

require "./cross_version_object_reference"
require "./metric_identifier"
require "./metric_target"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta2::ObjectMetricSource`.
  module Types::Api::Autoscaling::V2beta2::ObjectMetricSource
    #
    abstract def described_object : ::K8S::Api::Autoscaling::V2beta2::CrossVersionObjectReference
    # :ditto:
    abstract def described_object! : ::K8S::Api::Autoscaling::V2beta2::CrossVersionObjectReference
    # :ditto:
    abstract def described_object? : ::K8S::Api::Autoscaling::V2beta2::CrossVersionObjectReference?
    # :ditto:
    abstract def described_object=(value : ::K8S::Api::Autoscaling::V2beta2::CrossVersionObjectReference)
    # metric identifies the target metric by name and selector
    abstract def metric : ::K8S::Api::Autoscaling::V2beta2::MetricIdentifier
    # :ditto:
    abstract def metric! : ::K8S::Api::Autoscaling::V2beta2::MetricIdentifier
    # :ditto:
    abstract def metric? : ::K8S::Api::Autoscaling::V2beta2::MetricIdentifier?
    # :ditto:
    abstract def metric=(value : ::K8S::Api::Autoscaling::V2beta2::MetricIdentifier)
    # target specifies the target value for the given metric
    abstract def target : ::K8S::Api::Autoscaling::V2beta2::MetricTarget
    # :ditto:
    abstract def target! : ::K8S::Api::Autoscaling::V2beta2::MetricTarget
    # :ditto:
    abstract def target? : ::K8S::Api::Autoscaling::V2beta2::MetricTarget?
    # :ditto:
    abstract def target=(value : ::K8S::Api::Autoscaling::V2beta2::MetricTarget)
  end

  # ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  @[::K8S::Properties(
    described_object: {key: "describedObject", accessor: "described_object", kind: "::K8S::Api::Autoscaling::V2beta2::CrossVersionObjectReference", nilable: false, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metric: {key: "metric", accessor: "metric", kind: "::K8S::Api::Autoscaling::V2beta2::MetricIdentifier", nilable: false, default: nil, read_only: false, description: "metric identifies the target metric by name and selector", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target: {key: "target", accessor: "target", kind: "::K8S::Api::Autoscaling::V2beta2::MetricTarget", nilable: false, default: nil, read_only: false, description: "target specifies the target value for the given metric", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2beta2::ObjectMetricSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2beta2::ObjectMetricSource

    #
    def described_object : ::K8S::Api::Autoscaling::V2beta2::CrossVersionObjectReference
      self.["describedObject"].as(::K8S::Api::Autoscaling::V2beta2::CrossVersionObjectReference)
    end

    # :ditto:
    def described_object! : ::K8S::Api::Autoscaling::V2beta2::CrossVersionObjectReference
      self.["describedObject"].as(::K8S::Api::Autoscaling::V2beta2::CrossVersionObjectReference).not_nil!
    end

    # :ditto:
    def described_object? : ::K8S::Api::Autoscaling::V2beta2::CrossVersionObjectReference?
      self.["describedObject"]?.as(::K8S::Api::Autoscaling::V2beta2::CrossVersionObjectReference?)
    end

    # :ditto:
    def described_object=(value : ::K8S::Api::Autoscaling::V2beta2::CrossVersionObjectReference)
      self.["describedObject"] = value
    end

    # metric identifies the target metric by name and selector
    def metric : ::K8S::Api::Autoscaling::V2beta2::MetricIdentifier
      self.["metric"].as(::K8S::Api::Autoscaling::V2beta2::MetricIdentifier)
    end

    # :ditto:
    def metric! : ::K8S::Api::Autoscaling::V2beta2::MetricIdentifier
      self.["metric"].as(::K8S::Api::Autoscaling::V2beta2::MetricIdentifier).not_nil!
    end

    # :ditto:
    def metric? : ::K8S::Api::Autoscaling::V2beta2::MetricIdentifier?
      self.["metric"]?.as(::K8S::Api::Autoscaling::V2beta2::MetricIdentifier?)
    end

    # :ditto:
    def metric=(value : ::K8S::Api::Autoscaling::V2beta2::MetricIdentifier)
      self.["metric"] = value
    end

    # target specifies the target value for the given metric
    def target : ::K8S::Api::Autoscaling::V2beta2::MetricTarget
      self.["target"].as(::K8S::Api::Autoscaling::V2beta2::MetricTarget)
    end

    # :ditto:
    def target! : ::K8S::Api::Autoscaling::V2beta2::MetricTarget
      self.["target"].as(::K8S::Api::Autoscaling::V2beta2::MetricTarget).not_nil!
    end

    # :ditto:
    def target? : ::K8S::Api::Autoscaling::V2beta2::MetricTarget?
      self.["target"]?.as(::K8S::Api::Autoscaling::V2beta2::MetricTarget?)
    end

    # :ditto:
    def target=(value : ::K8S::Api::Autoscaling::V2beta2::MetricTarget)
      self.["target"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "describedObject", accessor: "described_object", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta2::CrossVersionObjectReference },
        { key: "metric", accessor: "metric", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta2::MetricIdentifier },
        { key: "target", accessor: "target", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta2::MetricTarget },
      ])
end
  end
end
