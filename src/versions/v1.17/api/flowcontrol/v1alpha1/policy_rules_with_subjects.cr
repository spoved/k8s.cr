# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./non_resource_policy_rule"
require "./resource_policy_rule"
require "./subject"

::K8S::Kubernetes::Resource.define_object("PolicyRulesWithSubjects",
  namespace: "::K8S::Api::Flowcontrol::V1alpha1",
  properties: [

    {name: "non_resource_rules", kind: ::Set(::K8S::Api::Flowcontrol::V1alpha1::NonResourcePolicyRule), key: "nonResourceRules", nilable: true, read_only: false, description: "`nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL."},
    {name: "resource_rules", kind: ::Set(::K8S::Api::Flowcontrol::V1alpha1::ResourcePolicyRule), key: "resourceRules", nilable: true, read_only: false, description: "`resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty."},
    {name: "subjects", kind: ::Set(::K8S::Api::Flowcontrol::V1alpha1::Subject), key: "subjects", nilable: false, read_only: false, description: "subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required."},

  ]
)
