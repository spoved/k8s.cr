# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SubjectRulesReviewStatus contains the result of a rules check. This check can be incomplete depending on the set of authorizers the server is configured with and any errors experienced during evaluation. Because authorization rules are additive, if a rule appears in a list it's safe to assume the subject has that permission, even if that list is incomplete.
  @[::K8S::Properties(
    evaluation_error: {type: String, nilable: true, key: "evaluationError", getter: false, setter: false},
    incomplete: {type: Bool, nilable: false, key: "incomplete", getter: false, setter: false},
    non_resource_rules: {type: Array(Api::Authorization::V1::NonResourceRule), nilable: false, key: "nonResourceRules", getter: false, setter: false},
    resource_rules: {type: Array(Api::Authorization::V1::ResourceRule), nilable: false, key: "resourceRules", getter: false, setter: false},
  )]
  class Api::Authorization::V1::SubjectRulesReviewStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules [and/or NonResourceRules may be incomplete.](and/or NonResourceRules may be incomplete.)
    @[::JSON::Field(key: "evaluationError", emit_null: false)]
    @[::YAML::Field(key: "evaluationError", emit_null: false)]
    property evaluation_error : String | Nil

    # Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
    @[::JSON::Field(key: "incomplete", emit_null: true)]
    @[::YAML::Field(key: "incomplete", emit_null: true)]
    property incomplete : Bool

    # NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
    @[::JSON::Field(key: "nonResourceRules", emit_null: true)]
    @[::YAML::Field(key: "nonResourceRules", emit_null: true)]
    property non_resource_rules : Array(Api::Authorization::V1::NonResourceRule)

    # ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
    @[::JSON::Field(key: "resourceRules", emit_null: true)]
    @[::YAML::Field(key: "resourceRules", emit_null: true)]
    property resource_rules : Array(Api::Authorization::V1::ResourceRule)

    def initialize(*, @incomplete : Bool, @non_resource_rules : Array(Api::Authorization::V1::NonResourceRule), @resource_rules : Array(Api::Authorization::V1::ResourceRule), @evaluation_error : String | Nil = nil)
    end
  end
end
