# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Policy::V1beta1::PodDisruptionBudgetSpec; end

require "../../../apimachinery/apis/meta/v1/label_selector"

module K8S
  # Namespace holding the types for `Api::Policy::V1beta1::PodDisruptionBudgetSpec`.
  module Types::Api::Policy::V1beta1::PodDisruptionBudgetSpec
    # An eviction is allowed if at most "maxUnavailable" pods selected by "selector" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with "minAvailable".
    abstract def max_unavailable : ::Int32 | ::String?
    # :ditto:
    abstract def max_unavailable! : ::Int32 | ::String
    # :ditto:
    abstract def max_unavailable? : ::Int32 | ::String?
    # :ditto:
    abstract def max_unavailable=(value : ::Int32 | ::String)
    # An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying "100%".
    abstract def min_available : ::Int32 | ::String?
    # :ditto:
    abstract def min_available! : ::Int32 | ::String
    # :ditto:
    abstract def min_available? : ::Int32 | ::String?
    # :ditto:
    abstract def min_available=(value : ::Int32 | ::String)
    # Label query over pods whose evictions are managed by the disruption budget.
    abstract def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
  end

  # PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
  @[::K8S::Properties(
    max_unavailable: {key: "maxUnavailable", accessor: "max_unavailable", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "An eviction is allowed if at most \"maxUnavailable\" pods selected by \"selector\" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with \"minAvailable\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    min_available: {key: "minAvailable", accessor: "min_available", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "An eviction is allowed if at least \"minAvailable\" pods selected by \"selector\" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying \"100%\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "Label query over pods whose evictions are managed by the disruption budget.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Policy::V1beta1::PodDisruptionBudgetSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Policy::V1beta1::PodDisruptionBudgetSpec
    k8s_object_accessor("maxUnavailable", max_unavailable : ::Int32 | ::String, true, false, "An eviction is allowed if at most \"maxUnavailable\" pods selected by \"selector\" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with \"minAvailable\".")
    k8s_object_accessor("minAvailable", min_available : ::Int32 | ::String, true, false, "An eviction is allowed if at least \"minAvailable\" pods selected by \"selector\" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying \"100%\".")
    k8s_object_accessor("selector", selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, true, false, "Label query over pods whose evictions are managed by the disruption budget.")

    def initialize(*, max_unavailable : ::Int32 | ::String? = nil, min_available : ::Int32 | ::String? = nil, selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector? = nil)
      super()
      self.["maxUnavailable"] = max_unavailable
      self.["minAvailable"] = min_available
      self.["selector"] = selector
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "maxUnavailable", accessor: "max_unavailable", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
      {key: "minAvailable", accessor: "min_available", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
      {key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector},
    ])
  end
end
