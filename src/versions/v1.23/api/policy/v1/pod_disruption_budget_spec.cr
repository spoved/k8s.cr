# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Policy::V1::PodDisruptionBudgetSpec; end

require "../../../apimachinery/apis/meta/v1/label_selector"

module K8S
  # Namespace holding the types for `Api::Policy::V1::PodDisruptionBudgetSpec`.
  module Types::Api::Policy::V1::PodDisruptionBudgetSpec
    alias ValueType = ::Int32 | ::String | ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector | Nil
    alias Instance = ::K8S::Object(ValueType)

    # An eviction is allowed if at most "maxUnavailable" pods selected by "selector" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with "minAvailable".
    abstract def max_unavailable : ::Int32 | ::String?
    # :ditto:
    abstract def max_unavailable! : ::Int32 | ::String
    # :ditto:
    abstract def max_unavailable? : ::Int32 | ::String?
    # :ditto:
    abstract def max_unavailable=(value : ::Int32 | ::String?)
    # An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying "100%".
    abstract def min_available : ::Int32 | ::String?
    # :ditto:
    abstract def min_available! : ::Int32 | ::String
    # :ditto:
    abstract def min_available? : ::Int32 | ::String?
    # :ditto:
    abstract def min_available=(value : ::Int32 | ::String?)
    # Label query over pods whose evictions are managed by the disruption budget. A null selector will match no pods, while an empty ({}) selector will select all pods within the namespace.
    abstract def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
  end

  # PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
  @[::K8S::Properties(
    max_unavailable: {key: "maxUnavailable", accessor: "max_unavailable", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "An eviction is allowed if at most \"maxUnavailable\" pods selected by \"selector\" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with \"minAvailable\"."},
    min_available: {key: "minAvailable", accessor: "min_available", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "An eviction is allowed if at least \"minAvailable\" pods selected by \"selector\" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying \"100%\"."},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "Label query over pods whose evictions are managed by the disruption budget. A null selector will match no pods, while an empty ({}) selector will select all pods within the namespace."},
  )]
  class Api::Policy::V1::PodDisruptionBudgetSpec < ::K8S::Types::Api::Policy::V1::PodDisruptionBudgetSpec::Instance
    include ::K8S::Types::Api::Policy::V1::PodDisruptionBudgetSpec
    include ::K8S::Kubernetes::Object

    # An eviction is allowed if at most "maxUnavailable" pods selected by "selector" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with "minAvailable".
    def max_unavailable : ::Int32 | ::String?
      self.["maxUnavailable"].as(::Int32 | ::String?)
    end

    # :ditto:
    def max_unavailable! : ::Int32 | ::String
      self.["maxUnavailable"].as(::Int32 | ::String?).not_nil!
    end

    # :ditto:
    def max_unavailable? : ::Int32 | ::String?
      self.["maxUnavailable"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def max_unavailable=(value : ::Int32 | ::String?)
      self.["maxUnavailable"] = value
    end

    # An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying "100%".
    def min_available : ::Int32 | ::String?
      self.["minAvailable"].as(::Int32 | ::String?)
    end

    # :ditto:
    def min_available! : ::Int32 | ::String
      self.["minAvailable"].as(::Int32 | ::String?).not_nil!
    end

    # :ditto:
    def min_available? : ::Int32 | ::String?
      self.["minAvailable"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def min_available=(value : ::Int32 | ::String?)
      self.["minAvailable"] = value
    end

    # Label query over pods whose evictions are managed by the disruption budget. A null selector will match no pods, while an empty ({}) selector will select all pods within the namespace.
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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "maxUnavailable", accessor: "max_unavailable", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
        { key: "minAvailable", accessor: "min_available", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
        { key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
      ])
end
  end
end
