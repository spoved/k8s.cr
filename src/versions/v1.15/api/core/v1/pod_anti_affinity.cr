# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./weighted_pod_affinity_term"
require "./pod_affinity_term"

::K8S::Kubernetes::Resource.define_object("PodAntiAffinity",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "preferred_during_scheduling_ignored_during_execution", kind: ::Array(::K8S::Api::Core::V1::WeightedPodAffinityTerm), key: "preferredDuringSchedulingIgnoredDuringExecution", nilable: true, read_only: false, description: "The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred."},
    {name: "required_during_scheduling_ignored_during_execution", kind: ::Array(::K8S::Api::Core::V1::PodAffinityTerm), key: "requiredDuringSchedulingIgnoredDuringExecution", nilable: true, read_only: false, description: "If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied."},

  ]
)
