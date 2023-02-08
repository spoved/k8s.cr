# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("NetworkPolicyPort",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "end_port", kind: Int32, key: "endPort", nilable: true, read_only: false, description: "If set, indicates that the range of ports from port to endPort, inclusive, should be allowed by the policy. This field cannot be defined if the port field is not defined or if the port field is defined as a named (string) port. The endPort must be equal or greater than port."},
    {name: "port", kind: Union(::Int32 | ::String), key: "port", nilable: true, read_only: false, description: "The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched."},
    {name: "protocol", kind: String, key: "protocol", nilable: true, read_only: false, description: "The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP."},

  ]
)
