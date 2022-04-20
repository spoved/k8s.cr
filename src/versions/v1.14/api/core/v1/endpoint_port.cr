# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("EndpointPort",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "The name of this port (corresponds to ServicePort.Name). Must be a DNS_LABEL. Optional only if one port is defined."},
    {name: "port", kind: Int32, key: "port", nilable: false, read_only: false, description: "The port number of the endpoint."},
    {name: "protocol", kind: String, key: "protocol", nilable: true, read_only: false, description: "The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP."},

  ]
)
