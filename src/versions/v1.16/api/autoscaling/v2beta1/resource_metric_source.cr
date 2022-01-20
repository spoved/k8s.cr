# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::ResourceMetricSource; end

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::ResourceMetricSource`.
  module Types::Api::Autoscaling::V2beta1::ResourceMetricSource
    alias ValueType = String | Int32 | ::Int32 | ::String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # name is the name of the resource in question.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # targetAverageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
    abstract def target_average_utilization : Int32?
    # :ditto:
    abstract def target_average_utilization! : Int32
    # :ditto:
    abstract def target_average_utilization? : Int32?
    # :ditto:
    abstract def target_average_utilization=(value : Int32?)
    # targetAverageValue is the target value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type.
    abstract def target_average_value : ::Int32 | ::String?
    # :ditto:
    abstract def target_average_value! : ::Int32 | ::String
    # :ditto:
    abstract def target_average_value? : ::Int32 | ::String?
    # :ditto:
    abstract def target_average_value=(value : ::Int32 | ::String?)
  end

  # ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "name is the name of the resource in question.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target_average_utilization: {key: "targetAverageUtilization", accessor: "target_average_utilization", kind: "Int32", nilable: true, default: nil, read_only: false, description: "targetAverageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target_average_value: {key: "targetAverageValue", accessor: "target_average_value", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "targetAverageValue is the target value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the \"pods\" metric source type.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2beta1::ResourceMetricSource < ::K8S::Types::Api::Autoscaling::V2beta1::ResourceMetricSource::Instance
    include ::K8S::Types::Api::Autoscaling::V2beta1::ResourceMetricSource
    include ::K8S::Kubernetes::Object

    # name is the name of the resource in question.
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    # targetAverageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
    def target_average_utilization : Int32?
      self.["targetAverageUtilization"].as(Int32?)
    end

    # :ditto:
    def target_average_utilization! : Int32
      self.["targetAverageUtilization"].as(Int32?).not_nil!
    end

    # :ditto:
    def target_average_utilization? : Int32?
      self.["targetAverageUtilization"]?.as(Int32?)
    end

    # :ditto:
    def target_average_utilization=(value : Int32?)
      self.["targetAverageUtilization"] = value
    end

    # targetAverageValue is the target value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type.
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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "targetAverageUtilization", accessor: "target_average_utilization", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "targetAverageValue", accessor: "target_average_value", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
      ])
end
  end
end
