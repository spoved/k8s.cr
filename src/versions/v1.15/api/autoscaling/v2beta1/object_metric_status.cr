# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::ObjectMetricStatus; end

require "../../../apimachinery/apis/meta/v1/label_selector"
require "./cross_version_object_reference"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::ObjectMetricStatus`.
  module Types::Api::Autoscaling::V2beta1::ObjectMetricStatus
    # averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
    abstract def average_value : ::Int32 | ::String?
    # :ditto:
    abstract def average_value! : ::Int32 | ::String
    # :ditto:
    abstract def average_value? : ::Int32 | ::String?
    # :ditto:
    abstract def average_value=(value : ::Int32 | ::String)
    # currentValue is the current value of the metric (as a quantity).
    abstract def current_value : ::Int32 | ::String?
    # :ditto:
    abstract def current_value! : ::Int32 | ::String
    # :ditto:
    abstract def current_value? : ::Int32 | ::String?
    # :ditto:
    abstract def current_value=(value : ::Int32 | ::String)
    # metricName is the name of the metric in question.
    abstract def metric_name : String?
    # :ditto:
    abstract def metric_name! : String
    # :ditto:
    abstract def metric_name? : String?
    # :ditto:
    abstract def metric_name=(value : String)
    # selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the ObjectMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
    abstract def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
    # target is the described Kubernetes object.
    abstract def target : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference?
    # :ditto:
    abstract def target! : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference
    # :ditto:
    abstract def target? : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference?
    # :ditto:
    abstract def target=(value : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference)
  end

  # ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  @[::K8S::Properties(
    average_value: {key: "averageValue", accessor: "average_value", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "averageValue is the current value of the average of the metric across all relevant pods (as a quantity)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    current_value: {key: "currentValue", accessor: "current_value", kind: "::Int32 | ::String", nilable: false, default: nil, read_only: false, description: "currentValue is the current value of the metric (as a quantity).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metric_name: {key: "metricName", accessor: "metric_name", kind: "String", nilable: false, default: nil, read_only: false, description: "metricName is the name of the metric in question.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the ObjectMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target: {key: "target", accessor: "target", kind: "::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference", nilable: false, default: nil, read_only: false, description: "target is the described Kubernetes object.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2beta1::ObjectMetricStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2beta1::ObjectMetricStatus
    k8s_object_accessor("averageValue", average_value : ::Int32 | ::String, true, false, "averageValue is the current value of the average of the metric across all relevant pods (as a quantity)")
    k8s_object_accessor("currentValue", current_value : ::Int32 | ::String, false, false, "currentValue is the current value of the metric (as a quantity).")
    k8s_object_accessor("metricName", metric_name : String, false, false, "metricName is the name of the metric in question.")
    k8s_object_accessor("selector", selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, true, false, "selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the ObjectMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.")
    k8s_object_accessor("target", target : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference, false, false, "target is the described Kubernetes object.")

    def initialize(*, average_value : ::Int32 | ::String? = nil, current_value : ::Int32 | ::String? = nil, metric_name : String? = nil, selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector? = nil, target : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference? = nil)
      super()
      self.["averageValue"] = average_value
      self.["currentValue"] = current_value
      self.["metricName"] = metric_name
      self.["selector"] = selector
      self.["target"] = target
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "averageValue", accessor: "average_value", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
      {key: "currentValue", accessor: "current_value", nilable: false, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
      {key: "metricName", accessor: "metric_name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector},
      {key: "target", accessor: "target", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference},
    ])
  end
end
