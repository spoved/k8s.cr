# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PodFailurePolicyOnPodConditionsPattern",
  namespace: "::K8S::Api::Batch::V1",
  properties: [

    {name: "status", kind: String, key: "status", nilable: false, read_only: false, description: "Specifies the required Pod condition status. To match a pod condition it is required that the specified status equals the pod condition status. Defaults to True."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "Specifies the required Pod condition type. To match a pod condition it is required that specified type equals the pod condition type."},

  ]
)
