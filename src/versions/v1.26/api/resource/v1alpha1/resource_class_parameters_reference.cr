# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ResourceClassParametersReference",
  namespace: "::K8S::Api::Resource::V1alpha1",
  properties: [

    {name: "api_group", kind: String, key: "apiGroup", nilable: true, read_only: false, description: "APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources."},
    {name: "kind", kind: String, key: "kind", nilable: false, read_only: false, description: "Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata."},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is the name of resource being referenced."},
    {name: "namespace", kind: String, key: "namespace", nilable: true, read_only: false, description: "Namespace that contains the referenced resource. Must be empty for cluster-scoped resources and non-empty for namespaced resources."},

  ]
)
