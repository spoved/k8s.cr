# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./network_policy"

::K8S::Kubernetes::Resource.define_resource("extensions", "v1beta1", "NetworkPolicyList",
  namespace: "::K8S::Api::Extensions::V1beta1",
  list: true,
  list_kind: K8S::Api::Extensions::V1beta1::NetworkPolicy,
  description: "DEPRECATED 1.9 - This group version of NetworkPolicyList is deprecated by networking/v1/NetworkPolicyList. Network Policy List is a list of NetworkPolicy objects.",
)
