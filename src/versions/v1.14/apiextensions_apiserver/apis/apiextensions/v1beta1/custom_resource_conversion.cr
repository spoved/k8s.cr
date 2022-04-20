# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./webhook_client_config"

::K8S::Kubernetes::Resource.define_object("CustomResourceConversion",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1",
  properties: [

    {name: "conversion_review_versions", kind: ::Array(String), key: "conversionReviewVersions", nilable: true, read_only: false, description: "ConversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, conversion will fail for this object. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail. Default to `['v1beta1']`."},
    {name: "strategy", kind: String, key: "strategy", nilable: false, read_only: false, description: "`strategy` specifies the conversion strategy. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the CR. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information is needed for this option."},
    {name: "webhook_client_config", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig, key: "webhookClientConfig", nilable: true, read_only: false, description: "`webhookClientConfig` is the instructions for how to call the webhook if strategy is `Webhook`. This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature."},

  ]
)
