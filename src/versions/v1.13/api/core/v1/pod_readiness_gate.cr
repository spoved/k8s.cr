# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PodReadinessGate",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "condition_type", kind: String, key: "conditionType", nilable: false, read_only: false, description: "ConditionType refers to a condition in the pod's condition list with matching type."},

  ]
)
