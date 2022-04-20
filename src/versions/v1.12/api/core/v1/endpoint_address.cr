# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./object_reference"

::K8S::Kubernetes::Resource.define_object("EndpointAddress",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "hostname", kind: String, key: "hostname", nilable: true, read_only: false, description: "The Hostname of this endpoint"},
    {name: "ip", kind: String, key: "ip", nilable: false, read_only: false, description: "The IP of this endpoint. May not be loopback [(127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.]((127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.)"},
    {name: "node_name", kind: String, key: "nodeName", nilable: true, read_only: false, description: "Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node."},
    {name: "target_ref", kind: ::K8S::Api::Core::V1::ObjectReference, key: "targetRef", nilable: true, read_only: false, description: "Reference to object providing the endpoint."},

  ]
)
