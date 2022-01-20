# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1alpha1::FlowSchemaSpec; end

require "./flow_distinguisher_method"
require "./priority_level_configuration_reference"
require "./policy_rules_with_subjects"

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1alpha1::FlowSchemaSpec`.
  module Types::Api::Flowcontrol::V1alpha1::FlowSchemaSpec
    alias ValueType = ::K8S::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod | Int32 | ::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference | ::Set(::K8S::Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # `distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string.
    abstract def distinguisher_method : ::K8S::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod?
    # :ditto:
    abstract def distinguisher_method! : ::K8S::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod
    # :ditto:
    abstract def distinguisher_method? : ::K8S::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod?
    # :ditto:
    abstract def distinguisher_method=(value : ::K8S::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod?)
    # `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be non-negative. Note that if the precedence is not specified or zero, it will be set to 1000 as default.
    abstract def matching_precedence : Int32?
    # :ditto:
    abstract def matching_precedence! : Int32
    # :ditto:
    abstract def matching_precedence? : Int32?
    # :ditto:
    abstract def matching_precedence=(value : Int32?)
    # `priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required.
    abstract def priority_level_configuration : ::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference
    # :ditto:
    abstract def priority_level_configuration! : ::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference
    # :ditto:
    abstract def priority_level_configuration? : ::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference?
    # :ditto:
    abstract def priority_level_configuration=(value : ::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference)
    # `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
    abstract def rules : ::Set(::K8S::Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects)?
    # :ditto:
    abstract def rules! : ::Set(::K8S::Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects)
    # :ditto:
    abstract def rules? : ::Set(::K8S::Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects)?
    # :ditto:
    abstract def rules=(value : ::Set(::K8S::Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects)?)
  end

  # FlowSchemaSpec describes how the FlowSchema's specification looks like.
  @[::K8S::Properties(
    distinguisher_method: {key: "distinguisherMethod", accessor: "distinguisher_method", kind: "::K8S::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod", nilable: true, default: nil, read_only: false, description: "`distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    matching_precedence: {key: "matchingPrecedence", accessor: "matching_precedence", kind: "Int32", nilable: true, default: nil, read_only: false, description: "`matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be non-negative. Note that if the precedence is not specified or zero, it will be set to 1000 as default.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    priority_level_configuration: {key: "priorityLevelConfiguration", accessor: "priority_level_configuration", kind: "::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference", nilable: false, default: nil, read_only: false, description: "`priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    rules: {key: "rules", accessor: "rules", kind: "::Set(::K8S::Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects)", nilable: true, default: nil, read_only: false, description: "`rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "set", x_kubernetes_map_type: nil},
  )]
  class Api::Flowcontrol::V1alpha1::FlowSchemaSpec < ::K8S::Types::Api::Flowcontrol::V1alpha1::FlowSchemaSpec::Instance
    include ::K8S::Types::Api::Flowcontrol::V1alpha1::FlowSchemaSpec
    include ::K8S::Kubernetes::Object

    # `distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string.
    def distinguisher_method : ::K8S::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod?
      self.["distinguisherMethod"].as(::K8S::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod?)
    end

    # :ditto:
    def distinguisher_method! : ::K8S::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod
      self.["distinguisherMethod"].as(::K8S::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod?).not_nil!
    end

    # :ditto:
    def distinguisher_method? : ::K8S::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod?
      self.["distinguisherMethod"]?.as(::K8S::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod?)
    end

    # :ditto:
    def distinguisher_method=(value : ::K8S::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod?)
      self.["distinguisherMethod"] = value
    end

    # `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be non-negative. Note that if the precedence is not specified or zero, it will be set to 1000 as default.
    def matching_precedence : Int32?
      self.["matchingPrecedence"].as(Int32?)
    end

    # :ditto:
    def matching_precedence! : Int32
      self.["matchingPrecedence"].as(Int32?).not_nil!
    end

    # :ditto:
    def matching_precedence? : Int32?
      self.["matchingPrecedence"]?.as(Int32?)
    end

    # :ditto:
    def matching_precedence=(value : Int32?)
      self.["matchingPrecedence"] = value
    end

    # `priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required.
    def priority_level_configuration : ::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference
      self.["priorityLevelConfiguration"].as(::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference)
    end

    # :ditto:
    def priority_level_configuration! : ::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference
      self.["priorityLevelConfiguration"].as(::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference).not_nil!
    end

    # :ditto:
    def priority_level_configuration? : ::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference?
      self.["priorityLevelConfiguration"]?.as(::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference?)
    end

    # :ditto:
    def priority_level_configuration=(value : ::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference)
      self.["priorityLevelConfiguration"] = value
    end

    # `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
    def rules : ::Set(::K8S::Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects)?
      self.["rules"].as(::Set(::K8S::Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects)?)
    end

    # :ditto:
    def rules! : ::Set(::K8S::Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects)
      self.["rules"].as(::Set(::K8S::Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects)?).not_nil!
    end

    # :ditto:
    def rules? : ::Set(::K8S::Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects)?
      self.["rules"]?.as(::Set(::K8S::Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects)?)
    end

    # :ditto:
    def rules=(value : ::Set(::K8S::Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects)?)
      self.["rules"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "distinguisherMethod", accessor: "distinguisher_method", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod },
        { key: "matchingPrecedence", accessor: "matching_precedence", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "priorityLevelConfiguration", accessor: "priority_level_configuration", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference },
        { key: "rules", accessor: "rules", nilable: true, read_only: false, default: nil, kind: ::Set(::K8S::Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects) },
      ])
end
  end
end
