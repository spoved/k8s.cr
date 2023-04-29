# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ParentReference",
  namespace: "::K8S::Api::Networking::V1alpha1",
  properties: [

    {name: "group", kind: String, key: "group", nilable: true, read_only: false, description: "Group is the group of the object being referenced."},
    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "Name is the name of the object being referenced."},
    {name: "namespace", kind: String, key: "namespace", nilable: true, read_only: false, description: "Namespace is the namespace of the object being referenced."},
    {name: "resource", kind: String, key: "resource", nilable: true, read_only: false, description: "Resource is the resource of the object being referenced."},
    {name: "uid", kind: String, key: "uid", nilable: true, read_only: false, description: "UID is the uid of the object being referenced."},

  ]
)
