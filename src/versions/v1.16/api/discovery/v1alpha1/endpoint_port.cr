# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("EndpointPort",
  namespace: "::K8S::Api::Discovery::V1alpha1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "The name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass IANA_SVC_NAME validation: * must be no more than 15 characters long * may contain only [-a-z0-9] * must contain at least one letter [a-z] * it must not start or end with a hyphen, nor contain adjacent hyphens Default is empty string."},
    {name: "port", kind: Int32, key: "port", nilable: true, read_only: false, description: "The port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer."},
    {name: "protocol", kind: String, key: "protocol", nilable: true, read_only: false, description: "The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP."},

  ]
)
