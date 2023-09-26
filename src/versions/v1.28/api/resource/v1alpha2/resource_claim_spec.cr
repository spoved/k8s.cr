# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./resource_claim_parameters_reference"

::K8S::Kubernetes::Resource.define_object("ResourceClaimSpec",
  namespace: "::K8S::Api::Resource::V1alpha2",
  properties: [

    {name: "allocation_mode", kind: String, key: "allocationMode", nilable: true, read_only: false, description: "Allocation can start immediately or when a Pod wants to use the resource. \"WaitForFirstConsumer\" is the default."},
    {name: "parameters_ref", kind: ::K8S::Api::Resource::V1alpha2::ResourceClaimParametersReference, key: "parametersRef", nilable: true, read_only: false, description: "ParametersRef references a separate object with arbitrary parameters that will be used by the driver when allocating a resource for the claim.\n\nThe object must be in the same namespace as the ResourceClaim."},
    {name: "resource_class_name", kind: String, key: "resourceClassName", nilable: false, read_only: false, description: "ResourceClassName references the driver and additional parameters via the name of a ResourceClass that was created as part of the driver deployment."},

  ]
)
