# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("RoleRef",
  namespace: "::K8S::Api::Rbac::V1",
  properties: [

    {name: "api_group", kind: String, key: "apiGroup", nilable: false, read_only: false, description: "APIGroup is the group for the resource being referenced"},
    {name: "kind", kind: String, key: "kind", nilable: false, read_only: false, description: "Kind is the type of resource being referenced"},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is the name of resource being referenced"},

  ]
)
