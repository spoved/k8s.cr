# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ResourceQuotaStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "hard", kind: Union(::Hash(String, ::Int32 | ::String)), key: "hard", nilable: true, read_only: false, description: "Hard is the set of enforced hard limits for each named resource. More info: [https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/)"},
    {name: "used", kind: Union(::Hash(String, ::Int32 | ::String)), key: "used", nilable: true, read_only: false, description: "Used is the current observed total usage of the resource in the namespace."},

  ]
)
