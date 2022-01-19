# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::ObjectMetricSource; end

require "./cross_version_object_reference"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::ObjectMetricSource`.
  module Types::Api::Autoscaling::V2beta1::ObjectMetricSource
    alias ValueType = String | ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference | ::Int32 | ::String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # metricName is the name of the metric in question.
    abstract def metric_name : String
    # :ditto:
    abstract def metric_name! : String
    # :ditto:
    abstract def metric_name? : String?
    # :ditto:
    abstract def metric_name=(value : String)
    # target is the described Kubernetes object.
    abstract def target : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference
    # :ditto:
    abstract def target! : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference
    # :ditto:
    abstract def target? : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference?
    # :ditto:
    abstract def target=(value : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference)
    # targetValue is the target value of the metric (as a quantity).
    abstract def target_value : ::Int32 | ::String
    # :ditto:
    abstract def target_value! : ::Int32 | ::String
    # :ditto:
    abstract def target_value? : ::Int32 | ::String?
    # :ditto:
    abstract def target_value=(value : ::Int32 | ::String)
  end

  # ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  @[::K8S::Properties(
    metric_name: {key: "metricName", accessor: "metric_name", kind: "String", nilable: false, default: nil, read_only: false, description: "metricName is the name of the metric in question."},
    target: {key: "target", accessor: "target", kind: "::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference", nilable: false, default: nil, read_only: false, description: "target is the described Kubernetes object."},
    target_value: {key: "targetValue", accessor: "target_value", kind: "::Int32 | ::String", nilable: false, default: nil, read_only: false, description: "targetValue is the target value of the metric (as a quantity)."},
  )]
  class Api::Autoscaling::V2beta1::ObjectMetricSource < ::K8S::Types::Api::Autoscaling::V2beta1::ObjectMetricSource::Instance
    include ::K8S::Types::Api::Autoscaling::V2beta1::ObjectMetricSource
    include ::K8S::Kubernetes::Object

    # metricName is the name of the metric in question.
    def metric_name : String
      self.["metricName"].as(String)
    end

    # :ditto:
    def metric_name! : String
      self.["metricName"].as(String).not_nil!
    end

    # :ditto:
    def metric_name? : String?
      self.["metricName"]?.as(String?)
    end

    # :ditto:
    def metric_name=(value : String)
      self.["metricName"] = value
    end

    # target is the described Kubernetes object.
    def target : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference
      self.["target"].as(::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference)
    end

    # :ditto:
    def target! : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference
      self.["target"].as(::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference).not_nil!
    end

    # :ditto:
    def target? : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference?
      self.["target"]?.as(::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference?)
    end

    # :ditto:
    def target=(value : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference)
      self.["target"] = value
    end

    # targetValue is the target value of the metric (as a quantity).
    def target_value : ::Int32 | ::String
      self.["targetValue"].as(::Int32 | ::String)
    end

    # :ditto:
    def target_value! : ::Int32 | ::String
      self.["targetValue"].as(::Int32 | ::String).not_nil!
    end

    # :ditto:
    def target_value? : ::Int32 | ::String?
      self.["targetValue"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def target_value=(value : ::Int32 | ::String)
      self.["targetValue"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "metricName", accessor: "metric_name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "target", accessor: "target", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference },
        { key: "targetValue", accessor: "target_value", nilable: false, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
      ])
end
  end
end
