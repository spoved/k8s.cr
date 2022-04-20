# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./flow_distinguisher_method"
require "./priority_level_configuration_reference"
require "./policy_rules_with_subjects"

::K8S::Kubernetes::Resource.define_object("FlowSchemaSpec",
  namespace: "::K8S::Api::Flowcontrol::V1alpha1",
  properties: [

    {name: "distinguisher_method", kind: ::K8S::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod, key: "distinguisherMethod", nilable: true, read_only: false, description: "`distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string."},
    {name: "matching_precedence", kind: Int32, key: "matchingPrecedence", nilable: true, read_only: false, description: "`matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in [1,10000]. Note that if the precedence is not specified, it will be set to 1000 as default."},
    {name: "priority_level_configuration", kind: ::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference, key: "priorityLevelConfiguration", nilable: false, read_only: false, description: "`priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required."},
    {name: "rules", kind: ::Array(::K8S::Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects), key: "rules", nilable: true, read_only: false, description: "`rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema."},

  ]
)
