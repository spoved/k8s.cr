# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NodeAffinity; end

require "./preferred_scheduling_term"
require "./node_selector"

module K8S
  # Namespace holding the types for `Api::Core::V1::NodeAffinity`.
  module Types::Api::Core::V1::NodeAffinity
    alias ValueType = ::Array(::K8S::Api::Core::V1::PreferredSchedulingTerm) | ::K8S::Api::Core::V1::NodeSelector | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
    abstract def preferred_during_scheduling_ignored_during_execution : ::Array(::K8S::Api::Core::V1::PreferredSchedulingTerm)?
    # :ditto:
    abstract def preferred_during_scheduling_ignored_during_execution! : ::Array(::K8S::Api::Core::V1::PreferredSchedulingTerm)
    # :ditto:
    abstract def preferred_during_scheduling_ignored_during_execution? : ::Array(::K8S::Api::Core::V1::PreferredSchedulingTerm)?
    # :ditto:
    abstract def preferred_during_scheduling_ignored_during_execution=(value : ::Array(::K8S::Api::Core::V1::PreferredSchedulingTerm)?)
    # If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.
    abstract def required_during_scheduling_ignored_during_execution : ::K8S::Api::Core::V1::NodeSelector?
    # :ditto:
    abstract def required_during_scheduling_ignored_during_execution! : ::K8S::Api::Core::V1::NodeSelector
    # :ditto:
    abstract def required_during_scheduling_ignored_during_execution? : ::K8S::Api::Core::V1::NodeSelector?
    # :ditto:
    abstract def required_during_scheduling_ignored_during_execution=(value : ::K8S::Api::Core::V1::NodeSelector?)
  end

  # Node affinity is a group of node affinity scheduling rules.
  @[::K8S::Properties(
    preferred_during_scheduling_ignored_during_execution: {key: "preferredDuringSchedulingIgnoredDuringExecution", accessor: "preferred_during_scheduling_ignored_during_execution", kind: "::Array(::K8S::Api::Core::V1::PreferredSchedulingTerm)", nilable: true, default: nil, read_only: false, description: "The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    required_during_scheduling_ignored_during_execution: {key: "requiredDuringSchedulingIgnoredDuringExecution", accessor: "required_during_scheduling_ignored_during_execution", kind: "::K8S::Api::Core::V1::NodeSelector", nilable: true, default: nil, read_only: false, description: "If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::NodeAffinity < ::K8S::Types::Api::Core::V1::NodeAffinity::Instance
    include ::K8S::Types::Api::Core::V1::NodeAffinity
    include ::K8S::Kubernetes::Object

    # The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
    def preferred_during_scheduling_ignored_during_execution : ::Array(::K8S::Api::Core::V1::PreferredSchedulingTerm)?
      self.["preferredDuringSchedulingIgnoredDuringExecution"].as(::Array(::K8S::Api::Core::V1::PreferredSchedulingTerm)?)
    end

    # :ditto:
    def preferred_during_scheduling_ignored_during_execution! : ::Array(::K8S::Api::Core::V1::PreferredSchedulingTerm)
      self.["preferredDuringSchedulingIgnoredDuringExecution"].as(::Array(::K8S::Api::Core::V1::PreferredSchedulingTerm)?).not_nil!
    end

    # :ditto:
    def preferred_during_scheduling_ignored_during_execution? : ::Array(::K8S::Api::Core::V1::PreferredSchedulingTerm)?
      self.["preferredDuringSchedulingIgnoredDuringExecution"]?.as(::Array(::K8S::Api::Core::V1::PreferredSchedulingTerm)?)
    end

    # :ditto:
    def preferred_during_scheduling_ignored_during_execution=(value : ::Array(::K8S::Api::Core::V1::PreferredSchedulingTerm)?)
      self.["preferredDuringSchedulingIgnoredDuringExecution"] = value
    end

    # If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.
    def required_during_scheduling_ignored_during_execution : ::K8S::Api::Core::V1::NodeSelector?
      self.["requiredDuringSchedulingIgnoredDuringExecution"].as(::K8S::Api::Core::V1::NodeSelector?)
    end

    # :ditto:
    def required_during_scheduling_ignored_during_execution! : ::K8S::Api::Core::V1::NodeSelector
      self.["requiredDuringSchedulingIgnoredDuringExecution"].as(::K8S::Api::Core::V1::NodeSelector?).not_nil!
    end

    # :ditto:
    def required_during_scheduling_ignored_during_execution? : ::K8S::Api::Core::V1::NodeSelector?
      self.["requiredDuringSchedulingIgnoredDuringExecution"]?.as(::K8S::Api::Core::V1::NodeSelector?)
    end

    # :ditto:
    def required_during_scheduling_ignored_during_execution=(value : ::K8S::Api::Core::V1::NodeSelector?)
      self.["requiredDuringSchedulingIgnoredDuringExecution"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "preferredDuringSchedulingIgnoredDuringExecution", accessor: "preferred_during_scheduling_ignored_during_execution", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::PreferredSchedulingTerm) },
        { key: "requiredDuringSchedulingIgnoredDuringExecution", accessor: "required_during_scheduling_ignored_during_execution", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NodeSelector },
      ])
end
  end
end
