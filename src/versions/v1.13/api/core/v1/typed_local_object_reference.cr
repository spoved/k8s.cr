# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("TypedLocalObjectReference",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "api_group", kind: String, key: "apiGroup", nilable: true, read_only: false, description: "APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required."},
    {name: "kind", kind: String, key: "kind", nilable: false, read_only: false, description: "Kind is the type of resource being referenced"},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is the name of resource being referenced"},

  ]
)
