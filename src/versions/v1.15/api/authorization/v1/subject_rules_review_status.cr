# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authorization::V1::SubjectRulesReviewStatus; end

require "./non_resource_rule"
require "./resource_rule"

module K8S
  # Namespace holding the types for `Api::Authorization::V1::SubjectRulesReviewStatus`.
  module Types::Api::Authorization::V1::SubjectRulesReviewStatus
    # EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules [[and/or NonResourceRules may be incomplete.](and/or NonResourceRules may be incomplete.)]([and/or NonResourceRules may be incomplete.](and/or NonResourceRules may be incomplete.))
    abstract def evaluation_error : String?
    # :ditto:
    abstract def evaluation_error! : String
    # :ditto:
    abstract def evaluation_error? : String?
    # :ditto:
    abstract def evaluation_error=(value : String)
    # Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
    abstract def incomplete : ::Bool?
    # :ditto:
    abstract def incomplete! : ::Bool
    # :ditto:
    abstract def incomplete? : ::Bool?
    # :ditto:
    abstract def incomplete=(value : ::Bool)
    # NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
    abstract def non_resource_rules : ::Array(::K8S::Api::Authorization::V1::NonResourceRule)?
    # :ditto:
    abstract def non_resource_rules! : ::Array(::K8S::Api::Authorization::V1::NonResourceRule)
    # :ditto:
    abstract def non_resource_rules? : ::Array(::K8S::Api::Authorization::V1::NonResourceRule)?
    # :ditto:
    abstract def non_resource_rules=(value : ::Array(::K8S::Api::Authorization::V1::NonResourceRule))
    # ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
    abstract def resource_rules : ::Array(::K8S::Api::Authorization::V1::ResourceRule)?
    # :ditto:
    abstract def resource_rules! : ::Array(::K8S::Api::Authorization::V1::ResourceRule)
    # :ditto:
    abstract def resource_rules? : ::Array(::K8S::Api::Authorization::V1::ResourceRule)?
    # :ditto:
    abstract def resource_rules=(value : ::Array(::K8S::Api::Authorization::V1::ResourceRule))
  end

  # SubjectRulesReviewStatus contains the result of a rules check. This check can be incomplete depending on the set of authorizers the server is configured with and any errors experienced during evaluation. Because authorization rules are additive, if a rule appears in a list it's safe to assume the subject has that permission, even if that list is incomplete.
  @[::K8S::Properties(
    evaluation_error: {key: "evaluationError", accessor: "evaluation_error", kind: "String", nilable: true, default: nil, read_only: false, description: "EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules [and/or NonResourceRules may be incomplete.](and/or NonResourceRules may be incomplete.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    incomplete: {key: "incomplete", accessor: "incomplete", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    non_resource_rules: {key: "nonResourceRules", accessor: "non_resource_rules", kind: "::Array(::K8S::Api::Authorization::V1::NonResourceRule)", nilable: false, default: nil, read_only: false, description: "NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resource_rules: {key: "resourceRules", accessor: "resource_rules", kind: "::Array(::K8S::Api::Authorization::V1::ResourceRule)", nilable: false, default: nil, read_only: false, description: "ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Authorization::V1::SubjectRulesReviewStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Authorization::V1::SubjectRulesReviewStatus
    k8s_object_accessor("evaluationError", evaluation_error : String, true, false, "EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules [and/or NonResourceRules may be incomplete.](and/or NonResourceRules may be incomplete.)")
    k8s_object_accessor("incomplete", incomplete : ::Bool, false, false, "Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.")
    k8s_object_accessor("nonResourceRules", non_resource_rules : ::Array(::K8S::Api::Authorization::V1::NonResourceRule), false, false, "NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.")
    k8s_object_accessor("resourceRules", resource_rules : ::Array(::K8S::Api::Authorization::V1::ResourceRule), false, false, "ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.")

    def initialize(*, evaluation_error : String? = nil, incomplete : ::Bool? = nil, non_resource_rules : ::Array(::K8S::Api::Authorization::V1::NonResourceRule)? = nil, resource_rules : ::Array(::K8S::Api::Authorization::V1::ResourceRule)? = nil)
      super()
      self.["evaluationError"] = evaluation_error
      self.["incomplete"] = incomplete
      self.["nonResourceRules"] = non_resource_rules
      self.["resourceRules"] = resource_rules
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "evaluationError", accessor: "evaluation_error", nilable: true, read_only: false, default: nil, kind: String},
      {key: "incomplete", accessor: "incomplete", nilable: false, read_only: false, default: nil, kind: ::Bool},
      {key: "nonResourceRules", accessor: "non_resource_rules", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Api::Authorization::V1::NonResourceRule)},
      {key: "resourceRules", accessor: "resource_rules", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Api::Authorization::V1::ResourceRule)},
    ])
  end
end
