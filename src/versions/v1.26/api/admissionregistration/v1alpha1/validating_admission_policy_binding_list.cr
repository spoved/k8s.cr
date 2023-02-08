# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./validating_admission_policy_binding"

::K8S::Kubernetes::Resource.define_resource("admissionregistration.k8s.io", "v1alpha1", "ValidatingAdmissionPolicyBindingList",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  list: true,
  list_kind: K8S::Api::Admissionregistration::V1alpha1::ValidatingAdmissionPolicyBinding,
  description: "ValidatingAdmissionPolicyBindingList is a list of ValidatingAdmissionPolicyBinding.",
)
