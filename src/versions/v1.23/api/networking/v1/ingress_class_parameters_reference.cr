# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("IngressClassParametersReference",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "api_group", kind: String, key: "apiGroup", nilable: true, read_only: false, description: "APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required."},
    {name: "kind", kind: String, key: "kind", nilable: false, read_only: false, description: "Kind is the type of resource being referenced."},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is the name of resource being referenced."},
    {name: "namespace", kind: String, key: "namespace", nilable: true, read_only: false, description: "Namespace is the namespace of the resource being referenced. This field is required when scope is set to \"Namespace\" and must be unset when scope is set to \"Cluster\"."},
    {name: "scope", kind: String, key: "scope", nilable: true, read_only: false, description: "Scope represents if this refers to a cluster or namespace scoped resource. This may be set to \"Cluster\" (default) or \"Namespace\"."},

  ]
)
