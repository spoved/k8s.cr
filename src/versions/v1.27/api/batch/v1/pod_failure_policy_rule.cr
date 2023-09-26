# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./pod_failure_policy_on_exit_codes_requirement"
require "./pod_failure_policy_on_pod_conditions_pattern"

::K8S::Kubernetes::Resource.define_object("PodFailurePolicyRule",
  namespace: "::K8S::Api::Batch::V1",
  properties: [

    {name: "action", kind: String, key: "action", nilable: false, read_only: false, description: "Specifies the action taken on a pod failure when the requirements are satisfied. Possible values are:\n\n- FailJob: indicates that the pod's job is marked as Failed and all\n  running pods are terminated.\n- Ignore: indicates that the counter towards the .backoffLimit is not\n  incremented and a replacement pod is created.\n- Count: indicates that the pod is handled in the default way - the\n  counter towards the .backoffLimit is incremented.\nAdditional values are considered to be added in the future. Clients should react to an unknown action by skipping the rule."},
    {name: "on_exit_codes", kind: ::K8S::Api::Batch::V1::PodFailurePolicyOnExitCodesRequirement, key: "onExitCodes", nilable: true, read_only: false, description: "Represents the requirement on the container exit codes."},
    {name: "on_pod_conditions", kind: ::Array(::K8S::Api::Batch::V1::PodFailurePolicyOnPodConditionsPattern), key: "onPodConditions", nilable: true, read_only: false, description: "Represents the requirement on the pod conditions. The requirement is represented as a list of pod condition patterns. The requirement is satisfied if at least one pattern matches an actual pod condition. At most 20 elements are allowed."},

  ]
)
