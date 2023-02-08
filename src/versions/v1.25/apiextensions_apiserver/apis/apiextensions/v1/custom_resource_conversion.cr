# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./webhook_conversion"

::K8S::Kubernetes::Resource.define_object("CustomResourceConversion",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1",
  properties: [

    {name: "strategy", kind: String, key: "strategy", nilable: false, read_only: false, description: "strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information\n  is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set."},
    {name: "webhook", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion, key: "webhook", nilable: true, read_only: false, description: "webhook describes how to call the conversion webhook. Required when `strategy` is set to `Webhook`."},

  ]
)
