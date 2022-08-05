# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ResourceAttributes",
  namespace: "::K8S::Api::Authorization::V1",
  properties: [

    {name: "group", kind: String, key: "group", nilable: true, read_only: false, description: "Group is the API Group of the Resource.  \"*\" means all."},
    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "Name is the name of the resource being requested for a \"get\" or deleted for a \"delete\". \"\" (empty) means all."},
    {name: "namespace", kind: String, key: "namespace", nilable: true, read_only: false, description: "Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces \"\" (empty) is defaulted for LocalSubjectAccessReviews \"\" (empty) is empty for cluster-scoped resources \"\" (empty) means \"all\" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview"},
    {name: "resource", kind: String, key: "resource", nilable: true, read_only: false, description: "Resource is one of the existing resource types.  \"*\" means all."},
    {name: "subresource", kind: String, key: "subresource", nilable: true, read_only: false, description: "Subresource is one of the existing resource types.  \"\" means none."},
    {name: "verb", kind: String, key: "verb", nilable: true, read_only: false, description: "Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  \"*\" means all."},
    {name: "version", kind: String, key: "version", nilable: true, read_only: false, description: "Version is the API Version of the Resource.  \"*\" means all."},

  ]
)
