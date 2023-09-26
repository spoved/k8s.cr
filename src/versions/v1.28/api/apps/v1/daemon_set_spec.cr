# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/label_selector"
require "../../core/v1/pod_template_spec"
require "./daemon_set_update_strategy"

::K8S::Kubernetes::Resource.define_object("DaemonSetSpec",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "min_ready_seconds", kind: Int32, key: "minReadySeconds", nilable: true, read_only: false, description: "The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)."},
    {name: "revision_history_limit", kind: Int32, key: "revisionHistoryLimit", nilable: true, read_only: false, description: "The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10."},
    {name: "selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "selector", nilable: false, read_only: false, description: "A label query over pods that are managed by the daemon set. Must match in order to be controlled. It must match the pod template's labels. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)"},
    {name: "template", kind: ::K8S::Api::Core::V1::PodTemplateSpec, key: "template", nilable: false, read_only: false, description: "An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). The only allowed template.spec.restartPolicy value is \"Always\". More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)"},
    {name: "update_strategy", kind: ::K8S::Api::Apps::V1::DaemonSetUpdateStrategy, key: "updateStrategy", nilable: true, read_only: false, description: "An update strategy to replace existing DaemonSet pods with new pods."},

  ]
)
