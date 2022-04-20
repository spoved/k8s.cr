# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("Sysctl",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name of a property to set"},
    {name: "value", kind: String, key: "value", nilable: false, read_only: false, description: "Value of a property to set"},

  ]
)
