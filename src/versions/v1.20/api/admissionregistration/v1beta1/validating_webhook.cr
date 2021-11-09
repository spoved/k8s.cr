# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # ValidatingWebhook describes an admission webhook and the resources and operations it applies to.
  class Api::Admissionregistration::V1beta1::ValidatingWebhook
    # AdmissionReviewVersions is an ordered list of preferred `AdmissionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, validation will fail for this object. If a persisted webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail and be subject to the failure policy. Default to `['v1beta1']`.
    property admission_review_versions : Array(String) | Nil

    # ClientConfig defines how to communicate with the hook. Required
    property client_config : Api::Admissionregistration::V1beta1::WebhookClientConfig

    # FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Ignore.
    property failure_policy : String | Nil

    # matchPolicy defines how the "rules" list is used to match incoming requests. Allowed values are "Exact" or "Equivalent".
    #
    # - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via [apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.](apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.)
    #
    # - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via [apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.](apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.)
    #
    # Defaults to "Exact"
    property match_policy : String | Nil

    # The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where "imagepolicy" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
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
    # See [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.)
    #
    # Default to the empty LabelSelector, which matches everything.
    property namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # ObjectSelector decides whether to run the webhook based on if the object has matching labels. objectSelector is evaluated against both the oldObject and newObject that would be sent to the webhook, and is considered to match if either object matches the selector. A null object (oldObject in the case of create, or newObject in the case of delete) or an object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is not considered to match. Use the object selector only if the webhook is opt-in, because end users may skip the admission webhook by setting the labels. Default to the empty LabelSelector, which matches everything.
    property object_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # Rules describes what operations on what [resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.)
    property rules : Array(Api::Admissionregistration::V1beta1::RuleWithOperations) | Nil

    # SideEffects states whether this webhook has side effects. Acceptable values are: Unknown, None, Some, NoneOnDryRun Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission change and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some. Defaults to Unknown.
    property side_effects : String | Nil

    # TimeoutSeconds specifies the timeout for this webhook. After the timeout passes, the webhook call will be ignored or the API call will fail based on the failure policy. The timeout value must be between 1 and 30 seconds. Default to 30 seconds.
    property timeout_seconds : Int32 | Nil

    ::YAML.mapping({
      admission_review_versions: {type: Array(String), nilable: true, key: "admissionReviewVersions", getter: false, setter: false},
      client_config:             {type: Api::Admissionregistration::V1beta1::WebhookClientConfig, nilable: false, key: "clientConfig", getter: false, setter: false},
      failure_policy:            {type: String, nilable: true, key: "failurePolicy", getter: false, setter: false},
      match_policy:              {type: String, nilable: true, key: "matchPolicy", getter: false, setter: false},
      name:                      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace_selector:        {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "namespaceSelector", getter: false, setter: false},
      object_selector:           {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "objectSelector", getter: false, setter: false},
      rules:                     {type: Array(Api::Admissionregistration::V1beta1::RuleWithOperations), nilable: true, key: "rules", getter: false, setter: false},
      side_effects:              {type: String, nilable: true, key: "sideEffects", getter: false, setter: false},
      timeout_seconds:           {type: Int32, nilable: true, key: "timeoutSeconds", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      admission_review_versions: {type: Array(String), nilable: true, key: "admissionReviewVersions", getter: false, setter: false},
      client_config:             {type: Api::Admissionregistration::V1beta1::WebhookClientConfig, nilable: false, key: "clientConfig", getter: false, setter: false},
      failure_policy:            {type: String, nilable: true, key: "failurePolicy", getter: false, setter: false},
      match_policy:              {type: String, nilable: true, key: "matchPolicy", getter: false, setter: false},
      name:                      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace_selector:        {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "namespaceSelector", getter: false, setter: false},
      object_selector:           {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "objectSelector", getter: false, setter: false},
      rules:                     {type: Array(Api::Admissionregistration::V1beta1::RuleWithOperations), nilable: true, key: "rules", getter: false, setter: false},
      side_effects:              {type: String, nilable: true, key: "sideEffects", getter: false, setter: false},
      timeout_seconds:           {type: Int32, nilable: true, key: "timeoutSeconds", getter: false, setter: false},
    }, true)

    def initialize(*, @client_config : Api::Admissionregistration::V1beta1::WebhookClientConfig, @name : String, @admission_review_versions : Array | Nil = nil, @failure_policy : String | Nil = nil, @match_policy : String | Nil = nil, @namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @object_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @rules : Array | Nil = nil, @side_effects : String | Nil = nil, @timeout_seconds : Int32 | Nil = nil)
    end
  end
end
