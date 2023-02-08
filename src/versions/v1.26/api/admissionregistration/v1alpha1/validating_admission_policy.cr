# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./validating_admission_policy_spec"

::K8S::Kubernetes::Resource.define_resource("admissionregistration.k8s.io", "v1alpha1", "ValidatingAdmissionPolicy",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Admissionregistration::V1alpha1::ValidatingAdmissionPolicySpec, key: "spec", nilable: true, read_only: false, description: "Specification of the desired behavior of the ValidatingAdmissionPolicy."},

  ],
  description: "ValidatingAdmissionPolicy describes the definition of an admission validation policy that accepts or rejects an object without changing it.",
  versions: [{group: "admissionregistration.k8s.io", kind: "ValidatingAdmissionPolicy", version: "v1alpha1"}],
)
