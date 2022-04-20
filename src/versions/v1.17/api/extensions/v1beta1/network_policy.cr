# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./network_policy_spec"

::K8S::Kubernetes::Resource.define_resource("extensions", "v1beta1", "NetworkPolicy",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Extensions::V1beta1::NetworkPolicySpec, key: "spec", nilable: true, read_only: false, description: "Specification of the desired behavior for this NetworkPolicy."},

  ],
  description: "DEPRECATED 1.9 - This group version of NetworkPolicy is deprecated by networking/v1/NetworkPolicy. NetworkPolicy describes what network traffic is allowed for a set of Pods",
)
