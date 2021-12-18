# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # FlowSchemaSpec describes how the FlowSchema's specification looks like.
  @[::K8S::Properties(
    distinguisher_method: {type: Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod, nilable: true, key: "distinguisherMethod", getter: false, setter: false},
    matching_precedence: {type: Int32, nilable: true, key: "matchingPrecedence", getter: false, setter: false},
    priority_level_configuration: {type: Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference, nilable: false, key: "priorityLevelConfiguration", getter: false, setter: false},
    rules: {type: Array(Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects), nilable: true, key: "rules", getter: false, setter: false},
  )]
  class Api::Flowcontrol::V1alpha1::FlowSchemaSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # `distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string.
    @[::JSON::Field(key: "distinguisherMethod", emit_null: false)]
    @[::YAML::Field(key: "distinguisherMethod", emit_null: false)]
    property distinguisher_method : Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod | Nil

    # `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be non-negative. Note that if the precedence is not specified or zero, it will be set to 1000 as default.
    @[::JSON::Field(key: "matchingPrecedence", emit_null: false)]
    @[::YAML::Field(key: "matchingPrecedence", emit_null: false)]
    property matching_precedence : Int32 | Nil

    # `priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required.
    @[::JSON::Field(key: "priorityLevelConfiguration", emit_null: true)]
    @[::YAML::Field(key: "priorityLevelConfiguration", emit_null: true)]
    property priority_level_configuration : Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference

    # `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
    @[::JSON::Field(key: "rules", emit_null: false)]
    @[::YAML::Field(key: "rules", emit_null: false)]
    property rules : Array(Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects) | Nil

    def initialize(*, @priority_level_configuration : Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference, @distinguisher_method : Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod | Nil = nil, @matching_precedence : Int32 | Nil = nil, @rules : Array(Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects) | Nil = nil)
    end
  end
end
