# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./policy"
require "./webhook"

::K8S::Kubernetes::Resource.define_object("AuditSinkSpec",
  namespace: "::K8S::Api::Auditregistration::V1alpha1",
  properties: [

    {name: "policy", kind: ::K8S::Api::Auditregistration::V1alpha1::Policy, key: "policy", nilable: false, read_only: false, description: "Policy defines the policy for selecting which events should be sent to the webhook required"},
    {name: "webhook", kind: ::K8S::Api::Auditregistration::V1alpha1::Webhook, key: "webhook", nilable: false, read_only: false, description: "Webhook to send events required"},

  ]
)
