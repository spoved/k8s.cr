# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ClaimSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "resource_claim_name", kind: String, key: "resourceClaimName", nilable: true, read_only: false, description: "ResourceClaimName is the name of a ResourceClaim object in the same namespace as this pod."},
    {name: "resource_claim_template_name", kind: String, key: "resourceClaimTemplateName", nilable: true, read_only: false, description: "ResourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace as this pod.\n\nThe template will be used to create a new ResourceClaim, which will be bound to this pod. When this pod is deleted, the ResourceClaim will also be deleted. The name of the ResourceClaim will be <pod name>-<resource name>, where <resource name> is the PodResourceClaim.Name. Pod validation will reject the pod if the concatenated name is not valid for a ResourceClaim (e.g. too long).\n\nAn existing ResourceClaim with that name that is not owned by the pod will not be used for the pod to avoid using an unrelated resource by mistake. Scheduling and pod startup are then blocked until the unrelated ResourceClaim is removed.\n\nThis field is immutable and no changes will be made to the corresponding ResourceClaim by the control plane after creating the ResourceClaim."},

  ]
)
