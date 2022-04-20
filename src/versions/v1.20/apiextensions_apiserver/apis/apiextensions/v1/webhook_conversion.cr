# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./webhook_client_config"

::K8S::Kubernetes::Resource.define_object("WebhookConversion",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1",
  properties: [

    {name: "client_config", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig, key: "clientConfig", nilable: true, read_only: false, description: "clientConfig is the instructions for how to call the webhook if strategy is `Webhook`."},
    {name: "conversion_review_versions", kind: ::Array(String), key: "conversionReviewVersions", nilable: false, read_only: false, description: "conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail."},

  ]
)
