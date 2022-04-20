# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/label_selector"
require "./deployment_strategy"
require "../../core/v1/pod_template_spec"

::K8S::Kubernetes::Resource.define_object("DeploymentSpec",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "min_ready_seconds", kind: Int32, key: "minReadySeconds", nilable: true, read_only: false, description: "Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)"},
    {name: "paused", kind: ::Bool, key: "paused", nilable: true, read_only: false, description: "Indicates that the deployment is paused."},
    {name: "progress_deadline_seconds", kind: Int32, key: "progressDeadlineSeconds", nilable: true, read_only: false, description: "The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s."},
    {name: "replicas", kind: Int32, key: "replicas", nilable: true, read_only: false, description: "Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1."},
    {name: "revision_history_limit", kind: Int32, key: "revisionHistoryLimit", nilable: true, read_only: false, description: "The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10."},
    {name: "selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "selector", nilable: false, read_only: false, description: "Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment. It must match the pod template's labels."},
    {name: "strategy", kind: ::K8S::Api::Apps::V1::DeploymentStrategy, key: "strategy", nilable: true, read_only: false, description: "The deployment strategy to use to replace existing pods with new ones."},
    {name: "template", kind: ::K8S::Api::Core::V1::PodTemplateSpec, key: "template", nilable: false, read_only: false, description: "Template describes the pods that will be created."},

  ]
)
