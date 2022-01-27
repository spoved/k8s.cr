# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Admissionregistration::V1beta1::Webhook; end

require "./webhook_client_config"
require "../../../apimachinery/apis/meta/v1/label_selector"
require "./rule_with_operations"

module K8S
  # Namespace holding the types for `Api::Admissionregistration::V1beta1::Webhook`.
  module Types::Api::Admissionregistration::V1beta1::Webhook
    # ClientConfig defines how to communicate with the hook. Required
    abstract def client_config : ::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig?
    # :ditto:
    abstract def client_config! : ::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig
    # :ditto:
    abstract def client_config? : ::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig?
    # :ditto:
    abstract def client_config=(value : ::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig)
    # FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Ignore.
    abstract def failure_policy : String?
    # :ditto:
    abstract def failure_policy! : String
    # :ditto:
    abstract def failure_policy? : String?
    # :ditto:
    abstract def failure_policy=(value : String)
    # The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where "imagepolicy" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # NamespaceSelector decides whether to run the webhook on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the webhook.
    #
    # For example, to run the webhook on any objects whose namespace is not associated with "runlevel" of "0" or "1";  you will set the selector as follows: "namespaceSelector": {
    #   "matchExpressions": [
    #     {
    #       "key": "runlevel",
    #       "operator": "NotIn",
    #       "values": [
    #         "0",
    #         "1"
    #       ]
    #     }
    #   ]
    # }
    #
    # If instead you want to only run the webhook on any objects whose namespace is associated with the "environment" of "prod" or "staging"; you will set the selector as follows: "namespaceSelector": {
    #   "matchExpressions": [
    #     {
    #       "key": "environment",
    #       "operator": "In",
    #       "values": [
    #         "prod",
    #         "staging"
    #       ]
    #     }
    #   ]
    # }
    #
    # See [[https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.)](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.))
    #
    # Default to the empty LabelSelector, which matches everything.
    abstract def namespace_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def namespace_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def namespace_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def namespace_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
    # Rules describes what operations on what [[resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.)]([resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.))
    abstract def rules : ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)?
    # :ditto:
    abstract def rules! : ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)
    # :ditto:
    abstract def rules? : ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)?
    # :ditto:
    abstract def rules=(value : ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations))
  end

  # Webhook describes an admission webhook and the resources and operations it applies to.
  @[::K8S::Properties(
    client_config: {key: "clientConfig", accessor: "client_config", kind: "::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig", nilable: false, default: nil, read_only: false, description: "ClientConfig defines how to communicate with the hook. Required", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    failure_policy: {key: "failurePolicy", accessor: "failure_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Ignore.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where \"imagepolicy\" is the name of the webhook, and kubernetes.io is the name of the organization. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespace_selector: {key: "namespaceSelector", accessor: "namespace_selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "NamespaceSelector decides whether to run the webhook on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the webhook.\n\nFor example, to run the webhook on any objects whose namespace is not associated with \"runlevel\" of \"0\" or \"1\";  you will set the selector as follows: \"namespaceSelector\": {\n  \"matchExpressions\": [\n    {\n      \"key\": \"runlevel\",\n      \"operator\": \"NotIn\",\n      \"values\": [\n        \"0\",\n        \"1\"\n      ]\n    }\n  ]\n}\n\nIf instead you want to only run the webhook on any objects whose namespace is associated with the \"environment\" of \"prod\" or \"staging\"; you will set the selector as follows: \"namespaceSelector\": {\n  \"matchExpressions\": [\n    {\n      \"key\": \"environment\",\n      \"operator\": \"In\",\n      \"values\": [\n        \"prod\",\n        \"staging\"\n      ]\n    }\n  ]\n}\n\nSee [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.)\n\nDefault to the empty LabelSelector, which matches everything.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    rules: {key: "rules", accessor: "rules", kind: "::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)", nilable: true, default: nil, read_only: false, description: "Rules describes what operations on what [resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Admissionregistration::V1beta1::Webhook < ::K8S::GenericObject
    include ::K8S::Types::Api::Admissionregistration::V1beta1::Webhook
    k8s_object_accessor("clientConfig", client_config : ::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig, false, false, "ClientConfig defines how to communicate with the hook. Required")
    k8s_object_accessor("failurePolicy", failure_policy : String, true, false, "FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Ignore.")
    k8s_object_accessor("name", name : String, false, false, "The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where \"imagepolicy\" is the name of the webhook, and kubernetes.io is the name of the organization. Required.")
    k8s_object_accessor("namespaceSelector", namespace_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, true, false, "NamespaceSelector decides whether to run the webhook on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the webhook.\n\nFor example, to run the webhook on any objects whose namespace is not associated with \"runlevel\" of \"0\" or \"1\";  you will set the selector as follows: \"namespaceSelector\": {\n  \"matchExpressions\": [\n    {\n      \"key\": \"runlevel\",\n      \"operator\": \"NotIn\",\n      \"values\": [\n        \"0\",\n        \"1\"\n      ]\n    }\n  ]\n}\n\nIf instead you want to only run the webhook on any objects whose namespace is associated with the \"environment\" of \"prod\" or \"staging\"; you will set the selector as follows: \"namespaceSelector\": {\n  \"matchExpressions\": [\n    {\n      \"key\": \"environment\",\n      \"operator\": \"In\",\n      \"values\": [\n        \"prod\",\n        \"staging\"\n      ]\n    }\n  ]\n}\n\nSee [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.)\n\nDefault to the empty LabelSelector, which matches everything.")
    k8s_object_accessor("rules", rules : ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations), true, false, "Rules describes what operations on what [resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.)")

    def initialize(*, client_config : ::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig? = nil, failure_policy : String? = nil, name : String? = nil, namespace_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector? = nil, rules : ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)? = nil)
      super()
      self.["clientConfig"] = client_config
      self.["failurePolicy"] = failure_policy
      self.["name"] = name
      self.["namespaceSelector"] = namespace_selector
      self.["rules"] = rules
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "clientConfig", accessor: "client_config", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig},
      {key: "failurePolicy", accessor: "failure_policy", nilable: true, read_only: false, default: nil, kind: String},
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "namespaceSelector", accessor: "namespace_selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector},
      {key: "rules", accessor: "rules", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)},
    ])
  end
end
