# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./webhook"

::K8S::Kubernetes::Resource.define_resource("admissionregistration.k8s.io", "v1beta1", "ValidatingWebhookConfiguration",
  namespace: "::K8S::Api::Admissionregistration::V1beta1",
  properties: [

    {name: "webhooks", kind: ::Array(::K8S::Api::Admissionregistration::V1beta1::Webhook), key: "webhooks", nilable: true, read_only: false, description: "Webhooks is a list of webhooks and the affected resources and operations."},

  ],
  description: "ValidatingWebhookConfiguration describes the configuration of and admission webhook that accept or reject and object without changing it.",
  versions: [{group: "admissionregistration.k8s.io", kind: "ValidatingWebhookConfiguration", version: "v1beta1"}],
)
