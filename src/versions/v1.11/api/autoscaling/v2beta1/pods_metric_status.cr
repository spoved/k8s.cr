# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::PodsMetricStatus; end

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::PodsMetricStatus`.
  module Types::Api::Autoscaling::V2beta1::PodsMetricStatus
    alias ValueType = ::Int32 | ::String | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity)
    abstract def current_average_value : ::Int32 | ::String
    # :ditto:
    abstract def current_average_value! : ::Int32 | ::String
    # :ditto:
    abstract def current_average_value? : ::Int32 | ::String?
    # :ditto:
    abstract def current_average_value=(value : ::Int32 | ::String)
    # metricName is the name of the metric in question
    abstract def metric_name : String
    # :ditto:
    abstract def metric_name! : String
    # :ditto:
    abstract def metric_name? : String?
    # :ditto:
    abstract def metric_name=(value : String)
  end

  # PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
  @[::K8S::Properties(
    current_average_value: {key: "currentAverageValue", accessor: "current_average_value", kind: "::Int32 | ::String", nilable: false, default: nil, read_only: false, description: "currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metric_name: {key: "metricName", accessor: "metric_name", kind: "String", nilable: false, default: nil, read_only: false, description: "metricName is the name of the metric in question", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2beta1::PodsMetricStatus < ::K8S::Types::Api::Autoscaling::V2beta1::PodsMetricStatus::Instance
    include ::K8S::Types::Api::Autoscaling::V2beta1::PodsMetricStatus
    include ::K8S::Kubernetes::Object

    # currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity)
    def current_average_value : ::Int32 | ::String
      self.["currentAverageValue"].as(::Int32 | ::String)
    end

    # :ditto:
    def current_average_value! : ::Int32 | ::String
      self.["currentAverageValue"].as(::Int32 | ::String).not_nil!
    end

    # :ditto:
    def current_average_value? : ::Int32 | ::String?
      self.["currentAverageValue"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def current_average_value=(value : ::Int32 | ::String)
      self.["currentAverageValue"] = value
    end

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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "currentAverageValue", accessor: "current_average_value", nilable: false, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
        { key: "metricName", accessor: "metric_name", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
