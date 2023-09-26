# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ResourceClaimSchedulingStatus",
  namespace: "::K8S::Api::Resource::V1alpha2",
  properties: [

    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "Name matches the pod.spec.resourceClaims[*].Name field."},
    {name: "unsuitable_nodes", kind: ::Set(String), key: "unsuitableNodes", nilable: true, read_only: false, description: "UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.\n\nThe size of this field is limited to 128, the same as for PodSchedulingSpec.PotentialNodes. This may get increased in the future, but not reduced."},

  ]
)
