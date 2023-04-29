# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./validating_admission_policy"

::K8S::Kubernetes::Resource.define_resource("admissionregistration.k8s.io", "v1alpha1", "ValidatingAdmissionPolicyList",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  list: true,
  list_kind: K8S::Api::Admissionregistration::V1alpha1::ValidatingAdmissionPolicy,
  description: "ValidatingAdmissionPolicyList is a list of ValidatingAdmissionPolicy.",
)
