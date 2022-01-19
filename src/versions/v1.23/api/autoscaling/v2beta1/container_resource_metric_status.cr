# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::ContainerResourceMetricStatus; end

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::ContainerResourceMetricStatus`.
  module Types::Api::Autoscaling::V2beta1::ContainerResourceMetricStatus
    alias ValueType = String | Int32 | ::Int32 | ::String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # container is the name of the container in the pods of the scaling target
    abstract def container : String
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
    abstract def current_average_utilization=(value : Int32?)
    # currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type. It will always be set, regardless of the corresponding metric specification.
    abstract def current_average_value : ::Int32 | ::String
    # :ditto:
    abstract def current_average_value! : ::Int32 | ::String
    # :ditto:
    abstract def current_average_value? : ::Int32 | ::String?
    # :ditto:
    abstract def current_average_value=(value : ::Int32 | ::String)
    # name is the name of the resource in question.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
  end

  # ContainerResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing a single container in each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  @[::K8S::Properties(
    container: {key: "container", accessor: "container", kind: "String", nilable: false, default: nil, read_only: false, description: "container is the name of the container in the pods of the scaling target"},
    current_average_utilization: {key: "currentAverageUtilization", accessor: "current_average_utilization", kind: "Int32", nilable: true, default: nil, read_only: false, description: "currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification."},
    current_average_value: {key: "currentAverageValue", accessor: "current_average_value", kind: "::Int32 | ::String", nilable: false, default: nil, read_only: false, description: "currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the \"pods\" metric source type. It will always be set, regardless of the corresponding metric specification."},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "name is the name of the resource in question."},
  )]
  class Api::Autoscaling::V2beta1::ContainerResourceMetricStatus < ::K8S::Types::Api::Autoscaling::V2beta1::ContainerResourceMetricStatus::Instance
    include ::K8S::Types::Api::Autoscaling::V2beta1::ContainerResourceMetricStatus
    include ::K8S::Kubernetes::Object

    # container is the name of the container in the pods of the scaling target
    def container : String
      self.["container"].as(String)
    end

    # :ditto:
    def container! : String
      self.["container"].as(String).not_nil!
    end

    # :ditto:
    def container? : String?
      self.["container"]?.as(String?)
    end

    # :ditto:
    def container=(value : String)
      self.["container"] = value
    end

    # currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification.
    def current_average_utilization : Int32?
      self.["currentAverageUtilization"].as(Int32?)
    end

    # :ditto:
    def current_average_utilization! : Int32
      self.["currentAverageUtilization"].as(Int32?).not_nil!
    end

    # :ditto:
    def current_average_utilization? : Int32?
      self.["currentAverageUtilization"]?.as(Int32?)
    end

    # :ditto:
    def current_average_utilization=(value : Int32?)
      self.["currentAverageUtilization"] = value
    end

    # currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type. It will always be set, regardless of the corresponding metric specification.
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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "container", accessor: "container", nilable: false, read_only: false, default: nil, kind: String },
        { key: "currentAverageUtilization", accessor: "current_average_utilization", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "currentAverageValue", accessor: "current_average_value", nilable: false, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
