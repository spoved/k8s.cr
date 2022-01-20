# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1beta1::DeploymentSpec; end

require "./rollback_config"
require "../../../apimachinery/apis/meta/v1/label_selector"
require "./deployment_strategy"
require "../../core/v1/pod_template_spec"

module K8S
  # Namespace holding the types for `Api::Apps::V1beta1::DeploymentSpec`.
  module Types::Api::Apps::V1beta1::DeploymentSpec
    alias ValueType = Int32 | ::Bool | ::K8S::Api::Apps::V1beta1::RollbackConfig | ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector | ::K8S::Api::Apps::V1beta1::DeploymentStrategy | ::K8S::Api::Core::V1::PodTemplateSpec | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
    abstract def min_ready_seconds : Int32?
    # :ditto:
    abstract def min_ready_seconds! : Int32
    # :ditto:
    abstract def min_ready_seconds? : Int32?
    # :ditto:
    abstract def min_ready_seconds=(value : Int32?)
    # Indicates that the deployment is paused.
    abstract def paused : ::Bool?
    # :ditto:
    abstract def paused! : ::Bool
    # :ditto:
    abstract def paused? : ::Bool?
    # :ditto:
    abstract def paused=(value : ::Bool?)
    # The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
    abstract def progress_deadline_seconds : Int32?
    # :ditto:
    abstract def progress_deadline_seconds! : Int32
    # :ditto:
    abstract def progress_deadline_seconds? : Int32?
    # :ditto:
    abstract def progress_deadline_seconds=(value : Int32?)
    # Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
    abstract def replicas : Int32?
    # :ditto:
    abstract def replicas! : Int32
    # :ditto:
    abstract def replicas? : Int32?
    # :ditto:
    abstract def replicas=(value : Int32?)
    # The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 2.
    abstract def revision_history_limit : Int32?
    # :ditto:
    abstract def revision_history_limit! : Int32
    # :ditto:
    abstract def revision_history_limit? : Int32?
    # :ditto:
    abstract def revision_history_limit=(value : Int32?)
    # DEPRECATED. The config this deployment is rolling back to. Will be cleared after rollback is done.
    abstract def rollback_to : ::K8S::Api::Apps::V1beta1::RollbackConfig?
    # :ditto:
    abstract def rollback_to! : ::K8S::Api::Apps::V1beta1::RollbackConfig
    # :ditto:
    abstract def rollback_to? : ::K8S::Api::Apps::V1beta1::RollbackConfig?
    # :ditto:
    abstract def rollback_to=(value : ::K8S::Api::Apps::V1beta1::RollbackConfig?)
    # Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment.
    abstract def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    # The deployment strategy to use to replace existing pods with new ones.
    abstract def strategy : ::K8S::Api::Apps::V1beta1::DeploymentStrategy?
    # :ditto:
    abstract def strategy! : ::K8S::Api::Apps::V1beta1::DeploymentStrategy
    # :ditto:
    abstract def strategy? : ::K8S::Api::Apps::V1beta1::DeploymentStrategy?
    # :ditto:
    abstract def strategy=(value : ::K8S::Api::Apps::V1beta1::DeploymentStrategy?)
    # Template describes the pods that will be created.
    abstract def template : ::K8S::Api::Core::V1::PodTemplateSpec
    # :ditto:
    abstract def template! : ::K8S::Api::Core::V1::PodTemplateSpec
    # :ditto:
    abstract def template? : ::K8S::Api::Core::V1::PodTemplateSpec?
    # :ditto:
    abstract def template=(value : ::K8S::Api::Core::V1::PodTemplateSpec)
  end

  # DeploymentSpec is the specification of the desired behavior of the Deployment.
  @[::K8S::Properties(
    min_ready_seconds: {key: "minReadySeconds", accessor: "min_ready_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    paused: {key: "paused", accessor: "paused", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Indicates that the deployment is paused.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    progress_deadline_seconds: {key: "progressDeadlineSeconds", accessor: "progress_deadline_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    replicas: {key: "replicas", accessor: "replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    revision_history_limit: {key: "revisionHistoryLimit", accessor: "revision_history_limit", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 2.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    rollback_to: {key: "rollbackTo", accessor: "rollback_to", kind: "::K8S::Api::Apps::V1beta1::RollbackConfig", nilable: true, default: nil, read_only: false, description: "DEPRECATED. The config this deployment is rolling back to. Will be cleared after rollback is done.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    strategy: {key: "strategy", accessor: "strategy", kind: "::K8S::Api::Apps::V1beta1::DeploymentStrategy", nilable: true, default: nil, read_only: false, description: "The deployment strategy to use to replace existing pods with new ones.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    template: {key: "template", accessor: "template", kind: "::K8S::Api::Core::V1::PodTemplateSpec", nilable: false, default: nil, read_only: false, description: "Template describes the pods that will be created.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1beta1::DeploymentSpec < ::K8S::Types::Api::Apps::V1beta1::DeploymentSpec::Instance
    include ::K8S::Types::Api::Apps::V1beta1::DeploymentSpec
    include ::K8S::Kubernetes::Object

    # Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
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

    # Indicates that the deployment is paused.
    def paused : ::Bool?
      self.["paused"].as(::Bool?)
    end

    # :ditto:
    def paused! : ::Bool
      self.["paused"].as(::Bool?).not_nil!
    end

    # :ditto:
    def paused? : ::Bool?
      self.["paused"]?.as(::Bool?)
    end

    # :ditto:
    def paused=(value : ::Bool?)
      self.["paused"] = value
    end

    # The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
    def progress_deadline_seconds : Int32?
      self.["progressDeadlineSeconds"].as(Int32?)
    end

    # :ditto:
    def progress_deadline_seconds! : Int32
      self.["progressDeadlineSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def progress_deadline_seconds? : Int32?
      self.["progressDeadlineSeconds"]?.as(Int32?)
    end

    # :ditto:
    def progress_deadline_seconds=(value : Int32?)
      self.["progressDeadlineSeconds"] = value
    end

    # Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
    def replicas : Int32?
      self.["replicas"].as(Int32?)
    end

    # :ditto:
    def replicas! : Int32
      self.["replicas"].as(Int32?).not_nil!
    end

    # :ditto:
    def replicas? : Int32?
      self.["replicas"]?.as(Int32?)
    end

    # :ditto:
    def replicas=(value : Int32?)
      self.["replicas"] = value
    end

    # The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 2.
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

    # DEPRECATED. The config this deployment is rolling back to. Will be cleared after rollback is done.
    def rollback_to : ::K8S::Api::Apps::V1beta1::RollbackConfig?
      self.["rollbackTo"].as(::K8S::Api::Apps::V1beta1::RollbackConfig?)
    end

    # :ditto:
    def rollback_to! : ::K8S::Api::Apps::V1beta1::RollbackConfig
      self.["rollbackTo"].as(::K8S::Api::Apps::V1beta1::RollbackConfig?).not_nil!
    end

    # :ditto:
    def rollback_to? : ::K8S::Api::Apps::V1beta1::RollbackConfig?
      self.["rollbackTo"]?.as(::K8S::Api::Apps::V1beta1::RollbackConfig?)
    end

    # :ditto:
    def rollback_to=(value : ::K8S::Api::Apps::V1beta1::RollbackConfig?)
      self.["rollbackTo"] = value
    end

    # Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment.
    def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["selector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["selector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?).not_nil!
    end

    # :ditto:
    def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["selector"]?.as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
      self.["selector"] = value
    end

    # The deployment strategy to use to replace existing pods with new ones.
    def strategy : ::K8S::Api::Apps::V1beta1::DeploymentStrategy?
      self.["strategy"].as(::K8S::Api::Apps::V1beta1::DeploymentStrategy?)
    end

    # :ditto:
    def strategy! : ::K8S::Api::Apps::V1beta1::DeploymentStrategy
      self.["strategy"].as(::K8S::Api::Apps::V1beta1::DeploymentStrategy?).not_nil!
    end

    # :ditto:
    def strategy? : ::K8S::Api::Apps::V1beta1::DeploymentStrategy?
      self.["strategy"]?.as(::K8S::Api::Apps::V1beta1::DeploymentStrategy?)
    end

    # :ditto:
    def strategy=(value : ::K8S::Api::Apps::V1beta1::DeploymentStrategy?)
      self.["strategy"] = value
    end

    # Template describes the pods that will be created.
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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "minReadySeconds", accessor: "min_ready_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "paused", accessor: "paused", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "progressDeadlineSeconds", accessor: "progress_deadline_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "replicas", accessor: "replicas", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "revisionHistoryLimit", accessor: "revision_history_limit", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "rollbackTo", accessor: "rollback_to", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1beta1::RollbackConfig },
        { key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
        { key: "strategy", accessor: "strategy", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1beta1::DeploymentStrategy },
        { key: "template", accessor: "template", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodTemplateSpec },
      ])
end
  end
end
