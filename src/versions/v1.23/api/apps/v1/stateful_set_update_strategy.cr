# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1::StatefulSetUpdateStrategy; end

require "./rolling_update_stateful_set_strategy"

module K8S
  # Namespace holding the types for `Api::Apps::V1::StatefulSetUpdateStrategy`.
  module Types::Api::Apps::V1::StatefulSetUpdateStrategy
    # RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
    abstract def rolling_update : ::K8S::Api::Apps::V1::RollingUpdateStatefulSetStrategy?
    # :ditto:
    abstract def rolling_update! : ::K8S::Api::Apps::V1::RollingUpdateStatefulSetStrategy
    # :ditto:
    abstract def rolling_update? : ::K8S::Api::Apps::V1::RollingUpdateStatefulSetStrategy?
    # :ditto:
    abstract def rolling_update=(value : ::K8S::Api::Apps::V1::RollingUpdateStatefulSetStrategy)
    # Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.
    #
    # Possible enum values:
    #  - `"OnDelete"` triggers the legacy behavior. Version tracking and ordered rolling restarts are disabled. Pods are recreated from the StatefulSetSpec when they are manually deleted. When a scale operation is performed with this strategy,specification version indicated by the StatefulSet's currentRevision.
    #  - `"RollingUpdate"` indicates that update will be applied to all Pods in the StatefulSet with respect to the StatefulSet ordering constraints. When a scale operation is performed with this strategy, new Pods will be created from the specification version indicated by the StatefulSet's updateRevision.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.
  @[::K8S::Properties(
    rolling_update: {key: "rollingUpdate", accessor: "rolling_update", kind: "::K8S::Api::Apps::V1::RollingUpdateStatefulSetStrategy", nilable: true, default: nil, read_only: false, description: "RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: true, default: nil, read_only: false, description: "Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.\n\nPossible enum values:\n - `\"OnDelete\"` triggers the legacy behavior. Version tracking and ordered rolling restarts are disabled. Pods are recreated from the StatefulSetSpec when they are manually deleted. When a scale operation is performed with this strategy,specification version indicated by the StatefulSet's currentRevision.\n - `\"RollingUpdate\"` indicates that update will be applied to all Pods in the StatefulSet with respect to the StatefulSet ordering constraints. When a scale operation is performed with this strategy, new Pods will be created from the specification version indicated by the StatefulSet's updateRevision.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1::StatefulSetUpdateStrategy < ::K8S::GenericObject
    include ::K8S::Types::Api::Apps::V1::StatefulSetUpdateStrategy
    k8s_object_accessor("rollingUpdate", rolling_update : ::K8S::Api::Apps::V1::RollingUpdateStatefulSetStrategy, true, false, "RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.")
    k8s_object_accessor("type", type : String, true, false, "Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.\n\nPossible enum values:\n - `\"OnDelete\"` triggers the legacy behavior. Version tracking and ordered rolling restarts are disabled. Pods are recreated from the StatefulSetSpec when they are manually deleted. When a scale operation is performed with this strategy,specification version indicated by the StatefulSet's currentRevision.\n - `\"RollingUpdate\"` indicates that update will be applied to all Pods in the StatefulSet with respect to the StatefulSet ordering constraints. When a scale operation is performed with this strategy, new Pods will be created from the specification version indicated by the StatefulSet's updateRevision.")

    def initialize(*, rolling_update : ::K8S::Api::Apps::V1::RollingUpdateStatefulSetStrategy? = nil, type : String? = nil)
      super()
      self.["rollingUpdate"] = rolling_update
      self.["type"] = type
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "rollingUpdate", accessor: "rolling_update", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1::RollingUpdateStatefulSetStrategy},
      {key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
