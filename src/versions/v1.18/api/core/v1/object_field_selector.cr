# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ObjectFieldSelector",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "api_version", kind: String, key: "apiVersion", nilable: true, read_only: false, description: "Version of the schema the FieldPath is written in terms of, defaults to \"v1\"."},
    {name: "field_path", kind: String, key: "fieldPath", nilable: false, read_only: false, description: "Path of the field to select in the specified API version."},

  ]
)
