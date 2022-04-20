# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./validating_webhook_configuration"

::K8S::Kubernetes::Resource.define_resource("admissionregistration.k8s.io", "v1", "ValidatingWebhookConfigurationList",
  namespace: "::K8S::Api::Admissionregistration::V1",
  list: true,
  list_kind: K8S::Api::Admissionregistration::V1::ValidatingWebhookConfiguration,
  description: "ValidatingWebhookConfigurationList is a list of ValidatingWebhookConfiguration.",
)
