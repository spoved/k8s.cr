# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1::DaemonSetSpec; end

require "../../../apimachinery/apis/meta/v1/label_selector"
require "../../core/v1/pod_template_spec"
require "./daemon_set_update_strategy"

module K8S
  # Namespace holding the types for `Api::Apps::V1::DaemonSetSpec`.
  module Types::Api::Apps::V1::DaemonSetSpec
    # The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
    abstract def min_ready_seconds : Int32?
    # :ditto:
    abstract def min_ready_seconds! : Int32
    # :ditto:
    abstract def min_ready_seconds? : Int32?
    # :ditto:
    abstract def min_ready_seconds=(value : Int32)
    # The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
    abstract def revision_history_limit : Int32?
    # :ditto:
    abstract def revision_history_limit! : Int32
    # :ditto:
    abstract def revision_history_limit? : Int32?
    # :ditto:
    abstract def revision_history_limit=(value : Int32)
    # A label query over pods that are managed by the daemon set. Must match in order to be controlled. It must match the pod template's labels. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors))
    abstract def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
    # An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template))
    abstract def template : ::K8S::Api::Core::V1::PodTemplateSpec?
    # :ditto:
    abstract def template! : ::K8S::Api::Core::V1::PodTemplateSpec
    # :ditto:
    abstract def template? : ::K8S::Api::Core::V1::PodTemplateSpec?
    # :ditto:
    abstract def template=(value : ::K8S::Api::Core::V1::PodTemplateSpec)
    # An update strategy to replace existing DaemonSet pods with new pods.
    abstract def update_strategy : ::K8S::Api::Apps::V1::DaemonSetUpdateStrategy?
    # :ditto:
    abstract def update_strategy! : ::K8S::Api::Apps::V1::DaemonSetUpdateStrategy
    # :ditto:
    abstract def update_strategy? : ::K8S::Api::Apps::V1::DaemonSetUpdateStrategy?
    # :ditto:
    abstract def update_strategy=(value : ::K8S::Api::Apps::V1::DaemonSetUpdateStrategy)
  end

  # DaemonSetSpec is the specification of a daemon set.
  @[::K8S::Properties(
    min_ready_seconds: {key: "minReadySeconds", accessor: "min_ready_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    revision_history_limit: {key: "revisionHistoryLimit", accessor: "revision_history_limit", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: false, default: nil, read_only: false, description: "A label query over pods that are managed by the daemon set. Must match in order to be controlled. It must match the pod template's labels. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    template: {key: "template", accessor: "template", kind: "::K8S::Api::Core::V1::PodTemplateSpec", nilable: false, default: nil, read_only: false, description: "An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    update_strategy: {key: "updateStrategy", accessor: "update_strategy", kind: "::K8S::Api::Apps::V1::DaemonSetUpdateStrategy", nilable: true, default: nil, read_only: false, description: "An update strategy to replace existing DaemonSet pods with new pods.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1::DaemonSetSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Apps::V1::DaemonSetSpec
    k8s_object_accessor("minReadySeconds", min_ready_seconds : Int32, true, false, "The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).")
    k8s_object_accessor("revisionHistoryLimit", revision_history_limit : Int32, true, false, "The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.")
    k8s_object_accessor("selector", selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, false, false, "A label query over pods that are managed by the daemon set. Must match in order to be controlled. It must match the pod template's labels. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)")
    k8s_object_accessor("template", template : ::K8S::Api::Core::V1::PodTemplateSpec, false, false, "An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)")
    k8s_object_accessor("updateStrategy", update_strategy : ::K8S::Api::Apps::V1::DaemonSetUpdateStrategy, true, false, "An update strategy to replace existing DaemonSet pods with new pods.")

    def initialize(*, min_ready_seconds : Int32? = nil, revision_history_limit : Int32? = nil, selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector? = nil, template : ::K8S::Api::Core::V1::PodTemplateSpec? = nil, update_strategy : ::K8S::Api::Apps::V1::DaemonSetUpdateStrategy? = nil)
      super()
      self.["minReadySeconds"] = min_ready_seconds
      self.["revisionHistoryLimit"] = revision_history_limit
      self.["selector"] = selector
      self.["template"] = template
      self.["updateStrategy"] = update_strategy
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "minReadySeconds", accessor: "min_ready_seconds", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "revisionHistoryLimit", accessor: "revision_history_limit", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "selector", accessor: "selector", nilable: false, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector},
      {key: "template", accessor: "template", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodTemplateSpec},
      {key: "updateStrategy", accessor: "update_strategy", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1::DaemonSetUpdateStrategy},
    ])
  end
end
