# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::ContainerResourceMetricStatus; end

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::ContainerResourceMetricStatus`.
  module Types::Api::Autoscaling::V2beta1::ContainerResourceMetricStatus
    # container is the name of the container in the pods of the scaling target
    abstract def container : String?
    # :ditto:
    abstract def container! : String
    # :ditto:
    abstract def container? : String?
    # :ditto:
    abstract def container=(value : String)
    # currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification.
    abstract def current_average_utilization : Int32?
    # :ditto:
    abstract def current_average_utilization! : Int32
    # :ditto:
    abstract def current_average_utilization? : Int32?
    # :ditto:
    abstract def current_average_utilization=(value : Int32)
    # currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type. It will always be set, regardless of the corresponding metric specification.
    abstract def current_average_value : ::Int32 | ::String?
    # :ditto:
    abstract def current_average_value! : ::Int32 | ::String
    # :ditto:
    abstract def current_average_value? : ::Int32 | ::String?
    # :ditto:
    abstract def current_average_value=(value : ::Int32 | ::String)
    # name is the name of the resource in question.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
  end

  # ContainerResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing a single container in each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  @[::K8S::Properties(
    container: {key: "container", accessor: "container", kind: "String", nilable: false, default: nil, read_only: false, description: "container is the name of the container in the pods of the scaling target", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    current_average_utilization: {key: "currentAverageUtilization", accessor: "current_average_utilization", kind: "Int32", nilable: true, default: nil, read_only: false, description: "currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    current_average_value: {key: "currentAverageValue", accessor: "current_average_value", kind: "::Int32 | ::String", nilable: false, default: nil, read_only: false, description: "currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the \"pods\" metric source type. It will always be set, regardless of the corresponding metric specification.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "name is the name of the resource in question.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2beta1::ContainerResourceMetricStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2beta1::ContainerResourceMetricStatus
    k8s_object_accessor("container", container : String, false, false, "container is the name of the container in the pods of the scaling target")
    k8s_object_accessor("currentAverageUtilization", current_average_utilization : Int32, true, false, "currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification.")
    k8s_object_accessor("currentAverageValue", current_average_value : ::Int32 | ::String, false, false, "currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the \"pods\" metric source type. It will always be set, regardless of the corresponding metric specification.")
    k8s_object_accessor("name", name : String, false, false, "name is the name of the resource in question.")

    def initialize(*, container : String? = nil, current_average_utilization : Int32? = nil, current_average_value : ::Int32 | ::String? = nil, name : String? = nil)
      super()
      self.["container"] = container
      self.["currentAverageUtilization"] = current_average_utilization
      self.["currentAverageValue"] = current_average_value
      self.["name"] = name
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "container", accessor: "container", nilable: false, read_only: false, default: nil, kind: String},
      {key: "currentAverageUtilization", accessor: "current_average_utilization", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "currentAverageValue", accessor: "current_average_value", nilable: false, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
