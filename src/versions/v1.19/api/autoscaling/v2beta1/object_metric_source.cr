# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::ObjectMetricSource; end

require "../../../apimachinery/apis/meta/v1/label_selector"
require "./cross_version_object_reference"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::ObjectMetricSource`.
  module Types::Api::Autoscaling::V2beta1::ObjectMetricSource
    # averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
    abstract def average_value : ::Int32 | ::String?
    # :ditto:
    abstract def average_value! : ::Int32 | ::String
    # :ditto:
    abstract def average_value? : ::Int32 | ::String?
    # :ditto:
    abstract def average_value=(value : ::Int32 | ::String)
    # metricName is the name of the metric in question.
    abstract def metric_name : String?
    # :ditto:
    abstract def metric_name! : String
    # :ditto:
    abstract def metric_name? : String?
    # :ditto:
    abstract def metric_name=(value : String)
    # selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.
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
    # targetValue is the target value of the metric (as a quantity).
    abstract def target_value : ::Int32 | ::String?
    # :ditto:
    abstract def target_value! : ::Int32 | ::String
    # :ditto:
    abstract def target_value? : ::Int32 | ::String?
    # :ditto:
    abstract def target_value=(value : ::Int32 | ::String)
  end

  # ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  @[::K8S::Properties(
    average_value: {key: "averageValue", accessor: "average_value", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "averageValue is the target value of the average of the metric across all relevant pods (as a quantity)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metric_name: {key: "metricName", accessor: "metric_name", kind: "String", nilable: false, default: nil, read_only: false, description: "metricName is the name of the metric in question.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target: {key: "target", accessor: "target", kind: "::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference", nilable: false, default: nil, read_only: false, description: "target is the described Kubernetes object.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target_value: {key: "targetValue", accessor: "target_value", kind: "::Int32 | ::String", nilable: false, default: nil, read_only: false, description: "targetValue is the target value of the metric (as a quantity).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2beta1::ObjectMetricSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2beta1::ObjectMetricSource
    k8s_object_accessor("averageValue", average_value : ::Int32 | ::String, true, false, "averageValue is the target value of the average of the metric across all relevant pods (as a quantity)")
    k8s_object_accessor("metricName", metric_name : String, false, false, "metricName is the name of the metric in question.")
    k8s_object_accessor("selector", selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, true, false, "selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.")
    k8s_object_accessor("target", target : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference, false, false, "target is the described Kubernetes object.")
    k8s_object_accessor("targetValue", target_value : ::Int32 | ::String, false, false, "targetValue is the target value of the metric (as a quantity).")

    def initialize(*, average_value : ::Int32 | ::String? = nil, metric_name : String? = nil, selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector? = nil, target : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference? = nil, target_value : ::Int32 | ::String? = nil)
      super()
      self.["averageValue"] = average_value
      self.["metricName"] = metric_name
      self.["selector"] = selector
      self.["target"] = target
      self.["targetValue"] = target_value
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "averageValue", accessor: "average_value", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
      {key: "metricName", accessor: "metric_name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector},
      {key: "target", accessor: "target", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference},
      {key: "targetValue", accessor: "target_value", nilable: false, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
    ])
  end
end
