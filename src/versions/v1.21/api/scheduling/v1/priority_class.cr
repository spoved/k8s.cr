# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"

::K8S::Kubernetes::Resource.define_resource("scheduling.k8s.io", "v1", "PriorityClass",
  namespace: "::K8S::Api::Scheduling::V1",
  properties: [

    {name: "description", kind: String, key: "description", nilable: true, read_only: false, description: "description is an arbitrary string that usually provides guidelines on when this priority class should be used."},
    {name: "global_default", kind: ::Bool, key: "globalDefault", nilable: true, read_only: false, description: "globalDefault specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority."},
    {name: "preemption_policy", kind: String, key: "preemptionPolicy", nilable: true, read_only: false, description: "PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. This field is beta-level, gated by the NonPreemptingPriority feature-gate."},
    {name: "value", kind: Int32, key: "value", nilable: false, read_only: false, description: "The value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec."},

  ],
  description: "PriorityClass defines mapping from a priority class name to the priority integer value. The value can be any valid integer.",
  versions: [{group: "scheduling.k8s.io", kind: "PriorityClass", version: "v1"}],
)
