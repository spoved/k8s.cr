# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("NamespaceSpec",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "finalizers", kind: ::Array(String), key: "finalizers", nilable: true, read_only: false, description: "Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)"},

  ]
)
