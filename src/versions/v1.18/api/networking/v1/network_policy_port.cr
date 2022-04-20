# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("NetworkPolicyPort",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "port", kind: Union(::Int32 | ::String), key: "port", nilable: true, read_only: false, description: "The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers."},
    {name: "protocol", kind: String, key: "protocol", nilable: true, read_only: false, description: "The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP."},

  ]
)
