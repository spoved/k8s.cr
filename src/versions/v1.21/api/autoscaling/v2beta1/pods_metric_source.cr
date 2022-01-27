# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::PodsMetricSource; end

require "../../../apimachinery/apis/meta/v1/label_selector"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::PodsMetricSource`.
  module Types::Api::Autoscaling::V2beta1::PodsMetricSource
    # metricName is the name of the metric in question
    abstract def metric_name : String?
    # :ditto:
    abstract def metric_name! : String
    # :ditto:
    abstract def metric_name? : String?
    # :ditto:
    abstract def metric_name=(value : String)
    # selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.
    abstract def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
    # targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity)
    abstract def target_average_value : ::Int32 | ::String?
    # :ditto:
    abstract def target_average_value! : ::Int32 | ::String
    # :ditto:
    abstract def target_average_value? : ::Int32 | ::String?
    # :ditto:
    abstract def target_average_value=(value : ::Int32 | ::String)
  end

  # PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
  @[::K8S::Properties(
    metric_name: {key: "metricName", accessor: "metric_name", kind: "String", nilable: false, default: nil, read_only: false, description: "metricName is the name of the metric in question", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target_average_value: {key: "targetAverageValue", accessor: "target_average_value", kind: "::Int32 | ::String", nilable: false, default: nil, read_only: false, description: "targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2beta1::PodsMetricSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2beta1::PodsMetricSource
    k8s_object_accessor("metricName", metric_name : String, false, false, "metricName is the name of the metric in question")
    k8s_object_accessor("selector", selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, true, false, "selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.")
    k8s_object_accessor("targetAverageValue", target_average_value : ::Int32 | ::String, false, false, "targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity)")

    def initialize(*, metric_name : String? = nil, selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector? = nil, target_average_value : ::Int32 | ::String? = nil)
      super()
      self.["metricName"] = metric_name
      self.["selector"] = selector
      self.["targetAverageValue"] = target_average_value
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "metricName", accessor: "metric_name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector},
      {key: "targetAverageValue", accessor: "target_average_value", nilable: false, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
    ])
  end
end
