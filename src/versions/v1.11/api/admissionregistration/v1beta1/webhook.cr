# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./webhook_client_config"
require "../../../apimachinery/apis/meta/v1/label_selector"
require "./rule_with_operations"

::K8S::Kubernetes::Resource.define_object("Webhook",
  namespace: "::K8S::Api::Admissionregistration::V1beta1",
  properties: [

    {name: "client_config", kind: ::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig, key: "clientConfig", nilable: false, read_only: false, description: "ClientConfig defines how to communicate with the hook. Required"},
    {name: "failure_policy", kind: String, key: "failurePolicy", nilable: true, read_only: false, description: "FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Ignore."},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where \"imagepolicy\" is the name of the webhook, and kubernetes.io is the name of the organization. Required."},
    {name: "namespace_selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "namespaceSelector", nilable: true, read_only: false, description: "NamespaceSelector decides whether to run the webhook on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the webhook.\n\nFor example, to run the webhook on any objects whose namespace is not associated with \"runlevel\" of \"0\" or \"1\";  you will set the selector as follows: \"namespaceSelector\": {\n  \"matchExpressions\": [\n    {\n      \"key\": \"runlevel\",\n      \"operator\": \"NotIn\",\n      \"values\": [\n        \"0\",\n        \"1\"\n      ]\n    }\n  ]\n}\n\nIf instead you want to only run the webhook on any objects whose namespace is associated with the \"environment\" of \"prod\" or \"staging\"; you will set the selector as follows: \"namespaceSelector\": {\n  \"matchExpressions\": [\n    {\n      \"key\": \"environment\",\n      \"operator\": \"In\",\n      \"values\": [\n        \"prod\",\n        \"staging\"\n      ]\n    }\n  ]\n}\n\nSee [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.)\n\nDefault to the empty LabelSelector, which matches everything."},
    {name: "rules", kind: ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations), key: "rules", nilable: true, read_only: false, description: "Rules describes what operations on what [resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.)"},

  ]
)
