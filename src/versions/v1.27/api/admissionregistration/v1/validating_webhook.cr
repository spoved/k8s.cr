# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./webhook_client_config"
require "./match_condition"
require "../../../apimachinery/apis/meta/v1/label_selector"
require "./rule_with_operations"

::K8S::Kubernetes::Resource.define_object("ValidatingWebhook",
  namespace: "::K8S::Api::Admissionregistration::V1",
  properties: [

    {name: "admission_review_versions", kind: ::Array(String), key: "admissionReviewVersions", nilable: false, read_only: false, description: "AdmissionReviewVersions is an ordered list of preferred `AdmissionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, validation will fail for this object. If a persisted webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail and be subject to the failure policy."},
    {name: "client_config", kind: ::K8S::Api::Admissionregistration::V1::WebhookClientConfig, key: "clientConfig", nilable: false, read_only: false, description: "ClientConfig defines how to communicate with the hook. Required"},
    {name: "failure_policy", kind: String, key: "failurePolicy", nilable: true, read_only: false, description: "FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Fail."},
    {name: "match_conditions", kind: ::Array(::K8S::Api::Admissionregistration::V1::MatchCondition), key: "matchConditions", nilable: true, read_only: false, description: "MatchConditions is a list of conditions that must be met for a request to be sent to this webhook. Match conditions filter requests that have already been matched by the rules, namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.\n\nThe exact matching logic is (in order):\n  1. If ANY matchCondition evaluates to FALSE, the webhook is skipped.\n  2. If ALL matchConditions evaluate to TRUE, the webhook is called.\n  3. If any matchCondition evaluates to an error (but none are FALSE):\n     - If failurePolicy=Fail, reject the request\n     - If failurePolicy=Ignore, the error is ignored and the webhook is skipped\n\nThis is an alpha feature and managed by the AdmissionWebhookMatchConditions feature gate."},
    {name: "match_policy", kind: String, key: "matchPolicy", nilable: true, read_only: false, description: "matchPolicy defines how the \"rules\" list is used to match incoming requests. Allowed values are \"Exact\" or \"Equivalent\".\n\n- Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via [apps/v1, apps/v1beta1, and extensions/v1beta1, but \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.](apps/v1, apps/v1beta1, and extensions/v1beta1, but \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.)\n\n- Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via [apps/v1, apps/v1beta1, and extensions/v1beta1, and \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.](apps/v1, apps/v1beta1, and extensions/v1beta1, and \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.)\n\nDefaults to \"Equivalent\""},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where \"imagepolicy\" is the name of the webhook, and kubernetes.io is the name of the organization. Required."},
    {name: "namespace_selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "namespaceSelector", nilable: true, read_only: false, description: "NamespaceSelector decides whether to run the webhook on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the webhook.\n\nFor example, to run the webhook on any objects whose namespace is not associated with \"runlevel\" of \"0\" or \"1\";  you will set the selector as follows: \"namespaceSelector\": {\n  \"matchExpressions\": [\n    {\n      \"key\": \"runlevel\",\n      \"operator\": \"NotIn\",\n      \"values\": [\n        \"0\",\n        \"1\"\n      ]\n    }\n  ]\n}\n\nIf instead you want to only run the webhook on any objects whose namespace is associated with the \"environment\" of \"prod\" or \"staging\"; you will set the selector as follows: \"namespaceSelector\": {\n  \"matchExpressions\": [\n    {\n      \"key\": \"environment\",\n      \"operator\": \"In\",\n      \"values\": [\n        \"prod\",\n        \"staging\"\n      ]\n    }\n  ]\n}\n\nSee [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels for more examples of label selectors.)\n\nDefault to the empty LabelSelector, which matches everything."},
    {name: "object_selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "objectSelector", nilable: true, read_only: false, description: "ObjectSelector decides whether to run the webhook based on if the object has matching labels. objectSelector is evaluated against both the oldObject and newObject that would be sent to the webhook, and is considered to match if either object matches the selector. A null object (oldObject in the case of create, or newObject in the case of delete) or an object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is not considered to match. Use the object selector only if the webhook is opt-in, because end users may skip the admission webhook by setting the labels. Default to the empty LabelSelector, which matches everything."},
    {name: "rules", kind: ::Array(::K8S::Api::Admissionregistration::V1::RuleWithOperations), key: "rules", nilable: true, read_only: false, description: "Rules describes what operations on what [resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.](resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.)"},
    {name: "side_effects", kind: String, key: "sideEffects", nilable: false, read_only: false, description: "SideEffects states whether this webhook has side effects. Acceptable values are: None, NoneOnDryRun (webhooks created via v1beta1 may also specify Some or Unknown). Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission chain and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some."},
    {name: "timeout_seconds", kind: Int32, key: "timeoutSeconds", nilable: true, read_only: false, description: "TimeoutSeconds specifies the timeout for this webhook. After the timeout passes, the webhook call will be ignored or the API call will fail based on the failure policy. The timeout value must be between 1 and 30 seconds. Default to 10 seconds."},

  ]
)
