# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ClaimSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "resource_claim_name", kind: String, key: "resourceClaimName", nilable: true, read_only: false, description: "ResourceClaimName is the name of a ResourceClaim object in the same namespace as this pod."},
    {name: "resource_claim_template_name", kind: String, key: "resourceClaimTemplateName", nilable: true, read_only: false, description: "ResourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace as this pod.\n\nThe template will be used to create a new ResourceClaim, which will be bound to this pod. When this pod is deleted, the ResourceClaim will also be deleted. The pod name and resource name, along with a generated component, will be used to form a unique name for the ResourceClaim, which will be recorded in pod.status.resourceClaimStatuses.\n\nThis field is immutable and no changes will be made to the corresponding ResourceClaim by the control plane after creating the ResourceClaim."},

  ]
)
