# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("Toleration",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "effect", kind: String, key: "effect", nilable: true, read_only: false, description: "Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute."},
    {name: "key", kind: String, key: "key", nilable: true, read_only: false, description: "Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys."},
    {name: "operator", kind: String, key: "operator", nilable: true, read_only: false, description: "Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category."},
    {name: "toleration_seconds", kind: Int32, key: "tolerationSeconds", nilable: true, read_only: false, description: "TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system."},
    {name: "value", kind: String, key: "value", nilable: true, read_only: false, description: "Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string."},

  ]
)
