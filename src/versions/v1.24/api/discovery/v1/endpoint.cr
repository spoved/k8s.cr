# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./endpoint_conditions"
require "./endpoint_hints"
require "../../core/v1/object_reference"

::K8S::Kubernetes::Resource.define_object("Endpoint",
  namespace: "::K8S::Api::Discovery::V1",
  properties: [

    {name: "addresses", kind: ::Set(String), key: "addresses", nilable: false, read_only: false, description: "addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100. These are all assumed to be fungible and clients may choose to only use the first element. Refer to: [https://issue.k8s.io/106267](https://issue.k8s.io/106267)"},
    {name: "conditions", kind: ::K8S::Api::Discovery::V1::EndpointConditions, key: "conditions", nilable: true, read_only: false, description: "conditions contains information about the current status of the endpoint."},
    {name: "deprecated_topology", kind: ::Hash(String, String), key: "deprecatedTopology", nilable: true, read_only: false, description: "deprecatedTopology contains topology information part of the v1beta1 API. This field is deprecated, and will be removed when the v1beta1 API is removed (no sooner than kubernetes v1.24).  While this field can hold values, it is not writable through the v1 API, and any attempts to write to it will be silently ignored. Topology information can be found in the zone and nodeName fields instead."},
    {name: "hints", kind: ::K8S::Api::Discovery::V1::EndpointHints, key: "hints", nilable: true, read_only: false, description: "hints contains information associated with how an endpoint should be consumed."},
    {name: "hostname", kind: String, key: "hostname", nilable: true, read_only: false, description: "hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation."},
    {name: "node_name", kind: String, key: "nodeName", nilable: true, read_only: false, description: "nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. This field can be enabled with the EndpointSliceNodeName feature gate."},
    {name: "target_ref", kind: ::K8S::Api::Core::V1::ObjectReference, key: "targetRef", nilable: true, read_only: false, description: "targetRef is a reference to a Kubernetes object that represents this endpoint."},
    {name: "zone", kind: String, key: "zone", nilable: true, read_only: false, description: "zone is the name of the Zone this endpoint exists in."},

  ]
)
