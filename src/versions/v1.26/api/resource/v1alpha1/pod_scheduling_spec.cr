# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PodSchedulingSpec",
  namespace: "::K8S::Api::Resource::V1alpha1",
  properties: [

    {name: "potential_nodes", kind: ::Set(String), key: "potentialNodes", nilable: true, read_only: false, description: "PotentialNodes lists nodes where the Pod might be able to run.\n\nThe size of this field is limited to 128. This is large enough for many clusters. Larger clusters may need more attempts to find a node that suits all pending resources. This may get increased in the future, but not reduced."},
    {name: "selected_node", kind: String, key: "selectedNode", nilable: true, read_only: false, description: "SelectedNode is the node for which allocation of ResourceClaims that are referenced by the Pod and that use \"WaitForFirstConsumer\" allocation is to be attempted."},

  ]
)
