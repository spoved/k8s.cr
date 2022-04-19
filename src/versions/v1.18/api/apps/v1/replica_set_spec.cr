# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/label_selector"
require "../../core/v1/pod_template_spec"

::K8S::Kubernetes::Resource.define_object("ReplicaSetSpec",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "min_ready_seconds", kind: Int32, key: "minReadySeconds", nilable: true, read_only: false, description: "Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)"},
    {name: "replicas", kind: Int32, key: "replicas", nilable: true, read_only: false, description: "Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller)"},
    {name: "selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "selector", nilable: false, read_only: false, description: "Selector is a label query over pods that should match the replica count. Label keys and values that must match in order to be controlled by this replica set. It must match the pod template's labels. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)"},
    {name: "template", kind: ::K8S::Api::Core::V1::PodTemplateSpec, key: "template", nilable: true, read_only: false, description: "Template is the object that describes the pod that will be created if insufficient replicas are detected. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)"},

  ]
)
