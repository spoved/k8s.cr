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
  description: "ValidatingAdmissionPolicyBinding binds the ValidatingAdmissionPolicy with paramerized resources. ValidatingAdmissionPolicyBinding and parameter CRDs together define how cluster administrators configure policies for clusters.",
  versions: [{group: "admissionregistration.k8s.io", kind: "ValidatingAdmissionPolicyBinding", version: "v1alpha1"}],
)
