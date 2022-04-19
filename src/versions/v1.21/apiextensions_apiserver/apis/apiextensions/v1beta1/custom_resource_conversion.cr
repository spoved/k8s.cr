# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./webhook_client_config"

::K8S::Kubernetes::Resource.define_object("CustomResourceConversion",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1",
  properties: [

    {name: "conversion_review_versions", kind: ::Array(String), key: "conversionReviewVersions", nilable: true, read_only: false, description: "conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail. Defaults to `[\"v1beta1\"]`."},
    {name: "strategy", kind: String, key: "strategy", nilable: false, read_only: false, description: "strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information\n  is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhookClientConfig to be set."},
    {name: "webhook_client_config", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig, key: "webhookClientConfig", nilable: true, read_only: false, description: "webhookClientConfig is the instructions for how to call the webhook if strategy is `Webhook`. Required when `strategy` is set to `Webhook`."},

  ]
)
