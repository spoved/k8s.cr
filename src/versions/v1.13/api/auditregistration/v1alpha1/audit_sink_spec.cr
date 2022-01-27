# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Auditregistration::V1alpha1::AuditSinkSpec; end

require "./policy"
require "./webhook"

module K8S
  # Namespace holding the types for `Api::Auditregistration::V1alpha1::AuditSinkSpec`.
  module Types::Api::Auditregistration::V1alpha1::AuditSinkSpec
    # Policy defines the policy for selecting which events should be sent to the webhook required
    abstract def policy : ::K8S::Api::Auditregistration::V1alpha1::Policy?
    # :ditto:
    abstract def policy! : ::K8S::Api::Auditregistration::V1alpha1::Policy
    # :ditto:
    abstract def policy? : ::K8S::Api::Auditregistration::V1alpha1::Policy?
    # :ditto:
    abstract def policy=(value : ::K8S::Api::Auditregistration::V1alpha1::Policy)
    # Webhook to send events required
    abstract def webhook : ::K8S::Api::Auditregistration::V1alpha1::Webhook?
    # :ditto:
    abstract def webhook! : ::K8S::Api::Auditregistration::V1alpha1::Webhook
    # :ditto:
    abstract def webhook? : ::K8S::Api::Auditregistration::V1alpha1::Webhook?
    # :ditto:
    abstract def webhook=(value : ::K8S::Api::Auditregistration::V1alpha1::Webhook)
  end

  # AuditSinkSpec holds the spec for the audit sink
  @[::K8S::Properties(
    policy: {key: "policy", accessor: "policy", kind: "::K8S::Api::Auditregistration::V1alpha1::Policy", nilable: false, default: nil, read_only: false, description: "Policy defines the policy for selecting which events should be sent to the webhook required", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    webhook: {key: "webhook", accessor: "webhook", kind: "::K8S::Api::Auditregistration::V1alpha1::Webhook", nilable: false, default: nil, read_only: false, description: "Webhook to send events required", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Auditregistration::V1alpha1::AuditSinkSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Auditregistration::V1alpha1::AuditSinkSpec
    k8s_object_accessor("policy", policy : ::K8S::Api::Auditregistration::V1alpha1::Policy, false, false, "Policy defines the policy for selecting which events should be sent to the webhook required")
    k8s_object_accessor("webhook", webhook : ::K8S::Api::Auditregistration::V1alpha1::Webhook, false, false, "Webhook to send events required")

    def initialize(*, policy : ::K8S::Api::Auditregistration::V1alpha1::Policy? = nil, webhook : ::K8S::Api::Auditregistration::V1alpha1::Webhook? = nil)
      super()
      self.["policy"] = policy
      self.["webhook"] = webhook
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "policy", accessor: "policy", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Auditregistration::V1alpha1::Policy},
      {key: "webhook", accessor: "webhook", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Auditregistration::V1alpha1::Webhook},
    ])
  end
end
