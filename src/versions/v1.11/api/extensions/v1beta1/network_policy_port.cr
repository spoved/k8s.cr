# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("NetworkPolicyPort",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "port", kind: Union(::Int32 | ::String), key: "port", nilable: true, read_only: false, description: "If specified, the port on the given protocol.  This can either be a numerical or named port on a pod.  If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched."},
    {name: "protocol", kind: String, key: "protocol", nilable: true, read_only: false, description: "Optional.  The protocol (TCP or UDP) which traffic must match. If not specified, this field defaults to TCP."},

  ]
)
