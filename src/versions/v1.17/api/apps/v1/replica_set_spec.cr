# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1::ReplicaSetSpec; end

require "../../../apimachinery/apis/meta/v1/label_selector"
require "../../core/v1/pod_template_spec"

module K8S
  # Namespace holding the types for `Api::Apps::V1::ReplicaSetSpec`.
  module Types::Api::Apps::V1::ReplicaSetSpec
    # Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
    abstract def min_ready_seconds : Int32?
    # :ditto:
    abstract def min_ready_seconds! : Int32
    # :ditto:
    abstract def min_ready_seconds? : Int32?
    # :ditto:
    abstract def min_ready_seconds=(value : Int32)
    # Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller)](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller))
    abstract def replicas : Int32?
    # :ditto:
    abstract def replicas! : Int32
    # :ditto:
    abstract def replicas? : Int32?
    # :ditto:
    abstract def replicas=(value : Int32)
    # Selector is a label query over pods that should match the replica count. Label keys and values that must match in order to be controlled by this replica set. It must match the pod template's labels. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors))
    abstract def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
    # Template is the object that describes the pod that will be created if insufficient replicas are detected. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template))
    abstract def template : ::K8S::Api::Core::V1::PodTemplateSpec?
    # :ditto:
    abstract def template! : ::K8S::Api::Core::V1::PodTemplateSpec
    # :ditto:
    abstract def template? : ::K8S::Api::Core::V1::PodTemplateSpec?
    # :ditto:
    abstract def template=(value : ::K8S::Api::Core::V1::PodTemplateSpec)
  end

  # ReplicaSetSpec is the specification of a ReplicaSet.
  @[::K8S::Properties(
    min_ready_seconds: {key: "minReadySeconds", accessor: "min_ready_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    replicas: {key: "replicas", accessor: "replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: false, default: nil, read_only: false, description: "Selector is a label query over pods that should match the replica count. Label keys and values that must match in order to be controlled by this replica set. It must match the pod template's labels. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    template: {key: "template", accessor: "template", kind: "::K8S::Api::Core::V1::PodTemplateSpec", nilable: true, default: nil, read_only: false, description: "Template is the object that describes the pod that will be created if insufficient replicas are detected. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1::ReplicaSetSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Apps::V1::ReplicaSetSpec
    k8s_object_accessor("minReadySeconds", min_ready_seconds : Int32, true, false, "Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)")
    k8s_object_accessor("replicas", replicas : Int32, true, false, "Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller)")
    k8s_object_accessor("selector", selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, false, false, "Selector is a label query over pods that should match the replica count. Label keys and values that must match in order to be controlled by this replica set. It must match the pod template's labels. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)")
    k8s_object_accessor("template", template : ::K8S::Api::Core::V1::PodTemplateSpec, true, false, "Template is the object that describes the pod that will be created if insufficient replicas are detected. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)")

    def initialize(*, min_ready_seconds : Int32? = nil, replicas : Int32? = nil, selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector? = nil, template : ::K8S::Api::Core::V1::PodTemplateSpec? = nil)
      super()
      self.["minReadySeconds"] = min_ready_seconds
      self.["replicas"] = replicas
      self.["selector"] = selector
      self.["template"] = template
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "minReadySeconds", accessor: "min_ready_seconds", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "replicas", accessor: "replicas", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "selector", accessor: "selector", nilable: false, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector},
      {key: "template", accessor: "template", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodTemplateSpec},
    ])
  end
end
