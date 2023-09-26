# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./mutating_webhook"

::K8S::Kubernetes::Resource.define_resource("admissionregistration.k8s.io", "v1", "MutatingWebhookConfiguration",
  namespace: "::K8S::Api::Admissionregistration::V1",
  properties: [

    {name: "webhooks", kind: ::Array(::K8S::Api::Admissionregistration::V1::MutatingWebhook), key: "webhooks", nilable: true, read_only: false, description: "Webhooks is a list of webhooks and the affected resources and operations."},

  ],
  description: "MutatingWebhookConfiguration describes the configuration of and admission webhook that accept or reject and may change the object.",
  versions: [{group: "admissionregistration.k8s.io", kind: "MutatingWebhookConfiguration", version: "v1"}],
)
