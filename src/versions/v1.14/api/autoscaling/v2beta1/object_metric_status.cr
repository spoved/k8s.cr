# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::ObjectMetricStatus; end

require "../../../apimachinery/apis/meta/v1/label_selector"
require "./cross_version_object_reference"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::ObjectMetricStatus`.
  module Types::Api::Autoscaling::V2beta1::ObjectMetricStatus
    alias ValueType = ::Int32 | ::String | String | ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector | ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference | Nil
    alias Instance = ::K8S::Object(ValueType)

    # averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
    abstract def average_value : ::Int32 | ::String?
    # :ditto:
    abstract def average_value! : ::Int32 | ::String
    # :ditto:
    abstract def average_value? : ::Int32 | ::String?
    # :ditto:
    abstract def average_value=(value : ::Int32 | ::String?)
    # currentValue is the current value of the metric (as a quantity).
    abstract def current_value : ::Int32 | ::String
    # :ditto:
    abstract def current_value! : ::Int32 | ::String
    # :ditto:
    abstract def current_value? : ::Int32 | ::String?
    # :ditto:
    abstract def current_value=(value : ::Int32 | ::String)
    # metricName is the name of the metric in question.
    abstract def metric_name : String
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
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    # target is the described Kubernetes object.
    abstract def target : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference
    # :ditto:
    abstract def target! : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference
    # :ditto:
    abstract def target? : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference?
    # :ditto:
    abstract def target=(value : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference)
  end

  # ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  @[::K8S::Properties(
    average_value: {key: "averageValue", accessor: "average_value", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "averageValue is the current value of the average of the metric across all relevant pods (as a quantity)"},
    current_value: {key: "currentValue", accessor: "current_value", kind: "::Int32 | ::String", nilable: false, default: nil, read_only: false, description: "currentValue is the current value of the metric (as a quantity)."},
    metric_name: {key: "metricName", accessor: "metric_name", kind: "String", nilable: false, default: nil, read_only: false, description: "metricName is the name of the metric in question."},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the ObjectMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics."},
    target: {key: "target", accessor: "target", kind: "::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference", nilable: false, default: nil, read_only: false, description: "target is the described Kubernetes object."},
  )]
  class Api::Autoscaling::V2beta1::ObjectMetricStatus < ::K8S::Types::Api::Autoscaling::V2beta1::ObjectMetricStatus::Instance
    include ::K8S::Types::Api::Autoscaling::V2beta1::ObjectMetricStatus
    include ::K8S::Kubernetes::Object

    # averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
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

    # currentValue is the current value of the metric (as a quantity).
    def current_value : ::Int32 | ::String
      self.["currentValue"].as(::Int32 | ::String)
    end

    # :ditto:
    def current_value! : ::Int32 | ::String
      self.["currentValue"].as(::Int32 | ::String).not_nil!
    end

    # :ditto:
    def current_value? : ::Int32 | ::String?
      self.["currentValue"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def current_value=(value : ::Int32 | ::String)
      self.["currentValue"] = value
    end

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

    # selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the ObjectMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
    def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["selector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["selector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?).not_nil!
    end

    # :ditto:
    def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["selector"]?.as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
      self.["selector"] = value
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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "averageValue", accessor: "average_value", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
        { key: "currentValue", accessor: "current_value", nilable: false, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
        { key: "metricName", accessor: "metric_name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
        { key: "target", accessor: "target", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference },
      ])
end
  end
end
