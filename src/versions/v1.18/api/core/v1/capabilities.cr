# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("Capabilities",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "add", kind: ::Array(String), key: "add", nilable: true, read_only: false, description: "Added capabilities"},
    {name: "drop", kind: ::Array(String), key: "drop", nilable: true, read_only: false, description: "Removed capabilities"},

  ]
)
