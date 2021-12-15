# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Node affinity is a group of node affinity scheduling rules.
  @[::K8S::Properties(
    preferred_during_scheduling_ignored_during_execution: {type: Array(Api::Core::V1::PreferredSchedulingTerm), nilable: true, key: "preferredDuringSchedulingIgnoredDuringExecution", getter: false, setter: false},
    required_during_scheduling_ignored_during_execution: {type: Api::Core::V1::NodeSelector, nilable: true, key: "requiredDuringSchedulingIgnoredDuringExecution", getter: false, setter: false},
  )]
  class Api::Core::V1::NodeAffinity
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
    @[::JSON::Field(key: "preferredDuringSchedulingIgnoredDuringExecution", emit_null: false)]
    @[::YAML::Field(key: "preferredDuringSchedulingIgnoredDuringExecution", emit_null: false)]
    property preferred_during_scheduling_ignored_during_execution : Array(Api::Core::V1::PreferredSchedulingTerm) | Nil

    # If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.
    @[::JSON::Field(key: "requiredDuringSchedulingIgnoredDuringExecution", emit_null: false)]
    @[::YAML::Field(key: "requiredDuringSchedulingIgnoredDuringExecution", emit_null: false)]
    property required_during_scheduling_ignored_during_execution : Api::Core::V1::NodeSelector | Nil

    def initialize(*, @preferred_during_scheduling_ignored_during_execution : Array | Nil = nil, @required_during_scheduling_ignored_during_execution : Api::Core::V1::NodeSelector | Nil = nil)
    end
  end
end
