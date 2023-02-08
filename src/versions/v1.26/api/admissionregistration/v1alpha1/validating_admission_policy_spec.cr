# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./match_resources"
require "./param_kind"
require "./validation"

::K8S::Kubernetes::Resource.define_object("ValidatingAdmissionPolicySpec",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  properties: [

    {name: "failure_policy", kind: String, key: "failurePolicy", nilable: true, read_only: false, description: "FailurePolicy defines how to handle failures for the admission policy. Failures can occur from invalid or mis-configured policy definitions or bindings. A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource. Allowed values are Ignore or Fail. Defaults to Fail."},
    {name: "match_constraints", kind: ::K8S::Api::Admissionregistration::V1alpha1::MatchResources, key: "matchConstraints", nilable: true, read_only: false, description: "MatchConstraints specifies what resources this policy is designed to validate. The AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and ValidatingAdmissionPolicyBinding. Required."},
    {name: "param_kind", kind: ::K8S::Api::Admissionregistration::V1alpha1::ParamKind, key: "paramKind", nilable: true, read_only: false, description: "ParamKind specifies the kind of resources used to parameterize this policy. If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions. If ParamKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied. If paramKind is specified but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be null."},
    {name: "validations", kind: ::Array(::K8S::Api::Admissionregistration::V1alpha1::Validation), key: "validations", nilable: false, read_only: false, description: "Validations contain CEL expressions which is used to apply the validation. A minimum of one validation is required for a policy definition. Required."},

  ]
)
