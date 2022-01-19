# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta2::MetricTarget; end

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta2::MetricTarget`.
  module Types::Api::Autoscaling::V2beta2::MetricTarget
    alias ValueType = Int32 | ::Int32 | ::String | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type
    abstract def average_utilization : Int32?
    # :ditto:
    abstract def average_utilization! : Int32
    # :ditto:
    abstract def average_utilization? : Int32?
    # :ditto:
    abstract def average_utilization=(value : Int32?)
    # averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
    abstract def average_value : ::Int32 | ::String?
    # :ditto:
    abstract def average_value! : ::Int32 | ::String
    # :ditto:
    abstract def average_value? : ::Int32 | ::String?
    # :ditto:
    abstract def average_value=(value : ::Int32 | ::String?)
    # type represents whether the metric type is Utilization, Value, or AverageValue
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
    # value is the target value of the metric (as a quantity).
    abstract def value : ::Int32 | ::String?
    # :ditto:
    abstract def value! : ::Int32 | ::String
    # :ditto:
    abstract def value? : ::Int32 | ::String?
    # :ditto:
    abstract def value=(value : ::Int32 | ::String?)
  end

  # MetricTarget defines the target value, average value, or average utilization of a specific metric
  @[::K8S::Properties(
    average_utilization: {key: "averageUtilization", accessor: "average_utilization", kind: "Int32", nilable: true, default: nil, read_only: false, description: "averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type"},
    average_value: {key: "averageValue", accessor: "average_value", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "averageValue is the target value of the average of the metric across all relevant pods (as a quantity)"},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "type represents whether the metric type is Utilization, Value, or AverageValue"},
    value: {key: "value", accessor: "value", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "value is the target value of the metric (as a quantity)."},
  )]
  class Api::Autoscaling::V2beta2::MetricTarget < ::K8S::Types::Api::Autoscaling::V2beta2::MetricTarget::Instance
    include ::K8S::Types::Api::Autoscaling::V2beta2::MetricTarget
    include ::K8S::Kubernetes::Object

    # averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type
    def average_utilization : Int32?
      self.["averageUtilization"].as(Int32?)
    end

    # :ditto:
    def average_utilization! : Int32
      self.["averageUtilization"].as(Int32?).not_nil!
    end

    # :ditto:
    def average_utilization? : Int32?
      self.["averageUtilization"]?.as(Int32?)
    end

    # :ditto:
    def average_utilization=(value : Int32?)
      self.["averageUtilization"] = value
    end

    # averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
    def average_value : ::Int32 | ::String?
      self.["averageValue"].as(::Int32 | ::String?)
    end

    # :ditto:
    def average_value! : ::Int32 | ::String
      self.["averageValue"].as(::Int32 | ::String?).not_nil!
    end

    # :ditto:
    def average_value? : ::Int32 | ::String?
      self.["averageValue"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def average_value=(value : ::Int32 | ::String?)
      self.["averageValue"] = value
    end

    # type represents whether the metric type is Utilization, Value, or AverageValue
    def type : String
      self.["type"].as(String)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String)
      self.["type"] = value
    end

    # value is the target value of the metric (as a quantity).
    def value : ::Int32 | ::String?
      self.["value"].as(::Int32 | ::String?)
    end

    # :ditto:
    def value! : ::Int32 | ::String
      self.["value"].as(::Int32 | ::String?).not_nil!
    end

    # :ditto:
    def value? : ::Int32 | ::String?
      self.["value"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def value=(value : ::Int32 | ::String?)
      self.["value"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "averageUtilization", accessor: "average_utilization", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "averageValue", accessor: "average_value", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
        { key: "value", accessor: "value", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
      ])
end
  end
end
