# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1beta1::PolicyRulesWithSubjects; end

require "./non_resource_policy_rule"
require "./resource_policy_rule"
require "./subject"

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1beta1::PolicyRulesWithSubjects`.
  module Types::Api::Flowcontrol::V1beta1::PolicyRulesWithSubjects
    # `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
    abstract def non_resource_rules : ::Array(::K8S::Api::Flowcontrol::V1beta1::NonResourcePolicyRule)?
    # :ditto:
    abstract def non_resource_rules! : ::Array(::K8S::Api::Flowcontrol::V1beta1::NonResourcePolicyRule)
    # :ditto:
    abstract def non_resource_rules? : ::Array(::K8S::Api::Flowcontrol::V1beta1::NonResourcePolicyRule)?
    # :ditto:
    abstract def non_resource_rules=(value : ::Array(::K8S::Api::Flowcontrol::V1beta1::NonResourcePolicyRule)?)
    # `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
    abstract def resource_rules : ::Array(::K8S::Api::Flowcontrol::V1beta1::ResourcePolicyRule)?
    # :ditto:
    abstract def resource_rules! : ::Array(::K8S::Api::Flowcontrol::V1beta1::ResourcePolicyRule)
    # :ditto:
    abstract def resource_rules? : ::Array(::K8S::Api::Flowcontrol::V1beta1::ResourcePolicyRule)?
    # :ditto:
    abstract def resource_rules=(value : ::Array(::K8S::Api::Flowcontrol::V1beta1::ResourcePolicyRule)?)
    # subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
    abstract def subjects : ::Array(::K8S::Api::Flowcontrol::V1beta1::Subject)
    # :ditto:
    abstract def subjects! : ::Array(::K8S::Api::Flowcontrol::V1beta1::Subject)
    # :ditto:
    abstract def subjects? : ::Array(::K8S::Api::Flowcontrol::V1beta1::Subject)?
    # :ditto:
    abstract def subjects=(value : ::Array(::K8S::Api::Flowcontrol::V1beta1::Subject))
  end

  # PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The test considers the subject making the request, the verb being requested, and the resource to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a) at least one member of subjects matches the request and (b) at least one member of resourceRules or nonResourceRules matches the request.
  @[::K8S::Properties(
    non_resource_rules: {key: "nonResourceRules", accessor: "non_resource_rules", kind: "::Array(::K8S::Api::Flowcontrol::V1beta1::NonResourcePolicyRule)", nilable: true, default: nil, read_only: false, description: "`nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    resource_rules: {key: "resourceRules", accessor: "resource_rules", kind: "::Array(::K8S::Api::Flowcontrol::V1beta1::ResourcePolicyRule)", nilable: true, default: nil, read_only: false, description: "`resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    subjects: {key: "subjects", accessor: "subjects", kind: "::Array(::K8S::Api::Flowcontrol::V1beta1::Subject)", nilable: false, default: nil, read_only: false, description: "subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
  )]
  class Api::Flowcontrol::V1beta1::PolicyRulesWithSubjects < ::K8S::GenericObject
    include ::K8S::Types::Api::Flowcontrol::V1beta1::PolicyRulesWithSubjects

    # `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
    def non_resource_rules : ::Array(::K8S::Api::Flowcontrol::V1beta1::NonResourcePolicyRule)?
      self.["nonResourceRules"].as(::Array(::K8S::Api::Flowcontrol::V1beta1::NonResourcePolicyRule)?)
    end

    # :ditto:
    def non_resource_rules! : ::Array(::K8S::Api::Flowcontrol::V1beta1::NonResourcePolicyRule)
      self.["nonResourceRules"].as(::Array(::K8S::Api::Flowcontrol::V1beta1::NonResourcePolicyRule)?).not_nil!
    end

    # :ditto:
    def non_resource_rules? : ::Array(::K8S::Api::Flowcontrol::V1beta1::NonResourcePolicyRule)?
      self.["nonResourceRules"]?.as(::Array(::K8S::Api::Flowcontrol::V1beta1::NonResourcePolicyRule)?)
    end

    # :ditto:
    def non_resource_rules=(value : ::Array(::K8S::Api::Flowcontrol::V1beta1::NonResourcePolicyRule)?)
      self.["nonResourceRules"] = value
    end

    # `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
    def resource_rules : ::Array(::K8S::Api::Flowcontrol::V1beta1::ResourcePolicyRule)?
      self.["resourceRules"].as(::Array(::K8S::Api::Flowcontrol::V1beta1::ResourcePolicyRule)?)
    end

    # :ditto:
    def resource_rules! : ::Array(::K8S::Api::Flowcontrol::V1beta1::ResourcePolicyRule)
      self.["resourceRules"].as(::Array(::K8S::Api::Flowcontrol::V1beta1::ResourcePolicyRule)?).not_nil!
    end

    # :ditto:
    def resource_rules? : ::Array(::K8S::Api::Flowcontrol::V1beta1::ResourcePolicyRule)?
      self.["resourceRules"]?.as(::Array(::K8S::Api::Flowcontrol::V1beta1::ResourcePolicyRule)?)
    end

    # :ditto:
    def resource_rules=(value : ::Array(::K8S::Api::Flowcontrol::V1beta1::ResourcePolicyRule)?)
      self.["resourceRules"] = value
    end

    # subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
    def subjects : ::Array(::K8S::Api::Flowcontrol::V1beta1::Subject)
      self.["subjects"].as(::Array(::K8S::Api::Flowcontrol::V1beta1::Subject))
    end

    # :ditto:
    def subjects! : ::Array(::K8S::Api::Flowcontrol::V1beta1::Subject)
      self.["subjects"].as(::Array(::K8S::Api::Flowcontrol::V1beta1::Subject)).not_nil!
    end

    # :ditto:
    def subjects? : ::Array(::K8S::Api::Flowcontrol::V1beta1::Subject)?
      self.["subjects"]?.as(::Array(::K8S::Api::Flowcontrol::V1beta1::Subject)?)
    end

    # :ditto:
    def subjects=(value : ::Array(::K8S::Api::Flowcontrol::V1beta1::Subject))
      self.["subjects"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "nonResourceRules", accessor: "non_resource_rules", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Flowcontrol::V1beta1::NonResourcePolicyRule) },
        { key: "resourceRules", accessor: "resource_rules", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Flowcontrol::V1beta1::ResourcePolicyRule) },
        { key: "subjects", accessor: "subjects", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Api::Flowcontrol::V1beta1::Subject) },
      ])
end
  end
end
