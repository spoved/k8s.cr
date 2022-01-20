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
    alias ValueType = Int32 | ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector | ::K8S::Api::Core::V1::PodTemplateSpec | ::K8S::Api::Apps::V1::DaemonSetUpdateStrategy | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
    abstract def min_ready_seconds : Int32?
    # :ditto:
    abstract def min_ready_seconds! : Int32
    # :ditto:
    abstract def min_ready_seconds? : Int32?
    # :ditto:
    abstract def min_ready_seconds=(value : Int32?)
    # The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
    abstract def revision_history_limit : Int32?
    # :ditto:
    abstract def revision_history_limit! : Int32
    # :ditto:
    abstract def revision_history_limit? : Int32?
    # :ditto:
    abstract def revision_history_limit=(value : Int32?)
    # A label query over pods that are managed by the daemon set. Must match in order to be controlled. It must match the pod template's labels. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors))
    abstract def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
    # An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template))
    abstract def template : ::K8S::Api::Core::V1::PodTemplateSpec
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
    abstract def update_strategy=(value : ::K8S::Api::Apps::V1::DaemonSetUpdateStrategy?)
  end

  # DaemonSetSpec is the specification of a daemon set.
  @[::K8S::Properties(
    min_ready_seconds: {key: "minReadySeconds", accessor: "min_ready_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    revision_history_limit: {key: "revisionHistoryLimit", accessor: "revision_history_limit", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: false, default: nil, read_only: false, description: "A label query over pods that are managed by the daemon set. Must match in order to be controlled. It must match the pod template's labels. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    template: {key: "template", accessor: "template", kind: "::K8S::Api::Core::V1::PodTemplateSpec", nilable: false, default: nil, read_only: false, description: "An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: [https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    update_strategy: {key: "updateStrategy", accessor: "update_strategy", kind: "::K8S::Api::Apps::V1::DaemonSetUpdateStrategy", nilable: true, default: nil, read_only: false, description: "An update strategy to replace existing DaemonSet pods with new pods.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1::DaemonSetSpec < ::K8S::Types::Api::Apps::V1::DaemonSetSpec::Instance
    include ::K8S::Types::Api::Apps::V1::DaemonSetSpec
    include ::K8S::Kubernetes::Object

    # The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
    def min_ready_seconds : Int32?
      self.["minReadySeconds"].as(Int32?)
    end

    # :ditto:
    def min_ready_seconds! : Int32
      self.["minReadySeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def min_ready_seconds? : Int32?
      self.["minReadySeconds"]?.as(Int32?)
    end

    # :ditto:
    def min_ready_seconds=(value : Int32?)
      self.["minReadySeconds"] = value
    end

    # The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
    def revision_history_limit : Int32?
      self.["revisionHistoryLimit"].as(Int32?)
    end

    # :ditto:
    def revision_history_limit! : Int32
      self.["revisionHistoryLimit"].as(Int32?).not_nil!
    end

    # :ditto:
    def revision_history_limit? : Int32?
      self.["revisionHistoryLimit"]?.as(Int32?)
    end

    # :ditto:
    def revision_history_limit=(value : Int32?)
      self.["revisionHistoryLimit"] = value
    end

    # A label query over pods that are managed by the daemon set. Must match in order to be controlled. It must match the pod template's labels. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors))
    def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["selector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
    end

    # :ditto:
    def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["selector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector).not_nil!
    end

    # :ditto:
    def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["selector"]?.as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
      self.["selector"] = value
    end

    # An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template)](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template))
    def template : ::K8S::Api::Core::V1::PodTemplateSpec
      self.["template"].as(::K8S::Api::Core::V1::PodTemplateSpec)
    end

    # :ditto:
    def template! : ::K8S::Api::Core::V1::PodTemplateSpec
      self.["template"].as(::K8S::Api::Core::V1::PodTemplateSpec).not_nil!
    end

    # :ditto:
    def template? : ::K8S::Api::Core::V1::PodTemplateSpec?
      self.["template"]?.as(::K8S::Api::Core::V1::PodTemplateSpec?)
    end

    # :ditto:
    def template=(value : ::K8S::Api::Core::V1::PodTemplateSpec)
      self.["template"] = value
    end

    # An update strategy to replace existing DaemonSet pods with new pods.
    def update_strategy : ::K8S::Api::Apps::V1::DaemonSetUpdateStrategy?
      self.["updateStrategy"].as(::K8S::Api::Apps::V1::DaemonSetUpdateStrategy?)
    end

    # :ditto:
    def update_strategy! : ::K8S::Api::Apps::V1::DaemonSetUpdateStrategy
      self.["updateStrategy"].as(::K8S::Api::Apps::V1::DaemonSetUpdateStrategy?).not_nil!
    end

    # :ditto:
    def update_strategy? : ::K8S::Api::Apps::V1::DaemonSetUpdateStrategy?
      self.["updateStrategy"]?.as(::K8S::Api::Apps::V1::DaemonSetUpdateStrategy?)
    end

    # :ditto:
    def update_strategy=(value : ::K8S::Api::Apps::V1::DaemonSetUpdateStrategy?)
      self.["updateStrategy"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "minReadySeconds", accessor: "min_ready_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "revisionHistoryLimit", accessor: "revision_history_limit", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "selector", accessor: "selector", nilable: false, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
        { key: "template", accessor: "template", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodTemplateSpec },
        { key: "updateStrategy", accessor: "update_strategy", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1::DaemonSetUpdateStrategy },
      ])
end
  end
end
