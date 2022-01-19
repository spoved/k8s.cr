# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::PodsMetricSource; end

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::PodsMetricSource`.
  module Types::Api::Autoscaling::V2beta1::PodsMetricSource
    alias ValueType = String | ::Int32 | ::String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # metricName is the name of the metric in question
    abstract def metric_name : String
    # :ditto:
    abstract def metric_name! : String
    # :ditto:
    abstract def metric_name? : String?
    # :ditto:
    abstract def metric_name=(value : String)
    # targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity)
    abstract def target_average_value : ::Int32 | ::String
    # :ditto:
    abstract def target_average_value! : ::Int32 | ::String
    # :ditto:
    abstract def target_average_value? : ::Int32 | ::String?
    # :ditto:
    abstract def target_average_value=(value : ::Int32 | ::String)
  end

  # PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
  @[::K8S::Properties(
    metric_name: {key: "metricName", accessor: "metric_name", kind: "String", nilable: false, default: nil, read_only: false, description: "metricName is the name of the metric in question"},
    target_average_value: {key: "targetAverageValue", accessor: "target_average_value", kind: "::Int32 | ::String", nilable: false, default: nil, read_only: false, description: "targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity)"},
  )]
  class Api::Autoscaling::V2beta1::PodsMetricSource < ::K8S::Types::Api::Autoscaling::V2beta1::PodsMetricSource::Instance
    include ::K8S::Types::Api::Autoscaling::V2beta1::PodsMetricSource
    include ::K8S::Kubernetes::Object

    # metricName is the name of the metric in question
    def metric_name : String
      self.["metricName"].as(String)
    end

    # :ditto:
    def metric_name! : String
      self.["metricName"].as(String).not_nil!
    end

    # :ditto:
    def metric_name? : String?
      self.["metricName"]?.as(String?)
    end

    # :ditto:
    def metric_name=(value : String)
      self.["metricName"] = value
    end

    # targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity)
    def target_average_value : ::Int32 | ::String
      self.["targetAverageValue"].as(::Int32 | ::String)
    end

    # :ditto:
    def target_average_value! : ::Int32 | ::String
      self.["targetAverageValue"].as(::Int32 | ::String).not_nil!
    end

    # :ditto:
    def target_average_value? : ::Int32 | ::String?
      self.["targetAverageValue"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def target_average_value=(value : ::Int32 | ::String)
      self.["targetAverageValue"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "metricName", accessor: "metric_name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "targetAverageValue", accessor: "target_average_value", nilable: false, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
      ])
end
  end
end
