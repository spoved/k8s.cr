# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::ExternalMetricSource; end

require "../../../apimachinery/apis/meta/v1/label_selector"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::ExternalMetricSource`.
  module Types::Api::Autoscaling::V2beta1::ExternalMetricSource
    # metricName is the name of the metric in question.
    abstract def metric_name : String
    # :ditto:
    abstract def metric_name! : String
    # :ditto:
    abstract def metric_name? : String?
    # :ditto:
    abstract def metric_name=(value : String)
    # metricSelector is used to identify a specific time series within a given metric.
    abstract def metric_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def metric_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def metric_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def metric_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    # targetAverageValue is the target per-pod value of global metric (as a quantity). Mutually exclusive with TargetValue.
    abstract def target_average_value : ::Int32 | ::String?
    # :ditto:
    abstract def target_average_value! : ::Int32 | ::String
    # :ditto:
    abstract def target_average_value? : ::Int32 | ::String?
    # :ditto:
    abstract def target_average_value=(value : ::Int32 | ::String?)
    # targetValue is the target value of the metric (as a quantity). Mutually exclusive with TargetAverageValue.
    abstract def target_value : ::Int32 | ::String?
    # :ditto:
    abstract def target_value! : ::Int32 | ::String
    # :ditto:
    abstract def target_value? : ::Int32 | ::String?
    # :ditto:
    abstract def target_value=(value : ::Int32 | ::String?)
  end

  # ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster). Exactly one "target" type should be set.
  @[::K8S::Properties(
    metric_name: {key: "metricName", accessor: "metric_name", kind: "String", nilable: false, default: nil, read_only: false, description: "metricName is the name of the metric in question.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metric_selector: {key: "metricSelector", accessor: "metric_selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "metricSelector is used to identify a specific time series within a given metric.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target_average_value: {key: "targetAverageValue", accessor: "target_average_value", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "targetAverageValue is the target per-pod value of global metric (as a quantity). Mutually exclusive with TargetValue.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target_value: {key: "targetValue", accessor: "target_value", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "targetValue is the target value of the metric (as a quantity). Mutually exclusive with TargetAverageValue.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2beta1::ExternalMetricSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2beta1::ExternalMetricSource

    # metricName is the name of the metric in question.
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

    # metricSelector is used to identify a specific time series within a given metric.
    def metric_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["metricSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def metric_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["metricSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?).not_nil!
    end

    # :ditto:
    def metric_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["metricSelector"]?.as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def metric_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
      self.["metricSelector"] = value
    end

    # targetAverageValue is the target per-pod value of global metric (as a quantity). Mutually exclusive with TargetValue.
    def target_average_value : ::Int32 | ::String?
      self.["targetAverageValue"].as(::Int32 | ::String?)
    end

    # :ditto:
    def target_average_value! : ::Int32 | ::String
      self.["targetAverageValue"].as(::Int32 | ::String?).not_nil!
    end

    # :ditto:
    def target_average_value? : ::Int32 | ::String?
      self.["targetAverageValue"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def target_average_value=(value : ::Int32 | ::String?)
      self.["targetAverageValue"] = value
    end

    # targetValue is the target value of the metric (as a quantity). Mutually exclusive with TargetAverageValue.
    def target_value : ::Int32 | ::String?
      self.["targetValue"].as(::Int32 | ::String?)
    end

    # :ditto:
    def target_value! : ::Int32 | ::String
      self.["targetValue"].as(::Int32 | ::String?).not_nil!
    end

    # :ditto:
    def target_value? : ::Int32 | ::String?
      self.["targetValue"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def target_value=(value : ::Int32 | ::String?)
      self.["targetValue"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "metricName", accessor: "metric_name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "metricSelector", accessor: "metric_selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
        { key: "targetAverageValue", accessor: "target_average_value", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
        { key: "targetValue", accessor: "target_value", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
      ])
end
  end
end
