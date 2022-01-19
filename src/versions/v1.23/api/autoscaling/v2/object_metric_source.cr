# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2::ObjectMetricSource; end

require "./cross_version_object_reference"
require "./metric_identifier"
require "./metric_target"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2::ObjectMetricSource`.
  module Types::Api::Autoscaling::V2::ObjectMetricSource
    alias ValueType = ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference | ::K8S::Api::Autoscaling::V2::MetricIdentifier | ::K8S::Api::Autoscaling::V2::MetricTarget | Nil
    alias Instance = ::K8S::Object(ValueType)

    # describedObject specifies the descriptions of a object,such as kind,name apiVersion
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
    # target specifies the target value for the given metric
    abstract def target : ::K8S::Api::Autoscaling::V2::MetricTarget
    # :ditto:
    abstract def target! : ::K8S::Api::Autoscaling::V2::MetricTarget
    # :ditto:
    abstract def target? : ::K8S::Api::Autoscaling::V2::MetricTarget?
    # :ditto:
    abstract def target=(value : ::K8S::Api::Autoscaling::V2::MetricTarget)
  end

  # ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  @[::K8S::Properties(
    described_object: {key: "describedObject", accessor: "described_object", kind: "::K8S::Api::Autoscaling::V2::CrossVersionObjectReference", nilable: false, default: nil, read_only: false, description: "describedObject specifies the descriptions of a object,such as kind,name apiVersion"},
    metric: {key: "metric", accessor: "metric", kind: "::K8S::Api::Autoscaling::V2::MetricIdentifier", nilable: false, default: nil, read_only: false, description: "metric identifies the target metric by name and selector"},
    target: {key: "target", accessor: "target", kind: "::K8S::Api::Autoscaling::V2::MetricTarget", nilable: false, default: nil, read_only: false, description: "target specifies the target value for the given metric"},
  )]
  class Api::Autoscaling::V2::ObjectMetricSource < ::K8S::Types::Api::Autoscaling::V2::ObjectMetricSource::Instance
    include ::K8S::Types::Api::Autoscaling::V2::ObjectMetricSource
    include ::K8S::Kubernetes::Object

    # describedObject specifies the descriptions of a object,such as kind,name apiVersion
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

    # target specifies the target value for the given metric
    def target : ::K8S::Api::Autoscaling::V2::MetricTarget
      self.["target"].as(::K8S::Api::Autoscaling::V2::MetricTarget)
    end

    # :ditto:
    def target! : ::K8S::Api::Autoscaling::V2::MetricTarget
      self.["target"].as(::K8S::Api::Autoscaling::V2::MetricTarget).not_nil!
    end

    # :ditto:
    def target? : ::K8S::Api::Autoscaling::V2::MetricTarget?
      self.["target"]?.as(::K8S::Api::Autoscaling::V2::MetricTarget?)
    end

    # :ditto:
    def target=(value : ::K8S::Api::Autoscaling::V2::MetricTarget)
      self.["target"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "describedObject", accessor: "described_object", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference },
        { key: "metric", accessor: "metric", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::MetricIdentifier },
        { key: "target", accessor: "target", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::MetricTarget },
      ])
end
  end
end
