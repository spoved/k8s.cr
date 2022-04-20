# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./webhook_client_config"
require "./webhook_throttle_config"

::K8S::Kubernetes::Resource.define_object("Webhook",
  namespace: "::K8S::Api::Auditregistration::V1alpha1",
  properties: [

    {name: "client_config", kind: ::K8S::Api::Auditregistration::V1alpha1::WebhookClientConfig, key: "clientConfig", nilable: false, read_only: false, description: "ClientConfig holds the connection parameters for the webhook required"},
    {name: "throttle", kind: ::K8S::Api::Auditregistration::V1alpha1::WebhookThrottleConfig, key: "throttle", nilable: true, read_only: false, description: "Throttle holds the options for throttling the webhook"},

  ]
)
