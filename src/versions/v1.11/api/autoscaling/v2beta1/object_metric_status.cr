# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::ObjectMetricStatus; end

require "./cross_version_object_reference"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::ObjectMetricStatus`.
  module Types::Api::Autoscaling::V2beta1::ObjectMetricStatus
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
    current_value: {key: "currentValue", accessor: "current_value", kind: "::Int32 | ::String", nilable: false, default: nil, read_only: false, description: "currentValue is the current value of the metric (as a quantity).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metric_name: {key: "metricName", accessor: "metric_name", kind: "String", nilable: false, default: nil, read_only: false, description: "metricName is the name of the metric in question.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target: {key: "target", accessor: "target", kind: "::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference", nilable: false, default: nil, read_only: false, description: "target is the described Kubernetes object.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2beta1::ObjectMetricStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2beta1::ObjectMetricStatus
    k8s_object_accessor("currentValue", current_value : ::Int32 | ::String, false, false, "currentValue is the current value of the metric (as a quantity).")
    k8s_object_accessor("metricName", metric_name : String, false, false, "metricName is the name of the metric in question.")
    k8s_object_accessor("target", target : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference, false, false, "target is the described Kubernetes object.")

    def initialize(*, current_value : ::Int32 | ::String? = nil, metric_name : String? = nil, target : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference? = nil)
      super()
      self.["currentValue"] = current_value
      self.["metricName"] = metric_name
      self.["target"] = target
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "currentValue", accessor: "current_value", nilable: false, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
      {key: "metricName", accessor: "metric_name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "target", accessor: "target", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference},
    ])
  end
end
