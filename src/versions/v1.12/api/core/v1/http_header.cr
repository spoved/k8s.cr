# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("HTTPHeader",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "The header field name"},
    {name: "value", kind: String, key: "value", nilable: false, read_only: false, description: "The header field value"},

  ]
)
