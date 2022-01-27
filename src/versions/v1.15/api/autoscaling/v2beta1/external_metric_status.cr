# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::ExternalMetricStatus; end

require "../../../apimachinery/apis/meta/v1/label_selector"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::ExternalMetricStatus`.
  module Types::Api::Autoscaling::V2beta1::ExternalMetricStatus
    # currentAverageValue is the current value of metric averaged over autoscaled pods.
    abstract def current_average_value : ::Int32 | ::String?
    # :ditto:
    abstract def current_average_value! : ::Int32 | ::String
    # :ditto:
    abstract def current_average_value? : ::Int32 | ::String?
    # :ditto:
    abstract def current_average_value=(value : ::Int32 | ::String)
    # currentValue is the current value of the metric (as a quantity)
    abstract def current_value : ::Int32 | ::String?
    # :ditto:
    abstract def current_value! : ::Int32 | ::String
    # :ditto:
    abstract def current_value? : ::Int32 | ::String?
    # :ditto:
    abstract def current_value=(value : ::Int32 | ::String)
    # metricName is the name of a metric used for autoscaling in metric system.
    abstract def metric_name : String?
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
    abstract def metric_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
  end

  # ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
  @[::K8S::Properties(
    current_average_value: {key: "currentAverageValue", accessor: "current_average_value", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "currentAverageValue is the current value of metric averaged over autoscaled pods.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    current_value: {key: "currentValue", accessor: "current_value", kind: "::Int32 | ::String", nilable: false, default: nil, read_only: false, description: "currentValue is the current value of the metric (as a quantity)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metric_name: {key: "metricName", accessor: "metric_name", kind: "String", nilable: false, default: nil, read_only: false, description: "metricName is the name of a metric used for autoscaling in metric system.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metric_selector: {key: "metricSelector", accessor: "metric_selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "metricSelector is used to identify a specific time series within a given metric.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2beta1::ExternalMetricStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2beta1::ExternalMetricStatus
    k8s_object_accessor("currentAverageValue", current_average_value : ::Int32 | ::String, true, false, "currentAverageValue is the current value of metric averaged over autoscaled pods.")
    k8s_object_accessor("currentValue", current_value : ::Int32 | ::String, false, false, "currentValue is the current value of the metric (as a quantity)")
    k8s_object_accessor("metricName", metric_name : String, false, false, "metricName is the name of a metric used for autoscaling in metric system.")
    k8s_object_accessor("metricSelector", metric_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, true, false, "metricSelector is used to identify a specific time series within a given metric.")

    def initialize(*, current_average_value : ::Int32 | ::String? = nil, current_value : ::Int32 | ::String? = nil, metric_name : String? = nil, metric_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector? = nil)
      super()
      self.["currentAverageValue"] = current_average_value
      self.["currentValue"] = current_value
      self.["metricName"] = metric_name
      self.["metricSelector"] = metric_selector
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "currentAverageValue", accessor: "current_average_value", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
      {key: "currentValue", accessor: "current_value", nilable: false, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
      {key: "metricName", accessor: "metric_name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "metricSelector", accessor: "metric_selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector},
    ])
  end
end
