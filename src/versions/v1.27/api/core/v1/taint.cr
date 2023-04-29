# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("Taint",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "effect", kind: String, key: "effect", nilable: false, read_only: false, description: "Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute."},
    {name: "key", kind: String, key: "key", nilable: false, read_only: false, description: "Required. The taint key to be applied to a node."},
    {name: "time_added", kind: ::Time, key: "timeAdded", nilable: true, read_only: false, description: "TimeAdded represents the time at which the taint was added. It is only written for NoExecute taints."},
    {name: "value", kind: String, key: "value", nilable: true, read_only: false, description: "The taint value corresponding to the taint key."},

  ]
)
