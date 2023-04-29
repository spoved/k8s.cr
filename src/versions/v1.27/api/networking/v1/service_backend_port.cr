# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ServiceBackendPort",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "name is the name of the port on the Service. This is a mutually exclusive setting with \"Number\"."},
    {name: "number", kind: Int32, key: "number", nilable: true, read_only: false, description: "number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with \"Name\"."},

  ]
)
