# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./network_policy_spec"

::K8S::Kubernetes::Resource.define_resource("networking.k8s.io", "v1", "NetworkPolicy",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Networking::V1::NetworkPolicySpec, key: "spec", nilable: true, read_only: false, description: "Specification of the desired behavior for this NetworkPolicy."},

  ],
  description: "NetworkPolicy describes what network traffic is allowed for a set of Pods",
)
