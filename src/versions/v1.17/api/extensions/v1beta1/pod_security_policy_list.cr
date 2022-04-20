# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./pod_security_policy"

::K8S::Kubernetes::Resource.define_resource("extensions", "v1beta1", "PodSecurityPolicyList",
  namespace: "::K8S::Api::Extensions::V1beta1",
  list: true,
  list_kind: K8S::Api::Extensions::V1beta1::PodSecurityPolicy,
  description: "PodSecurityPolicyList is a list of PodSecurityPolicy objects. Deprecated: use PodSecurityPolicyList from policy API Group instead.",
)
