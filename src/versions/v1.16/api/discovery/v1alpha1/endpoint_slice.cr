# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./endpoint"
require "./endpoint_port"

::K8S::Kubernetes::Resource.define_resource("discovery.k8s.io", "v1alpha1", "EndpointSlice",
  namespace: "::K8S::Api::Discovery::V1alpha1",
  properties: [

    {name: "address_type", kind: String, key: "addressType", nilable: true, read_only: false, description: "addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. Default is IP"},
    {name: "endpoints", kind: ::Array(::K8S::Api::Discovery::V1alpha1::Endpoint), key: "endpoints", nilable: true, read_only: false, description: "endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints."},
    {name: "ports", kind: ::Array(::K8S::Api::Discovery::V1alpha1::EndpointPort), key: "ports", nilable: true, read_only: false, description: "ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates \"all ports\". Each slice may include a maximum of 100 ports."},

  ],
  description: "EndpointSlice represents a subset of the endpoints that implement a service. For a given service there may be multiple EndpointSlice objects, selected by labels, which must be joined to produce the full set of endpoints.",
)
