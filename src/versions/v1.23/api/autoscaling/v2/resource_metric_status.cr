# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2::ResourceMetricStatus; end

require "./metric_value_status"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2::ResourceMetricStatus`.
  module Types::Api::Autoscaling::V2::ResourceMetricStatus
    # current contains the current value for the given metric
    abstract def current : ::K8S::Api::Autoscaling::V2::MetricValueStatus?
    # :ditto:
    abstract def current! : ::K8S::Api::Autoscaling::V2::MetricValueStatus
    # :ditto:
    abstract def current? : ::K8S::Api::Autoscaling::V2::MetricValueStatus?
    # :ditto:
    abstract def current=(value : ::K8S::Api::Autoscaling::V2::MetricValueStatus)
    # Name is the name of the resource in question.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
  end

  # ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  @[::K8S::Properties(
    current: {key: "current", accessor: "current", kind: "::K8S::Api::Autoscaling::V2::MetricValueStatus", nilable: false, default: nil, read_only: false, description: "current contains the current value for the given metric", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the name of the resource in question.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2::ResourceMetricStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2::ResourceMetricStatus
    k8s_object_accessor("current", current : ::K8S::Api::Autoscaling::V2::MetricValueStatus, false, false, "current contains the current value for the given metric")
    k8s_object_accessor("name", name : String, false, false, "Name is the name of the resource in question.")

    def initialize(*, current : ::K8S::Api::Autoscaling::V2::MetricValueStatus? = nil, name : String? = nil)
      super()
      self.["current"] = current
      self.["name"] = name
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "current", accessor: "current", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::MetricValueStatus},
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
