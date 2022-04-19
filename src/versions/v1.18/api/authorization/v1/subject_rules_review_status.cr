# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./non_resource_rule"
require "./resource_rule"

::K8S::Kubernetes::Resource.define_object("SubjectRulesReviewStatus",
  namespace: "::K8S::Api::Authorization::V1",
  properties: [

    {name: "evaluation_error", kind: String, key: "evaluationError", nilable: true, read_only: false, description: "EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules [and/or NonResourceRules may be incomplete.](and/or NonResourceRules may be incomplete.)"},
    {name: "incomplete", kind: ::Bool, key: "incomplete", nilable: false, read_only: false, description: "Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation."},
    {name: "non_resource_rules", kind: ::Array(::K8S::Api::Authorization::V1::NonResourceRule), key: "nonResourceRules", nilable: false, read_only: false, description: "NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete."},
    {name: "resource_rules", kind: ::Array(::K8S::Api::Authorization::V1::ResourceRule), key: "resourceRules", nilable: false, read_only: false, description: "ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete."},

  ]
)
