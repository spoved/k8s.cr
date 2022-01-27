# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1::StatefulSetSpec; end

require "./stateful_set_persistent_volume_claim_retention_policy"
require "../../../apimachinery/apis/meta/v1/label_selector"
require "../../core/v1/pod_template_spec"
require "./stateful_set_update_strategy"
require "../../core/v1/persistent_volume_claim"

module K8S
  # Namespace holding the types for `Api::Apps::V1::StatefulSetSpec`.
  module Types::Api::Apps::V1::StatefulSetSpec
    # Minimum number of seconds for which a newly created pod should be ready without any of its container crashing for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready) This is an alpha field and requires enabling StatefulSetMinReadySeconds feature gate.
    abstract def min_ready_seconds : Int32?
    # :ditto:
    abstract def min_ready_seconds! : Int32
    # :ditto:
    abstract def min_ready_seconds? : Int32?
    # :ditto:
    abstract def min_ready_seconds=(value : Int32)
    # persistentVolumeClaimRetentionPolicy describes the lifecycle of persistent volume claims created from volumeClaimTemplates. By default, all persistent volume claims are created as needed and retained until manually deleted. This policy allows the lifecycle to be altered, for example by deleting persistent volume claims when their stateful set is deleted, or when their pod is scaled down. This requires the StatefulSetAutoDeletePVC feature gate to be enabled, which is alpha.  +optional
    abstract def persistent_volume_claim_retention_policy : ::K8S::Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy?
    # :ditto:
    abstract def persistent_volume_claim_retention_policy! : ::K8S::Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy
    # :ditto:
    abstract def persistent_volume_claim_retention_policy? : ::K8S::Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy?
    # :ditto:
    abstract def persistent_volume_claim_retention_policy=(value : ::K8S::Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy)
    # podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.
    #
    # Possible enum values:
    #  - `"OrderedReady"` will create pods in strictly increasing order on scale up and strictly decreasing order on scale down, progressing only when the previous pod is ready or terminated. At most one pod will be changed at any time.
    #  - `"Parallel"` will create and delete pods as soon as the stateful set replica count is changed, and will not wait for pods to be ready or complete termination.
    abstract def pod_management_policy : String?
    # :ditto:
    abstract def pod_management_policy! : String
    # :ditto:
    abstract def pod_management_policy? : String?
    # :ditto:
    abstract def pod_management_policy=(value : String)
    # replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
    abstract def replicas : Int32?
    # :ditto:
    abstract def replicas! : Int32
    # :ditto:
    abstract def replicas? : Int32?
    # :ditto:
    abstract def replicas=(value : Int32)
    # revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
    abstract def revision_history_limit : Int32?
    # :ditto:
    abstract def revision_history_limit! : Int32
    # :ditto:
    abstract def revision_history_limit? : Int32?
    # :ditto:
    abstract def revision_history_limit=(value : Int32)
    # selector is a label query over pods that should match the replica count. It must match the pod template's labels. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors))
    abstract def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
    # serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get [[DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.](DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.)]([DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.](DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where "pod-specific-string" is managed by the StatefulSet controller.))
    abstract def service_name : String?
    # :ditto:
    abstract def service_name! : String
    # :ditto:
    abstract def service_name? : String?
    # :ditto:
    abstract def service_name=(value : String)
    # template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet.
    abstract def template : ::K8S::Api::Core::V1::PodTemplateSpec?
    # :ditto:
    abstract def template! : ::K8S::Api::Core::V1::PodTemplateSpec
    # :ditto:
    abstract def template? : ::K8S::Api::Core::V1::PodTemplateSpec?
    # :ditto:
    abstract def template=(value : ::K8S::Api::Core::V1::PodTemplateSpec)
    # updateStrategy indicates the StatefulSetUpdateStrategy that will be employed to update Pods in the StatefulSet when a revision is made to Template.
    abstract def update_strategy : ::K8S::Api::Apps::V1::StatefulSetUpdateStrategy?
    # :ditto:
    abstract def update_strategy! : ::K8S::Api::Apps::V1::StatefulSetUpdateStrategy
    # :ditto:
    abstract def update_strategy? : ::K8S::Api::Apps::V1::StatefulSetUpdateStrategy?
    # :ditto:
    abstract def update_strategy=(value : ::K8S::Api::Apps::V1::StatefulSetUpdateStrategy)
    # volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
    abstract def volume_claim_templates : ::Array(::K8S::Api::Core::V1::PersistentVolumeClaim)?
    # :ditto:
    abstract def volume_claim_templates! : ::Array(::K8S::Api::Core::V1::PersistentVolumeClaim)
    # :ditto:
    abstract def volume_claim_templates? : ::Array(::K8S::Api::Core::V1::PersistentVolumeClaim)?
    # :ditto:
    abstract def volume_claim_templates=(value : ::Array(::K8S::Api::Core::V1::PersistentVolumeClaim))
  end

  # A StatefulSetSpec is the specification of a StatefulSet.
  @[::K8S::Properties(
    min_ready_seconds: {key: "minReadySeconds", accessor: "min_ready_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Minimum number of seconds for which a newly created pod should be ready without any of its container crashing for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready) This is an alpha field and requires enabling StatefulSetMinReadySeconds feature gate.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    persistent_volume_claim_retention_policy: {key: "persistentVolumeClaimRetentionPolicy", accessor: "persistent_volume_claim_retention_policy", kind: "::K8S::Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy", nilable: true, default: nil, read_only: false, description: "persistentVolumeClaimRetentionPolicy describes the lifecycle of persistent volume claims created from volumeClaimTemplates. By default, all persistent volume claims are created as needed and retained until manually deleted. This policy allows the lifecycle to be altered, for example by deleting persistent volume claims when their stateful set is deleted, or when their pod is scaled down. This requires the StatefulSetAutoDeletePVC feature gate to be enabled, which is alpha.  +optional", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pod_management_policy: {key: "podManagementPolicy", accessor: "pod_management_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.\n\nPossible enum values:\n - `\"OrderedReady\"` will create pods in strictly increasing order on scale up and strictly decreasing order on scale down, progressing only when the previous pod is ready or terminated. At most one pod will be changed at any time.\n - `\"Parallel\"` will create and delete pods as soon as the stateful set replica count is changed, and will not wait for pods to be ready or complete termination.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    replicas: {key: "replicas", accessor: "replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    revision_history_limit: {key: "revisionHistoryLimit", accessor: "revision_history_limit", kind: "Int32", nilable: true, default: nil, read_only: false, description: "revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: false, default: nil, read_only: false, description: "selector is a label query over pods that should match the replica count. It must match the pod template's labels. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    service_name: {key: "serviceName", accessor: "service_name", kind: "String", nilable: false, default: nil, read_only: false, description: "serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get [DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where \"pod-specific-string\" is managed by the StatefulSet controller.](DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where \"pod-specific-string\" is managed by the StatefulSet controller.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    template: {key: "template", accessor: "template", kind: "::K8S::Api::Core::V1::PodTemplateSpec", nilable: false, default: nil, read_only: false, description: "template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    update_strategy: {key: "updateStrategy", accessor: "update_strategy", kind: "::K8S::Api::Apps::V1::StatefulSetUpdateStrategy", nilable: true, default: nil, read_only: false, description: "updateStrategy indicates the StatefulSetUpdateStrategy that will be employed to update Pods in the StatefulSet when a revision is made to Template.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_claim_templates: {key: "volumeClaimTemplates", accessor: "volume_claim_templates", kind: "::Array(::K8S::Api::Core::V1::PersistentVolumeClaim)", nilable: true, default: nil, read_only: false, description: "volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1::StatefulSetSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Apps::V1::StatefulSetSpec
    k8s_object_accessor("minReadySeconds", min_ready_seconds : Int32, true, false, "Minimum number of seconds for which a newly created pod should be ready without any of its container crashing for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready) This is an alpha field and requires enabling StatefulSetMinReadySeconds feature gate.")
    k8s_object_accessor("persistentVolumeClaimRetentionPolicy", persistent_volume_claim_retention_policy : ::K8S::Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy, true, false, "persistentVolumeClaimRetentionPolicy describes the lifecycle of persistent volume claims created from volumeClaimTemplates. By default, all persistent volume claims are created as needed and retained until manually deleted. This policy allows the lifecycle to be altered, for example by deleting persistent volume claims when their stateful set is deleted, or when their pod is scaled down. This requires the StatefulSetAutoDeletePVC feature gate to be enabled, which is alpha.  +optional")
    k8s_object_accessor("podManagementPolicy", pod_management_policy : String, true, false, "podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.\n\nPossible enum values:\n - `\"OrderedReady\"` will create pods in strictly increasing order on scale up and strictly decreasing order on scale down, progressing only when the previous pod is ready or terminated. At most one pod will be changed at any time.\n - `\"Parallel\"` will create and delete pods as soon as the stateful set replica count is changed, and will not wait for pods to be ready or complete termination.")
    k8s_object_accessor("replicas", replicas : Int32, true, false, "replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.")
    k8s_object_accessor("revisionHistoryLimit", revision_history_limit : Int32, true, false, "revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.")
    k8s_object_accessor("selector", selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, false, false, "selector is a label query over pods that should match the replica count. It must match the pod template's labels. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)")
    k8s_object_accessor("serviceName", service_name : String, false, false, "serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get [DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where \"pod-specific-string\" is managed by the StatefulSet controller.](DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where \"pod-specific-string\" is managed by the StatefulSet controller.)")
    k8s_object_accessor("template", template : ::K8S::Api::Core::V1::PodTemplateSpec, false, false, "template is the object that describes the pod that will be created if insufficient replicas are detected. Each pod stamped out by the StatefulSet will fulfill this Template, but have a unique identity from the rest of the StatefulSet.")
    k8s_object_accessor("updateStrategy", update_strategy : ::K8S::Api::Apps::V1::StatefulSetUpdateStrategy, true, false, "updateStrategy indicates the StatefulSetUpdateStrategy that will be employed to update Pods in the StatefulSet when a revision is made to Template.")
    k8s_object_accessor("volumeClaimTemplates", volume_claim_templates : ::Array(::K8S::Api::Core::V1::PersistentVolumeClaim), true, false, "volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.")

    def initialize(*, min_ready_seconds : Int32? = nil, persistent_volume_claim_retention_policy : ::K8S::Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy? = nil, pod_management_policy : String? = nil, replicas : Int32? = nil, revision_history_limit : Int32? = nil, selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector? = nil, service_name : String? = nil, template : ::K8S::Api::Core::V1::PodTemplateSpec? = nil, update_strategy : ::K8S::Api::Apps::V1::StatefulSetUpdateStrategy? = nil, volume_claim_templates : ::Array(::K8S::Api::Core::V1::PersistentVolumeClaim)? = nil)
      super()
      self.["minReadySeconds"] = min_ready_seconds
      self.["persistentVolumeClaimRetentionPolicy"] = persistent_volume_claim_retention_policy
      self.["podManagementPolicy"] = pod_management_policy
      self.["replicas"] = replicas
      self.["revisionHistoryLimit"] = revision_history_limit
      self.["selector"] = selector
      self.["serviceName"] = service_name
      self.["template"] = template
      self.["updateStrategy"] = update_strategy
      self.["volumeClaimTemplates"] = volume_claim_templates
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "minReadySeconds", accessor: "min_ready_seconds", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "persistentVolumeClaimRetentionPolicy", accessor: "persistent_volume_claim_retention_policy", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy},
      {key: "podManagementPolicy", accessor: "pod_management_policy", nilable: true, read_only: false, default: nil, kind: String},
      {key: "replicas", accessor: "replicas", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "revisionHistoryLimit", accessor: "revision_history_limit", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "selector", accessor: "selector", nilable: false, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector},
      {key: "serviceName", accessor: "service_name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "template", accessor: "template", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodTemplateSpec},
      {key: "updateStrategy", accessor: "update_strategy", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1::StatefulSetUpdateStrategy},
      {key: "volumeClaimTemplates", accessor: "volume_claim_templates", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::PersistentVolumeClaim)},
    ])
  end
end
