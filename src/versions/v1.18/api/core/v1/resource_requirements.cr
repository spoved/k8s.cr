# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ResourceRequirements",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "limits", kind: Union(::Hash(String, ::Int32 | ::String)), key: "limits", nilable: true, read_only: false, description: "Limits describes the maximum amount of compute resources allowed. More info: [https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/)"},
    {name: "requests", kind: Union(::Hash(String, ::Int32 | ::String)), key: "requests", nilable: true, read_only: false, description: "Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: [https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/)"},

  ]
)
