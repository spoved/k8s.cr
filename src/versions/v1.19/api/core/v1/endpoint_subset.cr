# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./endpoint_address"
require "./endpoint_port"

::K8S::Kubernetes::Resource.define_object("EndpointSubset",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "addresses", kind: ::Array(::K8S::Api::Core::V1::EndpointAddress), key: "addresses", nilable: true, read_only: false, description: "IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize."},
    {name: "not_ready_addresses", kind: ::Array(::K8S::Api::Core::V1::EndpointAddress), key: "notReadyAddresses", nilable: true, read_only: false, description: "IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check."},
    {name: "ports", kind: ::Array(::K8S::Api::Core::V1::EndpointPort), key: "ports", nilable: true, read_only: false, description: "Port numbers available on the related IP addresses."},

  ]
)
