# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ResourceClaimConsumerReference",
  namespace: "::K8S::Api::Resource::V1alpha2",
  properties: [

    {name: "api_group", kind: String, key: "apiGroup", nilable: true, read_only: false, description: "APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources."},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is the name of resource being referenced."},
    {name: "resource", kind: String, key: "resource", nilable: false, read_only: false, description: "Resource is the type of resource being referenced, for example \"pods\"."},
    {name: "uid", kind: String, key: "uid", nilable: false, read_only: false, description: "UID identifies exactly one incarnation of the resource."},

  ]
)
