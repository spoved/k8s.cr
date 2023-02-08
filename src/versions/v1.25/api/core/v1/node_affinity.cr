# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./preferred_scheduling_term"
require "./node_selector"

::K8S::Kubernetes::Resource.define_object("NodeAffinity",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "preferred_during_scheduling_ignored_during_execution", kind: ::Array(::K8S::Api::Core::V1::PreferredSchedulingTerm), key: "preferredDuringSchedulingIgnoredDuringExecution", nilable: true, read_only: false, description: "The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred."},
    {name: "required_during_scheduling_ignored_during_execution", kind: ::K8S::Api::Core::V1::NodeSelector, key: "requiredDuringSchedulingIgnoredDuringExecution", nilable: true, read_only: false, description: "If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node."},

  ]
)
