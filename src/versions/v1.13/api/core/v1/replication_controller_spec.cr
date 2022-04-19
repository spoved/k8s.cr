# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./pod_template_spec"

::K8S::Kubernetes::Resource.define_object("ReplicationControllerSpec",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "min_ready_seconds", kind: Int32, key: "minReadySeconds", nilable: true, read_only: false, description: "Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)"},
    {name: "replicas", kind: Int32, key: "replicas", nilable: true, read_only: false, description: "Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller)"},
    {name: "selector", kind: ::Hash(String, String), key: "selector", nilable: true, read_only: false, description: "Selector is a label query over pods that should match the Replicas count. If Selector is empty, it is defaulted to the labels present on the Pod template. Label keys and values that must match in order to be controlled by this replication controller, if empty defaulted to labels on Pod template. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)"},
    {name: "template", kind: ::K8S::Api::Core::V1::PodTemplateSpec, key: "template", nilable: true, read_only: false, description: "Template is the object that describes the pod that will be created if insufficient replicas are detected. This takes precedence over a TemplateRef. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)"},

  ]
)
