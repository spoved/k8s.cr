# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # AuditSinkSpec holds the spec for the audit sink
  @[::K8S::Properties(
    policy: {type: Api::Auditregistration::V1alpha1::Policy, nilable: false, key: "policy", getter: false, setter: false},
    webhook: {type: Api::Auditregistration::V1alpha1::Webhook, nilable: false, key: "webhook", getter: false, setter: false},
  )]
  class Api::Auditregistration::V1alpha1::AuditSinkSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Policy defines the policy for selecting which events should be sent to the webhook required
    @[::JSON::Field(key: "policy", emit_null: true)]
    @[::YAML::Field(key: "policy", emit_null: true)]
    property policy : Api::Auditregistration::V1alpha1::Policy

    # Webhook to send events required
    @[::JSON::Field(key: "webhook", emit_null: true)]
    @[::YAML::Field(key: "webhook", emit_null: true)]
    property webhook : Api::Auditregistration::V1alpha1::Webhook

    def initialize(*, @policy : Api::Auditregistration::V1alpha1::Policy, @webhook : Api::Auditregistration::V1alpha1::Webhook)
    end
  end
end
