# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./resource_claim_scheduling_status"

::K8S::Kubernetes::Resource.define_object("PodSchedulingContextStatus",
  namespace: "::K8S::Api::Resource::V1alpha2",
  properties: [

    {name: "resource_claims", kind: ::Array(::K8S::Api::Resource::V1alpha2::ResourceClaimSchedulingStatus), key: "resourceClaims", nilable: true, read_only: false, description: "ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses \"WaitForFirstConsumer\" allocation mode."},

  ]
)
