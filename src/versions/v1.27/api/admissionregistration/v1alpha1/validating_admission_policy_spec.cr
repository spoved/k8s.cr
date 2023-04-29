# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./audit_annotation"
require "./match_condition"
require "./match_resources"
require "./param_kind"
require "./validation"

::K8S::Kubernetes::Resource.define_object("ValidatingAdmissionPolicySpec",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  properties: [

    {name: "audit_annotations", kind: ::Array(::K8S::Api::Admissionregistration::V1alpha1::AuditAnnotation), key: "auditAnnotations", nilable: true, read_only: false, description: "auditAnnotations contains CEL expressions which are used to produce audit annotations for the audit event of the API request. validations and auditAnnotations may not both be empty; a least one of validations or auditAnnotations is required."},
    {name: "failure_policy", kind: String, key: "failurePolicy", nilable: true, read_only: false, description: "failurePolicy defines how to handle failures for the admission policy. Failures can occur from CEL expression parse errors, type check errors, runtime errors and invalid or mis-configured policy definitions or bindings.\n\nA policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource.\n\nfailurePolicy does not define how validations that evaluate to false are handled.\n\nWhen failurePolicy is set to Fail, ValidatingAdmissionPolicyBinding validationActions define how failures are enforced.\n\nAllowed values are Ignore or Fail. Defaults to Fail."},
    {name: "match_conditions", kind: ::Array(::K8S::Api::Admissionregistration::V1alpha1::MatchCondition), key: "matchConditions", nilable: true, read_only: false, description: "MatchConditions is a list of conditions that must be met for a request to be validated. Match conditions filter requests that have already been matched by the rules, namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.\n\nIf a parameter object is provided, it can be accessed via the `params` handle in the same manner as validation expressions.\n\nThe exact matching logic is (in order):\n  1. If ANY matchCondition evaluates to FALSE, the policy is skipped.\n  2. If ALL matchConditions evaluate to TRUE, the policy is evaluated.\n  3. If any matchCondition evaluates to an error (but none are FALSE):\n     - If failurePolicy=Fail, reject the request\n     - If failurePolicy=Ignore, the policy is skipped"},
    {name: "match_constraints", kind: ::K8S::Api::Admissionregistration::V1alpha1::MatchResources, key: "matchConstraints", nilable: true, read_only: false, description: "MatchConstraints specifies what resources this policy is designed to validate. The AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and ValidatingAdmissionPolicyBinding. Required."},
    {name: "param_kind", kind: ::K8S::Api::Admissionregistration::V1alpha1::ParamKind, key: "paramKind", nilable: true, read_only: false, description: "ParamKind specifies the kind of resources used to parameterize this policy. If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions. If ParamKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied. If paramKind is specified but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be null."},
    {name: "validations", kind: ::Array(::K8S::Api::Admissionregistration::V1alpha1::Validation), key: "validations", nilable: true, read_only: false, description: "Validations contain CEL expressions which is used to apply the validation. Validations and AuditAnnotations may not both be empty; a minimum of one Validations or AuditAnnotations is required."},

  ]
)
