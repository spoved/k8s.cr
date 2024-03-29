# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./pod_security_policy_spec"

::K8S::Kubernetes::Resource.define_resource("policy", "v1beta1", "PodSecurityPolicy",
  namespace: "::K8S::Api::Policy::V1beta1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Policy::V1beta1::PodSecurityPolicySpec, key: "spec", nilable: true, read_only: false, description: "spec defines the policy enforced."},

  ],
  description: "PodSecurityPolicy governs the ability to make requests that affect the Security Context that will be applied to a pod and container.",
  versions: [{group: "policy", kind: "PodSecurityPolicy", version: "v1beta1"}],
)
