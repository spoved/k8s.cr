# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Admissionregistration::V1::ValidatingWebhook; end

require "./webhook_client_config"
require "../../../apimachinery/apis/meta/v1/label_selector"
require "./rule_with_operations"

module K8S
  # Namespace holding the types for `Api::Admissionregistration::V1::ValidatingWebhook`.
  module Types::Api::Admissionregistration::V1::ValidatingWebhook
    alias ValueType = ::Array(String) | ::K8S::Api::Admissionregistration::V1::WebhookClientConfig | String | ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector | ::Array(::K8S::Api::Admissionregistration::V1::RuleWithOperations) | Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # AdmissionReviewVersions is an ordered list of preferred `AdmissionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, validation will fail for this object. If a persisted webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail and be subject to the failure policy.
    abstract def admission_review_versions : ::Array(String)
    # :ditto:
    abstract def admission_review_versions! : ::Array(String)
    # :ditto:
    abstract def admission_review_versions? : ::Array(String)?
    # :ditto:
    abstract def admission_review_versions=(value : ::Array(String))
    # ClientConfig defines how to communicate with the hook. Required
    abstract def client_config : ::K8S::Api::Admissionregistration::V1::WebhookClientConfig
    # :ditto:
    abstract def client_config! : ::K8S::Api::Admissionregistration::V1::WebhookClientConfig
    # :ditto:
    abstract def client_config? : ::K8S::Api::Admissionregistration::V1::WebhookClientConfig?
    # :ditto:
    abstract def client_config=(value : ::K8S::Api::Admissionregistration::V1::WebhookClientConfig)
    # FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Fail.
    abstract def failure_policy : String?
    # :ditto:
    abstract def failure_policy! : String
    # :ditto:
    abstract def failure_policy? : String?
    # :ditto:
    abstract def failure_policy=(value : String?)
    # matchPolicy defines how the "rules" list is used to match incoming requests. Allowed values are "Exact" or "Equivalent".
    #
    # - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via [[apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.](apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.)]([apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.](apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.))
    #
    # - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via [[apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.](apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.)]([apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.](apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.))
    #
    # Defaults to "Equivalent"
    abstract def match_policy : String?
    # :ditto:
    abstract def match_policy! : String
    # :ditto:
    abstract def match_policy? : String?
    # :ditto:
    abstract def match_policy=(value : String?)
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
    # See [[https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.)](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.))
    #
    # Default to the empty LabelSelector, which matches everything.
    abstract def namespace_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def namespace_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def namespace_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def namespace_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    # ObjectSelector decides whether to run the webhook based on if the object has matching labels. objectSelector is evaluated against both the oldObject and newObject that would be sent to the webhook, and is considered to match if either object matches the selector. A null object (oldObject in the case of create, or newObject in the case of delete) or an object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is not considered to match. Use the object selector only if the webhook is opt-in, because end users may skip the admission webhook by setting the labels. Default to the empty LabelSelector, which matches everything.
    abstract def object_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def object_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def object_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def object_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    # Rules describes what operations on what [[resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.)]([resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.))
    abstract def rules : ::Array(::K8S::Api::Admissionregistration::V1::RuleWithOperations)?
    # :ditto:
    abstract def rules! : ::Array(::K8S::Api::Admissionregistration::V1::RuleWithOperations)
    # :ditto:
    abstract def rules? : ::Array(::K8S::Api::Admissionregistration::V1::RuleWithOperations)?
    # :ditto:
    abstract def rules=(value : ::Array(::K8S::Api::Admissionregistration::V1::RuleWithOperations)?)
    # SideEffects states whether this webhook has side effects. Acceptable values are: None, NoneOnDryRun (webhooks created via v1beta1 may also specify Some or Unknown). Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission change and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some.
    abstract def side_effects : String
    # :ditto:
    abstract def side_effects! : String
    # :ditto:
    abstract def side_effects? : String?
    # :ditto:
    abstract def side_effects=(value : String)
    # TimeoutSeconds specifies the timeout for this webhook. After the timeout passes, the webhook call will be ignored or the API call will fail based on the failure policy. The timeout value must be between 1 and 30 seconds. Default to 10 seconds.
    abstract def timeout_seconds : Int32?
    # :ditto:
    abstract def timeout_seconds! : Int32
    # :ditto:
    abstract def timeout_seconds? : Int32?
    # :ditto:
    abstract def timeout_seconds=(value : Int32?)
  end

  # ValidatingWebhook describes an admission webhook and the resources and operations it applies to.
  @[::K8S::Properties(
    admission_review_versions: {key: "admissionReviewVersions", accessor: "admission_review_versions", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "AdmissionReviewVersions is an ordered list of preferred `AdmissionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, validation will fail for this object. If a persisted webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail and be subject to the failure policy."},
    client_config: {key: "clientConfig", accessor: "client_config", kind: "::K8S::Api::Admissionregistration::V1::WebhookClientConfig", nilable: false, default: nil, read_only: false, description: "ClientConfig defines how to communicate with the hook. Required"},
    failure_policy: {key: "failurePolicy", accessor: "failure_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Fail."},
    match_policy: {key: "matchPolicy", accessor: "match_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "matchPolicy defines how the \"rules\" list is used to match incoming requests. Allowed values are \"Exact\" or \"Equivalent\".\n\n- Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via [apps/v1, apps/v1beta1, and extensions/v1beta1, but \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.](apps/v1, apps/v1beta1, and extensions/v1beta1, but \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.)\n\n- Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via [apps/v1, apps/v1beta1, and extensions/v1beta1, and \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.](apps/v1, apps/v1beta1, and extensions/v1beta1, and \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.)\n\nDefaults to \"Equivalent\""},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where \"imagepolicy\" is the name of the webhook, and kubernetes.io is the name of the organization. Required."},
    namespace_selector: {key: "namespaceSelector", accessor: "namespace_selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "NamespaceSelector decides whether to run the webhook on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the webhook.\n\nFor example, to run the webhook on any objects whose namespace is not associated with \"runlevel\" of \"0\" or \"1\";  you will set the selector as follows: \"namespaceSelector\": {\n  \"matchExpressions\": [\n    {\n      \"key\": \"runlevel\",\n      \"operator\": \"NotIn\",\n      \"values\": [\n        \"0\",\n        \"1\"\n      ]\n    }\n  ]\n}\n\nIf instead you want to only run the webhook on any objects whose namespace is associated with the \"environment\" of \"prod\" or \"staging\"; you will set the selector as follows: \"namespaceSelector\": {\n  \"matchExpressions\": [\n    {\n      \"key\": \"environment\",\n      \"operator\": \"In\",\n      \"values\": [\n        \"prod\",\n        \"staging\"\n      ]\n    }\n  ]\n}\n\nSee [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.)\n\nDefault to the empty LabelSelector, which matches everything."},
    object_selector: {key: "objectSelector", accessor: "object_selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "ObjectSelector decides whether to run the webhook based on if the object has matching labels. objectSelector is evaluated against both the oldObject and newObject that would be sent to the webhook, and is considered to match if either object matches the selector. A null object (oldObject in the case of create, or newObject in the case of delete) or an object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is not considered to match. Use the object selector only if the webhook is opt-in, because end users may skip the admission webhook by setting the labels. Default to the empty LabelSelector, which matches everything."},
    rules: {key: "rules", accessor: "rules", kind: "::Array(::K8S::Api::Admissionregistration::V1::RuleWithOperations)", nilable: true, default: nil, read_only: false, description: "Rules describes what operations on what [resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.)"},
    side_effects: {key: "sideEffects", accessor: "side_effects", kind: "String", nilable: false, default: nil, read_only: false, description: "SideEffects states whether this webhook has side effects. Acceptable values are: None, NoneOnDryRun (webhooks created via v1beta1 may also specify Some or Unknown). Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission change and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some."},
    timeout_seconds: {key: "timeoutSeconds", accessor: "timeout_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "TimeoutSeconds specifies the timeout for this webhook. After the timeout passes, the webhook call will be ignored or the API call will fail based on the failure policy. The timeout value must be between 1 and 30 seconds. Default to 10 seconds."},
  )]
  class Api::Admissionregistration::V1::ValidatingWebhook < ::K8S::Types::Api::Admissionregistration::V1::ValidatingWebhook::Instance
    include ::K8S::Types::Api::Admissionregistration::V1::ValidatingWebhook
    include ::K8S::Kubernetes::Object

    # AdmissionReviewVersions is an ordered list of preferred `AdmissionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, validation will fail for this object. If a persisted webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail and be subject to the failure policy.
    def admission_review_versions : ::Array(String)
      self.["admissionReviewVersions"].as(::Array(String))
    end

    # :ditto:
    def admission_review_versions! : ::Array(String)
      self.["admissionReviewVersions"].as(::Array(String)).not_nil!
    end

    # :ditto:
    def admission_review_versions? : ::Array(String)?
      self.["admissionReviewVersions"]?.as(::Array(String)?)
    end

    # :ditto:
    def admission_review_versions=(value : ::Array(String))
      self.["admissionReviewVersions"] = value
    end

    # ClientConfig defines how to communicate with the hook. Required
    def client_config : ::K8S::Api::Admissionregistration::V1::WebhookClientConfig
      self.["clientConfig"].as(::K8S::Api::Admissionregistration::V1::WebhookClientConfig)
    end

    # :ditto:
    def client_config! : ::K8S::Api::Admissionregistration::V1::WebhookClientConfig
      self.["clientConfig"].as(::K8S::Api::Admissionregistration::V1::WebhookClientConfig).not_nil!
    end

    # :ditto:
    def client_config? : ::K8S::Api::Admissionregistration::V1::WebhookClientConfig?
      self.["clientConfig"]?.as(::K8S::Api::Admissionregistration::V1::WebhookClientConfig?)
    end

    # :ditto:
    def client_config=(value : ::K8S::Api::Admissionregistration::V1::WebhookClientConfig)
      self.["clientConfig"] = value
    end

    # FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Fail.
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

    # matchPolicy defines how the "rules" list is used to match incoming requests. Allowed values are "Exact" or "Equivalent".
    #
    # - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via [[apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.](apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.)]([apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.](apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.))
    #
    # - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via [[apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.](apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.)]([apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.](apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.))
    #
    # Defaults to "Equivalent"
    def match_policy : String?
      self.["matchPolicy"].as(String?)
    end

    # :ditto:
    def match_policy! : String
      self.["matchPolicy"].as(String?).not_nil!
    end

    # :ditto:
    def match_policy? : String?
      self.["matchPolicy"]?.as(String?)
    end

    # :ditto:
    def match_policy=(value : String?)
      self.["matchPolicy"] = value
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
    # See [[https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.)](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.))
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

    # ObjectSelector decides whether to run the webhook based on if the object has matching labels. objectSelector is evaluated against both the oldObject and newObject that would be sent to the webhook, and is considered to match if either object matches the selector. A null object (oldObject in the case of create, or newObject in the case of delete) or an object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is not considered to match. Use the object selector only if the webhook is opt-in, because end users may skip the admission webhook by setting the labels. Default to the empty LabelSelector, which matches everything.
    def object_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["objectSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def object_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["objectSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?).not_nil!
    end

    # :ditto:
    def object_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["objectSelector"]?.as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def object_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
      self.["objectSelector"] = value
    end

    # Rules describes what operations on what [[resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.)]([resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.))
    def rules : ::Array(::K8S::Api::Admissionregistration::V1::RuleWithOperations)?
      self.["rules"].as(::Array(::K8S::Api::Admissionregistration::V1::RuleWithOperations)?)
    end

    # :ditto:
    def rules! : ::Array(::K8S::Api::Admissionregistration::V1::RuleWithOperations)
      self.["rules"].as(::Array(::K8S::Api::Admissionregistration::V1::RuleWithOperations)?).not_nil!
    end

    # :ditto:
    def rules? : ::Array(::K8S::Api::Admissionregistration::V1::RuleWithOperations)?
      self.["rules"]?.as(::Array(::K8S::Api::Admissionregistration::V1::RuleWithOperations)?)
    end

    # :ditto:
    def rules=(value : ::Array(::K8S::Api::Admissionregistration::V1::RuleWithOperations)?)
      self.["rules"] = value
    end

    # SideEffects states whether this webhook has side effects. Acceptable values are: None, NoneOnDryRun (webhooks created via v1beta1 may also specify Some or Unknown). Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission change and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some.
    def side_effects : String
      self.["sideEffects"].as(String)
    end

    # :ditto:
    def side_effects! : String
      self.["sideEffects"].as(String).not_nil!
    end

    # :ditto:
    def side_effects? : String?
      self.["sideEffects"]?.as(String?)
    end

    # :ditto:
    def side_effects=(value : String)
      self.["sideEffects"] = value
    end

    # TimeoutSeconds specifies the timeout for this webhook. After the timeout passes, the webhook call will be ignored or the API call will fail based on the failure policy. The timeout value must be between 1 and 30 seconds. Default to 10 seconds.
    def timeout_seconds : Int32?
      self.["timeoutSeconds"].as(Int32?)
    end

    # :ditto:
    def timeout_seconds! : Int32
      self.["timeoutSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def timeout_seconds? : Int32?
      self.["timeoutSeconds"]?.as(Int32?)
    end

    # :ditto:
    def timeout_seconds=(value : Int32?)
      self.["timeoutSeconds"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "admissionReviewVersions", accessor: "admission_review_versions", nilable: false, read_only: false, default: nil, kind: ::Array(String) },
        { key: "clientConfig", accessor: "client_config", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Admissionregistration::V1::WebhookClientConfig },
        { key: "failurePolicy", accessor: "failure_policy", nilable: true, read_only: false, default: nil, kind: String },
        { key: "matchPolicy", accessor: "match_policy", nilable: true, read_only: false, default: nil, kind: String },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "namespaceSelector", accessor: "namespace_selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
        { key: "objectSelector", accessor: "object_selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
        { key: "rules", accessor: "rules", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Admissionregistration::V1::RuleWithOperations) },
        { key: "sideEffects", accessor: "side_effects", nilable: false, read_only: false, default: nil, kind: String },
        { key: "timeoutSeconds", accessor: "timeout_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
