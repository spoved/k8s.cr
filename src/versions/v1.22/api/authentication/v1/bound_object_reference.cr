# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("BoundObjectReference",
  namespace: "::K8S::Api::Authentication::V1",
  properties: [

    {name: "api_version", kind: String, key: "apiVersion", nilable: true, read_only: false, description: "API version of the referent."},
    {name: "kind", kind: String, key: "kind", nilable: true, read_only: false, description: "Kind of the referent. Valid kinds are 'Pod' and 'Secret'."},
    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "Name of the referent."},
    {name: "uid", kind: String, key: "uid", nilable: true, read_only: false, description: "UID of the referent."},

  ]
)
