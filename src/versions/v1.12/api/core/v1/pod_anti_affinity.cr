# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PodAntiAffinity; end

require "./weighted_pod_affinity_term"
require "./pod_affinity_term"

module K8S
  # Namespace holding the types for `Api::Core::V1::PodAntiAffinity`.
  module Types::Api::Core::V1::PodAntiAffinity
    alias ValueType = ::Array(::K8S::Api::Core::V1::WeightedPodAffinityTerm) | ::Array(::K8S::Api::Core::V1::PodAffinityTerm) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.
    abstract def preferred_during_scheduling_ignored_during_execution : ::Array(::K8S::Api::Core::V1::WeightedPodAffinityTerm)?
    # :ditto:
    abstract def preferred_during_scheduling_ignored_during_execution! : ::Array(::K8S::Api::Core::V1::WeightedPodAffinityTerm)
    # :ditto:
    abstract def preferred_during_scheduling_ignored_during_execution? : ::Array(::K8S::Api::Core::V1::WeightedPodAffinityTerm)?
    # :ditto:
    abstract def preferred_during_scheduling_ignored_during_execution=(value : ::Array(::K8S::Api::Core::V1::WeightedPodAffinityTerm)?)
    # If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.
    abstract def required_during_scheduling_ignored_during_execution : ::Array(::K8S::Api::Core::V1::PodAffinityTerm)?
    # :ditto:
    abstract def required_during_scheduling_ignored_during_execution! : ::Array(::K8S::Api::Core::V1::PodAffinityTerm)
    # :ditto:
    abstract def required_during_scheduling_ignored_during_execution? : ::Array(::K8S::Api::Core::V1::PodAffinityTerm)?
    # :ditto:
    abstract def required_during_scheduling_ignored_during_execution=(value : ::Array(::K8S::Api::Core::V1::PodAffinityTerm)?)
  end

  # Pod anti affinity is a group of inter pod anti affinity scheduling rules.
  @[::K8S::Properties(
    preferred_during_scheduling_ignored_during_execution: {key: "preferredDuringSchedulingIgnoredDuringExecution", accessor: "preferred_during_scheduling_ignored_during_execution", kind: "::Array(::K8S::Api::Core::V1::WeightedPodAffinityTerm)", nilable: true, default: nil, read_only: false, description: "The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred."},
    required_during_scheduling_ignored_during_execution: {key: "requiredDuringSchedulingIgnoredDuringExecution", accessor: "required_during_scheduling_ignored_during_execution", kind: "::Array(::K8S::Api::Core::V1::PodAffinityTerm)", nilable: true, default: nil, read_only: false, description: "If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied."},
  )]
  class Api::Core::V1::PodAntiAffinity < ::K8S::Types::Api::Core::V1::PodAntiAffinity::Instance
    include ::K8S::Types::Api::Core::V1::PodAntiAffinity
    include ::K8S::Kubernetes::Object

    # The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.
    def preferred_during_scheduling_ignored_during_execution : ::Array(::K8S::Api::Core::V1::WeightedPodAffinityTerm)?
      self.["preferredDuringSchedulingIgnoredDuringExecution"].as(::Array(::K8S::Api::Core::V1::WeightedPodAffinityTerm)?)
    end

    # :ditto:
    def preferred_during_scheduling_ignored_during_execution! : ::Array(::K8S::Api::Core::V1::WeightedPodAffinityTerm)
      self.["preferredDuringSchedulingIgnoredDuringExecution"].as(::Array(::K8S::Api::Core::V1::WeightedPodAffinityTerm)?).not_nil!
    end

    # :ditto:
    def preferred_during_scheduling_ignored_during_execution? : ::Array(::K8S::Api::Core::V1::WeightedPodAffinityTerm)?
      self.["preferredDuringSchedulingIgnoredDuringExecution"]?.as(::Array(::K8S::Api::Core::V1::WeightedPodAffinityTerm)?)
    end

    # :ditto:
    def preferred_during_scheduling_ignored_during_execution=(value : ::Array(::K8S::Api::Core::V1::WeightedPodAffinityTerm)?)
      self.["preferredDuringSchedulingIgnoredDuringExecution"] = value
    end

    # If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.
    def required_during_scheduling_ignored_during_execution : ::Array(::K8S::Api::Core::V1::PodAffinityTerm)?
      self.["requiredDuringSchedulingIgnoredDuringExecution"].as(::Array(::K8S::Api::Core::V1::PodAffinityTerm)?)
    end

    # :ditto:
    def required_during_scheduling_ignored_during_execution! : ::Array(::K8S::Api::Core::V1::PodAffinityTerm)
      self.["requiredDuringSchedulingIgnoredDuringExecution"].as(::Array(::K8S::Api::Core::V1::PodAffinityTerm)?).not_nil!
    end

    # :ditto:
    def required_during_scheduling_ignored_during_execution? : ::Array(::K8S::Api::Core::V1::PodAffinityTerm)?
      self.["requiredDuringSchedulingIgnoredDuringExecution"]?.as(::Array(::K8S::Api::Core::V1::PodAffinityTerm)?)
    end

    # :ditto:
    def required_during_scheduling_ignored_during_execution=(value : ::Array(::K8S::Api::Core::V1::PodAffinityTerm)?)
      self.["requiredDuringSchedulingIgnoredDuringExecution"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "preferredDuringSchedulingIgnoredDuringExecution", accessor: "preferred_during_scheduling_ignored_during_execution", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::WeightedPodAffinityTerm) },
        { key: "requiredDuringSchedulingIgnoredDuringExecution", accessor: "required_during_scheduling_ignored_during_execution", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::PodAffinityTerm) },
      ])
end
  end
end
