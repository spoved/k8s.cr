# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./validating_admission_policy_binding_spec"

::K8S::Kubernetes::Resource.define_resource("admissionregistration.k8s.io", "v1alpha1", "ValidatingAdmissionPolicyBinding",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Admissionregistration::V1alpha1::ValidatingAdmissionPolicyBindingSpec, key: "spec", nilable: true, read_only: false, description: "Specification of the desired behavior of the ValidatingAdmissionPolicyBinding."},

  ],
  description: "ValidatingAdmissionPolicyBinding binds the ValidatingAdmissionPolicy with paramerized resources. ValidatingAdmissionPolicyBinding and parameter CRDs together define how cluster administrators configure policies for clusters.\n\nFor a given admission request, each binding will cause its policy to be evaluated N times, where N is 1 for policies/bindings that don't use params, otherwise N is the number of parameters selected by the binding.\n\nThe CEL expressions of a policy must have a computed CEL cost below the maximum CEL budget. Each evaluation of the policy is given an independent CEL cost budget. Adding/removing policies, bindings, or params can not affect whether a given (policy, binding, param) combination is within its own CEL budget.",
  versions: [{group: "admissionregistration.k8s.io", kind: "ValidatingAdmissionPolicyBinding", version: "v1alpha1"}],
)
