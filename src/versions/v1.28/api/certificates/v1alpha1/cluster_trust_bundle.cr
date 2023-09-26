# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./cluster_trust_bundle_spec"

::K8S::Kubernetes::Resource.define_resource("certificates.k8s.io", "v1alpha1", "ClusterTrustBundle",
  namespace: "::K8S::Api::Certificates::V1alpha1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Certificates::V1alpha1::ClusterTrustBundleSpec, key: "spec", nilable: false, read_only: false, description: "spec contains the signer (if any) and trust anchors."},

  ],
  description: "ClusterTrustBundle is a cluster-scoped container for X.509 trust anchors (root certificates).\n\nClusterTrustBundle objects are considered to be readable by any authenticated user in the cluster, because they can be mounted by pods using the `clusterTrustBundle` projection.  All service accounts have read access to ClusterTrustBundles by default.  Users who only have namespace-level access to a cluster can read ClusterTrustBundles by impersonating a serviceaccount that they have access to.\n\nIt can be optionally associated with a particular assigner, in which case it contains one valid set of trust anchors for that signer. Signers may have multiple associated ClusterTrustBundles; each is an independent set of trust anchors for that signer. Admission control is used to enforce that only users with permissions on the signer can create or modify the corresponding bundle.",
  versions: [{group: "certificates.k8s.io", kind: "ClusterTrustBundle", version: "v1alpha1"}],
)
