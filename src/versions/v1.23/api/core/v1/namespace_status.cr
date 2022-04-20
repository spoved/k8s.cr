# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./namespace_condition"

::K8S::Kubernetes::Resource.define_object("NamespaceStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "conditions", kind: ::Array(::K8S::Api::Core::V1::NamespaceCondition), key: "conditions", nilable: true, read_only: false, description: "Represents the latest available observations of a namespace's current state."},
    {name: "phase", kind: String, key: "phase", nilable: true, read_only: false, description: "Phase is the current lifecycle phase of the namespace. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)\n\nPossible enum values:\n - `\"Active\"` means the namespace is available for use in the system\n - `\"Terminating\"` means the namespace is undergoing graceful termination"},

  ]
)
