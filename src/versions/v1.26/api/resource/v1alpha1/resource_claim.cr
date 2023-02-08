# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./resource_claim_spec"
require "./resource_claim_status"

::K8S::Kubernetes::Resource.define_resource("resource.k8s.io", "v1alpha1", "ResourceClaim",
  namespace: "::K8S::Api::Resource::V1alpha1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Resource::V1alpha1::ResourceClaimSpec, key: "spec", nilable: false, read_only: false, description: "Spec describes the desired attributes of a resource that then needs to be allocated. It can only be set once when creating the ResourceClaim."},
    {name: "status", kind: ::K8S::Api::Resource::V1alpha1::ResourceClaimStatus, key: "status", nilable: true, read_only: false, description: "Status describes whether the resource is available and with which attributes."},

  ],
  description: "ResourceClaim describes which resources are needed by a resource consumer. Its status tracks whether the resource has been allocated and what the resulting attributes are.\n\nThis is an alpha type and requires enabling the DynamicResourceAllocation feature gate.",
  versions: [{group: "resource.k8s.io", kind: "ResourceClaim", version: "v1alpha1"}],
)
