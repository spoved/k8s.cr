# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2::MetricIdentifier; end

require "../../../apimachinery/apis/meta/v1/label_selector"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2::MetricIdentifier`.
  module Types::Api::Autoscaling::V2::MetricIdentifier
    # name is the name of the given metric
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
    abstract def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
  end

  # MetricIdentifier defines the name and optionally selector for a metric
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "name is the name of the given metric", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2::MetricIdentifier < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2::MetricIdentifier
    k8s_object_accessor("name", name : String, false, false, "name is the name of the given metric")
    k8s_object_accessor("selector", selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, true, false, "selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.")

    def initialize(*, name : String? = nil, selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector? = nil)
      super()
      self.["name"] = name
      self.["selector"] = selector
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector},
    ])
  end
end
