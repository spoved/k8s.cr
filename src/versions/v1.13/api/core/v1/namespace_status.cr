# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("NamespaceStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "phase", kind: String, key: "phase", nilable: true, read_only: false, description: "Phase is the current lifecycle phase of the namespace. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)"},

  ]
)
