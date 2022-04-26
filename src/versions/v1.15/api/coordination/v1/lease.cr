# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./lease_spec"

::K8S::Kubernetes::Resource.define_resource("coordination.k8s.io", "v1", "Lease",
  namespace: "::K8S::Api::Coordination::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Coordination::V1::LeaseSpec, key: "spec", nilable: true, read_only: false, description: "Specification of the Lease. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)"},

  ],
  description: "Lease defines a lease concept.",
  versions: [{group: "coordination.k8s.io", kind: "Lease", version: "v1"}],
)
