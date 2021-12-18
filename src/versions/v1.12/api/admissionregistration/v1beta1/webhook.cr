# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Webhook describes an admission webhook and the resources and operations it applies to.
  @[::K8S::Properties(
    client_config: {type: Api::Admissionregistration::V1beta1::WebhookClientConfig, nilable: false, key: "clientConfig", getter: false, setter: false},
    failure_policy: {type: String, nilable: true, key: "failurePolicy", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    namespace_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "namespaceSelector", getter: false, setter: false},
    rules: {type: Array(Api::Admissionregistration::V1beta1::RuleWithOperations), nilable: true, key: "rules", getter: false, setter: false},
    side_effects: {type: String, nilable: true, key: "sideEffects", getter: false, setter: false},
  )]
  class Api::Admissionregistration::V1beta1::Webhook
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # ClientConfig defines how to communicate with the hook. Required
    @[::JSON::Field(key: "clientConfig", emit_null: true)]
    @[::YAML::Field(key: "clientConfig", emit_null: true)]
    property client_config : Api::Admissionregistration::V1beta1::WebhookClientConfig

    # FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Ignore.
    @[::JSON::Field(key: "failurePolicy", emit_null: false)]
    @[::YAML::Field(key: "failurePolicy", emit_null: false)]
    property failure_policy : String | Nil

    # The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where "imagepolicy" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

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
    # See [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.)
    #
    # Default to the empty LabelSelector, which matches everything.
    @[::JSON::Field(key: "namespaceSelector", emit_null: false)]
    @[::YAML::Field(key: "namespaceSelector", emit_null: false)]
    property namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # Rules describes what operations on what [resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.)
    @[::JSON::Field(key: "rules", emit_null: false)]
    @[::YAML::Field(key: "rules", emit_null: false)]
    property rules : Array(Api::Admissionregistration::V1beta1::RuleWithOperations) | Nil

    # SideEffects states whether this webhookk has side effects. Acceptable values are: Unknown, None, Some, NoneOnDryRun Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission change and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some. Defaults to Unknown.
    @[::JSON::Field(key: "sideEffects", emit_null: false)]
    @[::YAML::Field(key: "sideEffects", emit_null: false)]
    property side_effects : String | Nil

    def initialize(*, @client_config : Api::Admissionregistration::V1beta1::WebhookClientConfig, @name : String, @failure_policy : String | Nil = nil, @namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @rules : Array(Api::Admissionregistration::V1beta1::RuleWithOperations) | Nil = nil, @side_effects : String | Nil = nil)
    end
  end
end
