# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2::MetricValueStatus; end

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2::MetricValueStatus`.
  module Types::Api::Autoscaling::V2::MetricValueStatus
    # currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
    abstract def average_utilization : Int32?
    # :ditto:
    abstract def average_utilization! : Int32
    # :ditto:
    abstract def average_utilization? : Int32?
    # :ditto:
    abstract def average_utilization=(value : Int32)
    # averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
    abstract def average_value : ::Int32 | ::String?
    # :ditto:
    abstract def average_value! : ::Int32 | ::String
    # :ditto:
    abstract def average_value? : ::Int32 | ::String?
    # :ditto:
    abstract def average_value=(value : ::Int32 | ::String)
    # value is the current value of the metric (as a quantity).
    abstract def value : ::Int32 | ::String?
    # :ditto:
    abstract def value! : ::Int32 | ::String
    # :ditto:
    abstract def value? : ::Int32 | ::String?
    # :ditto:
    abstract def value=(value : ::Int32 | ::String)
  end

  # MetricValueStatus holds the current value for a metric
  @[::K8S::Properties(
    average_utilization: {key: "averageUtilization", accessor: "average_utilization", kind: "Int32", nilable: true, default: nil, read_only: false, description: "currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    average_value: {key: "averageValue", accessor: "average_value", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "averageValue is the current value of the average of the metric across all relevant pods (as a quantity)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    value: {key: "value", accessor: "value", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "value is the current value of the metric (as a quantity).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2::MetricValueStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2::MetricValueStatus
    k8s_object_accessor("averageUtilization", average_utilization : Int32, true, false, "currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.")
    k8s_object_accessor("averageValue", average_value : ::Int32 | ::String, true, false, "averageValue is the current value of the average of the metric across all relevant pods (as a quantity)")
    k8s_object_accessor("value", value : ::Int32 | ::String, true, false, "value is the current value of the metric (as a quantity).")

    def initialize(*, average_utilization : Int32? = nil, average_value : ::Int32 | ::String? = nil, value : ::Int32 | ::String? = nil)
      super()
      self.["averageUtilization"] = average_utilization
      self.["averageValue"] = average_value
      self.["value"] = value
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "averageUtilization", accessor: "average_utilization", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "averageValue", accessor: "average_value", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
      {key: "value", accessor: "value", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
    ])
  end
end
