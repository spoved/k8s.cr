# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2::ContainerResourceMetricSource; end

require "./metric_target"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2::ContainerResourceMetricSource`.
  module Types::Api::Autoscaling::V2::ContainerResourceMetricSource
    # container is the name of the container in the pods of the scaling target
    abstract def container : String?
    # :ditto:
    abstract def container! : String
    # :ditto:
    abstract def container? : String?
    # :ditto:
    abstract def container=(value : String)
    # name is the name of the resource in question.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # target specifies the target value for the given metric
    abstract def target : ::K8S::Api::Autoscaling::V2::MetricTarget?
    # :ditto:
    abstract def target! : ::K8S::Api::Autoscaling::V2::MetricTarget
    # :ditto:
    abstract def target? : ::K8S::Api::Autoscaling::V2::MetricTarget?
    # :ditto:
    abstract def target=(value : ::K8S::Api::Autoscaling::V2::MetricTarget)
  end

  # ContainerResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
  @[::K8S::Properties(
    container: {key: "container", accessor: "container", kind: "String", nilable: false, default: nil, read_only: false, description: "container is the name of the container in the pods of the scaling target", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "name is the name of the resource in question.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target: {key: "target", accessor: "target", kind: "::K8S::Api::Autoscaling::V2::MetricTarget", nilable: false, default: nil, read_only: false, description: "target specifies the target value for the given metric", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2::ContainerResourceMetricSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2::ContainerResourceMetricSource
    k8s_object_accessor("container", container : String, false, false, "container is the name of the container in the pods of the scaling target")
    k8s_object_accessor("name", name : String, false, false, "name is the name of the resource in question.")
    k8s_object_accessor("target", target : ::K8S::Api::Autoscaling::V2::MetricTarget, false, false, "target specifies the target value for the given metric")

    def initialize(*, container : String? = nil, name : String? = nil, target : ::K8S::Api::Autoscaling::V2::MetricTarget? = nil)
      super()
      self.["container"] = container
      self.["name"] = name
      self.["target"] = target
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "container", accessor: "container", nilable: false, read_only: false, default: nil, kind: String},
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "target", accessor: "target", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::MetricTarget},
    ])
  end
end
