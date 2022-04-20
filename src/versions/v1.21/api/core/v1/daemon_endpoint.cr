# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("DaemonEndpoint",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "port", kind: Int32, key: "Port", nilable: false, read_only: false, description: "Port number of the given endpoint."},

  ]
)
