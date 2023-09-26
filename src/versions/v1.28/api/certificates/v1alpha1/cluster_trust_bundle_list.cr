# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./cluster_trust_bundle"

::K8S::Kubernetes::Resource.define_resource("certificates.k8s.io", "v1alpha1", "ClusterTrustBundleList",
  namespace: "::K8S::Api::Certificates::V1alpha1",
  list: true,
  list_kind: K8S::Api::Certificates::V1alpha1::ClusterTrustBundle,
  description: "ClusterTrustBundleList is a collection of ClusterTrustBundle objects",
)
