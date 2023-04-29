# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./validating_admission_policy_spec"
require "./validating_admission_policy_status"

::K8S::Kubernetes::Resource.define_resource("admissionregistration.k8s.io", "v1alpha1", "ValidatingAdmissionPolicy",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Admissionregistration::V1alpha1::ValidatingAdmissionPolicySpec, key: "spec", nilable: true, read_only: false, description: "Specification of the desired behavior of the ValidatingAdmissionPolicy."},
    {name: "status", kind: ::K8S::Api::Admissionregistration::V1alpha1::ValidatingAdmissionPolicyStatus, key: "status", nilable: true, read_only: false, description: "The status of the ValidatingAdmissionPolicy, including warnings that are useful to determine if the policy behaves in the expected way. Populated by the system. Read-only."},

  ],
  description: "ValidatingAdmissionPolicy describes the definition of an admission validation policy that accepts or rejects an object without changing it.",
  versions: [{group: "admissionregistration.k8s.io", kind: "ValidatingAdmissionPolicy", version: "v1alpha1"}],
)
