# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./webhook_client_config"

::K8S::Kubernetes::Resource.define_object("CustomResourceConversion",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1",
  properties: [

    {name: "strategy", kind: String, key: "strategy", nilable: false, read_only: false, description: "`strategy` specifies the conversion strategy. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the CR. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information is needed for this option."},
    {name: "webhook_client_config", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig, key: "webhookClientConfig", nilable: true, read_only: false, description: "`webhookClientConfig` is the instructions for how to call the webhook if strategy is `Webhook`. This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature."},

  ]
)
