# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2::PodsMetricSource; end

require "./metric_identifier"
require "./metric_target"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2::PodsMetricSource`.
  module Types::Api::Autoscaling::V2::PodsMetricSource
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

  # PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
  @[::K8S::Properties(
    metric: {key: "metric", accessor: "metric", kind: "::K8S::Api::Autoscaling::V2::MetricIdentifier", nilable: false, default: nil, read_only: false, description: "metric identifies the target metric by name and selector", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target: {key: "target", accessor: "target", kind: "::K8S::Api::Autoscaling::V2::MetricTarget", nilable: false, default: nil, read_only: false, description: "target specifies the target value for the given metric", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2::PodsMetricSource < ::K8S::Types::Api::Autoscaling::V2::PodsMetricSource::Instance
    include ::K8S::Types::Api::Autoscaling::V2::PodsMetricSource
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
