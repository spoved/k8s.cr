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
    alias ValueType = ::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig | String | ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector | ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # ClientConfig defines how to communicate with the hook. Required
    abstract def client_config : ::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig
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
    abstract def failure_policy=(value : String?)
    # The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where "imagepolicy" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
    abstract def name : String
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
    abstract def namespace_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    # Rules describes what operations on what [[resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.)]([resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.))
    abstract def rules : ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)?
    # :ditto:
    abstract def rules! : ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)
    # :ditto:
    abstract def rules? : ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)?
    # :ditto:
    abstract def rules=(value : ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)?)
    # SideEffects states whether this webhookk has side effects. Acceptable values are: Unknown, None, Some, NoneOnDryRun Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission change and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some. Defaults to Unknown.
    abstract def side_effects : String?
    # :ditto:
    abstract def side_effects! : String
    # :ditto:
    abstract def side_effects? : String?
    # :ditto:
    abstract def side_effects=(value : String?)
  end

  # Webhook describes an admission webhook and the resources and operations it applies to.
  @[::K8S::Properties(
    client_config: {key: "clientConfig", accessor: "client_config", kind: "::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig", nilable: false, default: nil, read_only: false, description: "ClientConfig defines how to communicate with the hook. Required"},
    failure_policy: {key: "failurePolicy", accessor: "failure_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Ignore."},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where \"imagepolicy\" is the name of the webhook, and kubernetes.io is the name of the organization. Required."},
    namespace_selector: {key: "namespaceSelector", accessor: "namespace_selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "NamespaceSelector decides whether to run the webhook on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the webhook.\n\nFor example, to run the webhook on any objects whose namespace is not associated with \"runlevel\" of \"0\" or \"1\";  you will set the selector as follows: \"namespaceSelector\": {\n  \"matchExpressions\": [\n    {\n      \"key\": \"runlevel\",\n      \"operator\": \"NotIn\",\n      \"values\": [\n        \"0\",\n        \"1\"\n      ]\n    }\n  ]\n}\n\nIf instead you want to only run the webhook on any objects whose namespace is associated with the \"environment\" of \"prod\" or \"staging\"; you will set the selector as follows: \"namespaceSelector\": {\n  \"matchExpressions\": [\n    {\n      \"key\": \"environment\",\n      \"operator\": \"In\",\n      \"values\": [\n        \"prod\",\n        \"staging\"\n      ]\n    }\n  ]\n}\n\nSee [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.)\n\nDefault to the empty LabelSelector, which matches everything."},
    rules: {key: "rules", accessor: "rules", kind: "::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)", nilable: true, default: nil, read_only: false, description: "Rules describes what operations on what [resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.)"},
    side_effects: {key: "sideEffects", accessor: "side_effects", kind: "String", nilable: true, default: nil, read_only: false, description: "SideEffects states whether this webhookk has side effects. Acceptable values are: Unknown, None, Some, NoneOnDryRun Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission change and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some. Defaults to Unknown."},
  )]
  class Api::Admissionregistration::V1beta1::Webhook < ::K8S::Types::Api::Admissionregistration::V1beta1::Webhook::Instance
    include ::K8S::Types::Api::Admissionregistration::V1beta1::Webhook
    include ::K8S::Kubernetes::Object

    # ClientConfig defines how to communicate with the hook. Required
    def client_config : ::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig
      self.["clientConfig"].as(::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig)
    end

    # :ditto:
    def client_config! : ::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig
      self.["clientConfig"].as(::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig).not_nil!
    end

    # :ditto:
    def client_config? : ::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig?
      self.["clientConfig"]?.as(::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig?)
    end

    # :ditto:
    def client_config=(value : ::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig)
      self.["clientConfig"] = value
    end

    # FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Ignore.
    def failure_policy : String?
      self.["failurePolicy"].as(String?)
    end

    # :ditto:
    def failure_policy! : String
      self.["failurePolicy"].as(String?).not_nil!
    end

    # :ditto:
    def failure_policy? : String?
      self.["failurePolicy"]?.as(String?)
    end

    # :ditto:
    def failure_policy=(value : String?)
      self.["failurePolicy"] = value
    end

    # The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where "imagepolicy" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

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
    def namespace_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["namespaceSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def namespace_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["namespaceSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?).not_nil!
    end

    # :ditto:
    def namespace_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["namespaceSelector"]?.as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def namespace_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
      self.["namespaceSelector"] = value
    end

    # Rules describes what operations on what [[resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.)]([resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.))
    def rules : ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)?
      self.["rules"].as(::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)?)
    end

    # :ditto:
    def rules! : ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)
      self.["rules"].as(::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)?).not_nil!
    end

    # :ditto:
    def rules? : ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)?
      self.["rules"]?.as(::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)?)
    end

    # :ditto:
    def rules=(value : ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations)?)
      self.["rules"] = value
    end

    # SideEffects states whether this webhookk has side effects. Acceptable values are: Unknown, None, Some, NoneOnDryRun Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission change and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some. Defaults to Unknown.
    def side_effects : String?
      self.["sideEffects"].as(String?)
    end

    # :ditto:
    def side_effects! : String
      self.["sideEffects"].as(String?).not_nil!
    end

    # :ditto:
    def side_effects? : String?
      self.["sideEffects"]?.as(String?)
    end

    # :ditto:
    def side_effects=(value : String?)
      self.["sideEffects"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "clientConfig", accessor: "client_config", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Admissionregistration::V1beta1::WebhookClientConfig },
        { key: "failurePolicy", accessor: "failure_policy", nilable: true, read_only: false, default: nil, kind: String },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "namespaceSelector", accessor: "namespace_selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
        { key: "rules", accessor: "rules", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Admissionregistration::V1beta1::RuleWithOperations) },
        { key: "sideEffects", accessor: "side_effects", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
