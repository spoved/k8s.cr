# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2::ExternalMetricSource; end

require "./metric_identifier"
require "./metric_target"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2::ExternalMetricSource`.
  module Types::Api::Autoscaling::V2::ExternalMetricSource
    alias ValueType = ::K8S::Api::Autoscaling::V2::MetricIdentifier | ::K8S::Api::Autoscaling::V2::MetricTarget | Nil
    alias Instance = ::K8S::Object(ValueType)

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

  # ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  @[::K8S::Properties(
    metric: {key: "metric", accessor: "metric", kind: "::K8S::Api::Autoscaling::V2::MetricIdentifier", nilable: false, default: nil, read_only: false, description: "metric identifies the target metric by name and selector"},
    target: {key: "target", accessor: "target", kind: "::K8S::Api::Autoscaling::V2::MetricTarget", nilable: false, default: nil, read_only: false, description: "target specifies the target value for the given metric"},
  )]
  class Api::Autoscaling::V2::ExternalMetricSource < ::K8S::Types::Api::Autoscaling::V2::ExternalMetricSource::Instance
    include ::K8S::Types::Api::Autoscaling::V2::ExternalMetricSource
    include ::K8S::Kubernetes::Object

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
        { key: "metric", accessor: "metric", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::MetricIdentifier },
        { key: "target", accessor: "target", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::MetricTarget },
      ])
end
  end
end
