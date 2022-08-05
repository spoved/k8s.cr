# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./network_policy_spec"
require "./network_policy_status"

::K8S::Kubernetes::Resource.define_resource("networking.k8s.io", "v1", "NetworkPolicy",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Networking::V1::NetworkPolicySpec, key: "spec", nilable: true, read_only: false, description: "Specification of the desired behavior for this NetworkPolicy."},
    {name: "status", kind: ::K8S::Api::Networking::V1::NetworkPolicyStatus, key: "status", nilable: true, read_only: false, description: "Status is the current state of the NetworkPolicy. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "NetworkPolicy describes what network traffic is allowed for a set of Pods",
  versions: [{group: "networking.k8s.io", kind: "NetworkPolicy", version: "v1"}],
)
