# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authorization::V1::SubjectRulesReviewStatus; end

require "./non_resource_rule"
require "./resource_rule"

module K8S
  # Namespace holding the types for `Api::Authorization::V1::SubjectRulesReviewStatus`.
  module Types::Api::Authorization::V1::SubjectRulesReviewStatus
    alias ValueType = String | ::Bool | ::Array(::K8S::Api::Authorization::V1::NonResourceRule) | ::Array(::K8S::Api::Authorization::V1::ResourceRule) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules [[and/or NonResourceRules may be incomplete.](and/or NonResourceRules may be incomplete.)]([and/or NonResourceRules may be incomplete.](and/or NonResourceRules may be incomplete.))
    abstract def evaluation_error : String?
    # :ditto:
    abstract def evaluation_error! : String
    # :ditto:
    abstract def evaluation_error? : String?
    # :ditto:
    abstract def evaluation_error=(value : String?)
    # Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
    abstract def incomplete : ::Bool
    # :ditto:
    abstract def incomplete! : ::Bool
    # :ditto:
    abstract def incomplete? : ::Bool?
    # :ditto:
    abstract def incomplete=(value : ::Bool)
    # NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
    abstract def non_resource_rules : ::Array(::K8S::Api::Authorization::V1::NonResourceRule)
    # :ditto:
    abstract def non_resource_rules! : ::Array(::K8S::Api::Authorization::V1::NonResourceRule)
    # :ditto:
    abstract def non_resource_rules? : ::Array(::K8S::Api::Authorization::V1::NonResourceRule)?
    # :ditto:
    abstract def non_resource_rules=(value : ::Array(::K8S::Api::Authorization::V1::NonResourceRule))
    # ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
    abstract def resource_rules : ::Array(::K8S::Api::Authorization::V1::ResourceRule)
    # :ditto:
    abstract def resource_rules! : ::Array(::K8S::Api::Authorization::V1::ResourceRule)
    # :ditto:
    abstract def resource_rules? : ::Array(::K8S::Api::Authorization::V1::ResourceRule)?
    # :ditto:
    abstract def resource_rules=(value : ::Array(::K8S::Api::Authorization::V1::ResourceRule))
  end

  # SubjectRulesReviewStatus contains the result of a rules check. This check can be incomplete depending on the set of authorizers the server is configured with and any errors experienced during evaluation. Because authorization rules are additive, if a rule appears in a list it's safe to assume the subject has that permission, even if that list is incomplete.
  @[::K8S::Properties(
    evaluation_error: {key: "evaluationError", accessor: "evaluation_error", kind: "String", nilable: true, default: nil, read_only: false, description: "EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules [and/or NonResourceRules may be incomplete.](and/or NonResourceRules may be incomplete.)"},
    incomplete: {key: "incomplete", accessor: "incomplete", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation."},
    non_resource_rules: {key: "nonResourceRules", accessor: "non_resource_rules", kind: "::Array(::K8S::Api::Authorization::V1::NonResourceRule)", nilable: false, default: nil, read_only: false, description: "NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete."},
    resource_rules: {key: "resourceRules", accessor: "resource_rules", kind: "::Array(::K8S::Api::Authorization::V1::ResourceRule)", nilable: false, default: nil, read_only: false, description: "ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete."},
  )]
  class Api::Authorization::V1::SubjectRulesReviewStatus < ::K8S::Types::Api::Authorization::V1::SubjectRulesReviewStatus::Instance
    include ::K8S::Types::Api::Authorization::V1::SubjectRulesReviewStatus
    include ::K8S::Kubernetes::Object

    # EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules [[and/or NonResourceRules may be incomplete.](and/or NonResourceRules may be incomplete.)]([and/or NonResourceRules may be incomplete.](and/or NonResourceRules may be incomplete.))
    def evaluation_error : String?
      self.["evaluationError"].as(String?)
    end

    # :ditto:
    def evaluation_error! : String
      self.["evaluationError"].as(String?).not_nil!
    end

    # :ditto:
    def evaluation_error? : String?
      self.["evaluationError"]?.as(String?)
    end

    # :ditto:
    def evaluation_error=(value : String?)
      self.["evaluationError"] = value
    end

    # Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
    def incomplete : ::Bool
      self.["incomplete"].as(::Bool)
    end

    # :ditto:
    def incomplete! : ::Bool
      self.["incomplete"].as(::Bool).not_nil!
    end

    # :ditto:
    def incomplete? : ::Bool?
      self.["incomplete"]?.as(::Bool?)
    end

    # :ditto:
    def incomplete=(value : ::Bool)
      self.["incomplete"] = value
    end

    # NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
    def non_resource_rules : ::Array(::K8S::Api::Authorization::V1::NonResourceRule)
      self.["nonResourceRules"].as(::Array(::K8S::Api::Authorization::V1::NonResourceRule))
    end

    # :ditto:
    def non_resource_rules! : ::Array(::K8S::Api::Authorization::V1::NonResourceRule)
      self.["nonResourceRules"].as(::Array(::K8S::Api::Authorization::V1::NonResourceRule)).not_nil!
    end

    # :ditto:
    def non_resource_rules? : ::Array(::K8S::Api::Authorization::V1::NonResourceRule)?
      self.["nonResourceRules"]?.as(::Array(::K8S::Api::Authorization::V1::NonResourceRule)?)
    end

    # :ditto:
    def non_resource_rules=(value : ::Array(::K8S::Api::Authorization::V1::NonResourceRule))
      self.["nonResourceRules"] = value
    end

    # ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
    def resource_rules : ::Array(::K8S::Api::Authorization::V1::ResourceRule)
      self.["resourceRules"].as(::Array(::K8S::Api::Authorization::V1::ResourceRule))
    end

    # :ditto:
    def resource_rules! : ::Array(::K8S::Api::Authorization::V1::ResourceRule)
      self.["resourceRules"].as(::Array(::K8S::Api::Authorization::V1::ResourceRule)).not_nil!
    end

    # :ditto:
    def resource_rules? : ::Array(::K8S::Api::Authorization::V1::ResourceRule)?
      self.["resourceRules"]?.as(::Array(::K8S::Api::Authorization::V1::ResourceRule)?)
    end

    # :ditto:
    def resource_rules=(value : ::Array(::K8S::Api::Authorization::V1::ResourceRule))
      self.["resourceRules"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "evaluationError", accessor: "evaluation_error", nilable: true, read_only: false, default: nil, kind: String },
        { key: "incomplete", accessor: "incomplete", nilable: false, read_only: false, default: nil, kind: ::Bool },
        { key: "nonResourceRules", accessor: "non_resource_rules", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Api::Authorization::V1::NonResourceRule) },
        { key: "resourceRules", accessor: "resource_rules", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Api::Authorization::V1::ResourceRule) },
      ])
end
  end
end
