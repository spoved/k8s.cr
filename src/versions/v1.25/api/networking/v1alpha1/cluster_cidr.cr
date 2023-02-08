# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./cluster_cidr_spec"

::K8S::Kubernetes::Resource.define_resource("networking.k8s.io", "v1alpha1", "ClusterCIDR",
  namespace: "::K8S::Api::Networking::V1alpha1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Networking::V1alpha1::ClusterCIDRSpec, key: "spec", nilable: true, read_only: false, description: "Spec is the desired state of the ClusterCIDR. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "ClusterCIDR represents a single configuration for per-Node Pod CIDR allocations when the MultiCIDRRangeAllocator is enabled (see the config for kube-controller-manager).  A cluster may have any number of ClusterCIDR resources, all of which will be considered when allocating a CIDR for a Node.  A ClusterCIDR is eligible to be used for a given Node when the node selector matches the node in question and has free CIDRs to allocate.  In case of multiple matching ClusterCIDR resources, the allocator will attempt to break ties using internal heuristics, but any ClusterCIDR whose node selector matches the Node may be used.",
  versions: [{group: "networking.k8s.io", kind: "ClusterCIDR", version: "v1alpha1"}],
)
