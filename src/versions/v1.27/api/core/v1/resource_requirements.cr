# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./resource_claim"

::K8S::Kubernetes::Resource.define_object("ResourceRequirements",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "claims", kind: ::Array(::K8S::Api::Core::V1::ResourceClaim), key: "claims", nilable: true, read_only: false, description: "Claims lists the names of resources, defined in spec.resourceClaims, that are used by this container.\n\nThis is an alpha field and requires enabling the DynamicResourceAllocation feature gate.\n\nThis field is immutable. It can only be set for containers."},
    {name: "limits", kind: Union(::Hash(String, ::Int32 | ::String)), key: "limits", nilable: true, read_only: false, description: "Limits describes the maximum amount of compute resources allowed. More info: [https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/)"},
    {name: "requests", kind: Union(::Hash(String, ::Int32 | ::String)), key: "requests", nilable: true, read_only: false, description: "Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: [https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/)"},

  ]
)
