# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::ContainerResourceMetricSource; end

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::ContainerResourceMetricSource`.
  module Types::Api::Autoscaling::V2beta1::ContainerResourceMetricSource
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

  # ContainerResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
  @[::K8S::Properties(
    container: {key: "container", accessor: "container", kind: "String", nilable: false, default: nil, read_only: false, description: "container is the name of the container in the pods of the scaling target"},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "name is the name of the resource in question."},
    target_average_utilization: {key: "targetAverageUtilization", accessor: "target_average_utilization", kind: "Int32", nilable: true, default: nil, read_only: false, description: "targetAverageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods."},
    target_average_value: {key: "targetAverageValue", accessor: "target_average_value", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "targetAverageValue is the target value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the \"pods\" metric source type."},
  )]
  class Api::Autoscaling::V2beta1::ContainerResourceMetricSource < ::K8S::Types::Api::Autoscaling::V2beta1::ContainerResourceMetricSource::Instance
    include ::K8S::Types::Api::Autoscaling::V2beta1::ContainerResourceMetricSource
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
        { key: "container", accessor: "container", nilable: false, read_only: false, default: nil, kind: String },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "targetAverageUtilization", accessor: "target_average_utilization", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "targetAverageValue", accessor: "target_average_value", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
      ])
end
  end
end
