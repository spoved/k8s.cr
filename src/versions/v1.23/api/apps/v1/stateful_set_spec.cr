# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # A StatefulSetSpec is the specification of a StatefulSet.
  @[::K8S::Properties(
    min_ready_seconds: {type: Int32, nilable: true, key: "minReadySeconds", getter: false, setter: false},
    persistent_volume_claim_retention_policy: {type: Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy, nilable: true, key: "persistentVolumeClaimRetentionPolicy", getter: false, setter: false},
    pod_management_policy: {type: String, nilable: true, key: "podManagementPolicy", getter: false, setter: false},
    replicas: {type: Int32, nilable: true, key: "replicas", getter: false, setter: false},
    revision_history_limit: {type: Int32, nilable: true, key: "revisionHistoryLimit", getter: false, setter: false},
    selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: false, key: "selector", getter: false, setter: false},
    service_name: {type: String, nilable: false, key: "serviceName", getter: false, setter: false},
    template: {type: Api::Core::V1::PodTemplateSpec, nilable: false, key: "template", getter: false, setter: false},
    update_strategy: {type: Api::Apps::V1::StatefulSetUpdateStrategy, nilable: true, key: "updateStrategy", getter: false, setter: false},
    volume_claim_templates: {type: Array(Api::Core::V1::PersistentVolumeClaim), nilable: true, key: "volumeClaimTemplates", getter: false, setter: false},
  )]
  class Api::Apps::V1::StatefulSetSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Minimum number of seconds for which a newly created pod should be ready without any of its container crashing for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready) This is an alpha field and requires enabling StatefulSetMinReadySeconds feature gate.
    @[::JSON::Field(key: "minReadySeconds", emit_null: false)]
    @[::YAML::Field(key: "minReadySeconds", emit_null: false)]
    property min_ready_seconds : Int32 | Nil

    # persistentVolumeClaimRetentionPolicy describes the lifecycle of persistent volume claims created from volumeClaimTemplates. By default, all persistent volume claims are created as needed and retained until manually deleted. This policy allows the lifecycle to be altered, for example by deleting persistent volume claims when their stateful set is deleted, or when their pod is scaled down. This requires the StatefulSetAutoDeletePVC feature gate to be enabled, which is alpha.  +optional
    @[::JSON::Field(key: "persistentVolumeClaimRetentionPolicy", emit_null: false)]
    @[::YAML::Field(key: "persistentVolumeClaimRetentionPolicy", emit_null: false)]
    property persistent_volume_claim_retention_policy : Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy | Nil

    # podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.
    #
    # Possible enum values:
    #  - `"OrderedReady"` will create pods in strictly increasing order on scale up and strictly decreasing order on scale down, progressing only when the previous pod is ready or terminated. At most one pod will be changed at any time.
    #  - `"Parallel"` will create and delete pods as soon as the stateful set replica count is changed, and will not wait for pods to be ready or complete termination.
    @[::JSON::Field(key: "podManagementPolicy", emit_null: false)]
    @[::YAML::Field(key: "podManagementPolicy", emit_null: false)]
    property pod_management_policy : String | Nil

    # replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
    @[::JSON::Field(key: "replicas", emit_null: false)]
    @[::YAML::Field(key: "replicas", emit_null: false)]
    property replicas : Int32 | Nil

    # revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
    @[::JSON::Field(key: "revisionHistoryLimit", emit_null: false)]
    @[::YAML::Field(key: "revisionHistoryLimit", emit_null: false)]
    property revision_history_limit : Int32 | Nil

    # selector is a label query over pods that should match the replica count. It must match the pod template's labels. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)
    @[::JSON::Field(key: "selector", emit_null: true)]
    @[::YAML::Field(key: "selector", emit_null: true)]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector

    # serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get [DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.](DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.)
    @[::JSON::Field(key: "serviceName", emit_null: true)]
    @[::YAML::Field(key: "serviceName", emit_null: true)]
    property service_name : String

    # template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet.
    @[::JSON::Field(key: "template", emit_null: true)]
    @[::YAML::Field(key: "template", emit_null: true)]
    property template : Api::Core::V1::PodTemplateSpec

    # updateStrategy indicates the StatefulSetUpdateStrategy that will be employed to update Pods in the StatefulSet when a revision is made to Template.
    @[::JSON::Field(key: "updateStrategy", emit_null: false)]
    @[::YAML::Field(key: "updateStrategy", emit_null: false)]
    property update_strategy : Api::Apps::V1::StatefulSetUpdateStrategy | Nil

    # volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
    @[::JSON::Field(key: "volumeClaimTemplates", emit_null: false)]
    @[::YAML::Field(key: "volumeClaimTemplates", emit_null: false)]
    property volume_claim_templates : Array(Api::Core::V1::PersistentVolumeClaim) | Nil

    def initialize(*, @selector : Apimachinery::Apis::Meta::V1::LabelSelector, @service_name : String, @template : Api::Core::V1::PodTemplateSpec, @min_ready_seconds : Int32 | Nil = nil, @persistent_volume_claim_retention_policy : Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy | Nil = nil, @pod_management_policy : String | Nil = nil, @replicas : Int32 | Nil = nil, @revision_history_limit : Int32 | Nil = nil, @update_strategy : Api::Apps::V1::StatefulSetUpdateStrategy | Nil = nil, @volume_claim_templates : Array | Nil = nil)
    end
  end
end
