# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./endpoint_conditions"
require "./endpoint_hints"
require "../../core/v1/object_reference"

::K8S::Kubernetes::Resource.define_object("Endpoint",
  namespace: "::K8S::Api::Discovery::V1beta1",
  properties: [

    {name: "addresses", kind: ::Set(String), key: "addresses", nilable: false, read_only: false, description: "addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100."},
    {name: "conditions", kind: ::K8S::Api::Discovery::V1beta1::EndpointConditions, key: "conditions", nilable: true, read_only: false, description: "conditions contains information about the current status of the endpoint."},
    {name: "hints", kind: ::K8S::Api::Discovery::V1beta1::EndpointHints, key: "hints", nilable: true, read_only: false, description: "hints contains information associated with how an endpoint should be consumed."},
    {name: "hostname", kind: String, key: "hostname", nilable: true, read_only: false, description: "hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation."},
    {name: "node_name", kind: String, key: "nodeName", nilable: true, read_only: false, description: "nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. This field can be enabled with the EndpointSliceNodeName feature gate."},
    {name: "target_ref", kind: ::K8S::Api::Core::V1::ObjectReference, key: "targetRef", nilable: true, read_only: false, description: "targetRef is a reference to a Kubernetes object that represents this endpoint."},
    {name: "topology", kind: ::Hash(String, String), key: "topology", nilable: true, read_only: false, description: "topology contains arbitrary topology information associated with the endpoint. These [key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node](key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node)\n  where the endpoint is located. This should match the corresponding\n  node label.\n* [topology.kubernetes.io/zone: the value indicates the zone where the](topology.kubernetes.io/zone: the value indicates the zone where the)\n  endpoint is located. This should match the corresponding node label.\n* [topology.kubernetes.io/region: the value indicates the region where the](topology.kubernetes.io/region: the value indicates the region where the)\n  endpoint is located. This should match the corresponding node label.\nThis field is deprecated and will be removed in future api versions."},

  ]
)
