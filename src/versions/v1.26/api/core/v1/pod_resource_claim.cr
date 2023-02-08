# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./claim_source"

::K8S::Kubernetes::Resource.define_object("PodResourceClaim",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name uniquely identifies this resource claim inside the pod. This must be a DNS_LABEL."},
    {name: "source", kind: ::K8S::Api::Core::V1::ClaimSource, key: "source", nilable: true, read_only: false, description: "Source describes where to find the ResourceClaim."},

  ]
)
