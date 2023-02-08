# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./cluster_cidr"

::K8S::Kubernetes::Resource.define_resource("networking.k8s.io", "v1alpha1", "ClusterCIDRList",
  namespace: "::K8S::Api::Networking::V1alpha1",
  list: true,
  list_kind: K8S::Api::Networking::V1alpha1::ClusterCIDR,
  description: "ClusterCIDRList contains a list of ClusterCIDR.",
)
