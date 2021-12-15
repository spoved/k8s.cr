# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ReplicaSetSpec is the specification of a ReplicaSet.
  @[::K8S::Properties(
    min_ready_seconds: {type: Int32, nilable: true, key: "minReadySeconds", getter: false, setter: false},
    replicas: {type: Int32, nilable: true, key: "replicas", getter: false, setter: false},
    selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
    template: {type: Api::Core::V1::PodTemplateSpec, nilable: true, key: "template", getter: false, setter: false},
  )]
  class Api::Extensions::V1beta1::ReplicaSetSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
    @[::JSON::Field(key: "minReadySeconds", emit_null: false)]
    @[::YAML::Field(key: "minReadySeconds", emit_null: false)]
    property min_ready_seconds : Int32 | Nil

    # Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller)
    @[::JSON::Field(key: "replicas", emit_null: false)]
    @[::YAML::Field(key: "replicas", emit_null: false)]
    property replicas : Int32 | Nil

    # Selector is a label query over pods that should match the replica count. If the selector is empty, it is defaulted to the labels present on the pod template. Label keys and values that must match in order to be controlled by this replica set. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)
    @[::JSON::Field(key: "selector", emit_null: false)]
    @[::YAML::Field(key: "selector", emit_null: false)]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # Template is the object that describes the pod that will be created if insufficient replicas are detected. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)
    @[::JSON::Field(key: "template", emit_null: false)]
    @[::YAML::Field(key: "template", emit_null: false)]
    property template : Api::Core::V1::PodTemplateSpec | Nil

    def initialize(*, @min_ready_seconds : Int32 | Nil = nil, @replicas : Int32 | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @template : Api::Core::V1::PodTemplateSpec | Nil = nil)
    end
  end
end
