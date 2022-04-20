# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("NodeAddress",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "address", kind: String, key: "address", nilable: false, read_only: false, description: "The node address."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "Node address type, one of Hostname, ExternalIP or InternalIP."},

  ]
)
