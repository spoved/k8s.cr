# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta2::ContainerResourceMetricStatus; end

require "./metric_value_status"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta2::ContainerResourceMetricStatus`.
  module Types::Api::Autoscaling::V2beta2::ContainerResourceMetricStatus
    alias ValueType = String | ::K8S::Api::Autoscaling::V2beta2::MetricValueStatus | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Container is the name of the container in the pods of the scaling target
    abstract def container : String
    # :ditto:
    abstract def container! : String
    # :ditto:
    abstract def container? : String?
    # :ditto:
    abstract def container=(value : String)
    # current contains the current value for the given metric
    abstract def current : ::K8S::Api::Autoscaling::V2beta2::MetricValueStatus
    # :ditto:
    abstract def current! : ::K8S::Api::Autoscaling::V2beta2::MetricValueStatus
    # :ditto:
    abstract def current? : ::K8S::Api::Autoscaling::V2beta2::MetricValueStatus?
    # :ditto:
    abstract def current=(value : ::K8S::Api::Autoscaling::V2beta2::MetricValueStatus)
    # Name is the name of the resource in question.
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
    container: {key: "container", accessor: "container", kind: "String", nilable: false, default: nil, read_only: false, description: "Container is the name of the container in the pods of the scaling target", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    current: {key: "current", accessor: "current", kind: "::K8S::Api::Autoscaling::V2beta2::MetricValueStatus", nilable: false, default: nil, read_only: false, description: "current contains the current value for the given metric", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the name of the resource in question.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2beta2::ContainerResourceMetricStatus < ::K8S::Types::Api::Autoscaling::V2beta2::ContainerResourceMetricStatus::Instance
    include ::K8S::Types::Api::Autoscaling::V2beta2::ContainerResourceMetricStatus
    include ::K8S::Kubernetes::Object

    # Container is the name of the container in the pods of the scaling target
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

    # current contains the current value for the given metric
    def current : ::K8S::Api::Autoscaling::V2beta2::MetricValueStatus
      self.["current"].as(::K8S::Api::Autoscaling::V2beta2::MetricValueStatus)
    end

    # :ditto:
    def current! : ::K8S::Api::Autoscaling::V2beta2::MetricValueStatus
      self.["current"].as(::K8S::Api::Autoscaling::V2beta2::MetricValueStatus).not_nil!
    end

    # :ditto:
    def current? : ::K8S::Api::Autoscaling::V2beta2::MetricValueStatus?
      self.["current"]?.as(::K8S::Api::Autoscaling::V2beta2::MetricValueStatus?)
    end

    # :ditto:
    def current=(value : ::K8S::Api::Autoscaling::V2beta2::MetricValueStatus)
      self.["current"] = value
    end

    # Name is the name of the resource in question.
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
        { key: "current", accessor: "current", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta2::MetricValueStatus },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
