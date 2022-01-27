# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1::DaemonSetUpdateStrategy; end

require "./rolling_update_daemon_set"

module K8S
  # Namespace holding the types for `Api::Apps::V1::DaemonSetUpdateStrategy`.
  module Types::Api::Apps::V1::DaemonSetUpdateStrategy
    # Rolling update config params. Present only if type = "RollingUpdate".
    abstract def rolling_update : ::K8S::Api::Apps::V1::RollingUpdateDaemonSet?
    # :ditto:
    abstract def rolling_update! : ::K8S::Api::Apps::V1::RollingUpdateDaemonSet
    # :ditto:
    abstract def rolling_update? : ::K8S::Api::Apps::V1::RollingUpdateDaemonSet?
    # :ditto:
    abstract def rolling_update=(value : ::K8S::Api::Apps::V1::RollingUpdateDaemonSet)
    # Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
    #
    # Possible enum values:
    #  - `"OnDelete"` Replace the old daemons only when it's killed
    #  - `"RollingUpdate"` Replace the old daemons by new ones using rolling update i.e replace them on each node one after the other.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.
  @[::K8S::Properties(
    rolling_update: {key: "rollingUpdate", accessor: "rolling_update", kind: "::K8S::Api::Apps::V1::RollingUpdateDaemonSet", nilable: true, default: nil, read_only: false, description: "Rolling update config params. Present only if type = \"RollingUpdate\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: true, default: nil, read_only: false, description: "Type of daemon set update. Can be \"RollingUpdate\" or \"OnDelete\". Default is RollingUpdate.\n\nPossible enum values:\n - `\"OnDelete\"` Replace the old daemons only when it's killed\n - `\"RollingUpdate\"` Replace the old daemons by new ones using rolling update i.e replace them on each node one after the other.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1::DaemonSetUpdateStrategy < ::K8S::GenericObject
    include ::K8S::Types::Api::Apps::V1::DaemonSetUpdateStrategy
    k8s_object_accessor("rollingUpdate", rolling_update : ::K8S::Api::Apps::V1::RollingUpdateDaemonSet, true, false, "Rolling update config params. Present only if type = \"RollingUpdate\".")
    k8s_object_accessor("type", type : String, true, false, "Type of daemon set update. Can be \"RollingUpdate\" or \"OnDelete\". Default is RollingUpdate.\n\nPossible enum values:\n - `\"OnDelete\"` Replace the old daemons only when it's killed\n - `\"RollingUpdate\"` Replace the old daemons by new ones using rolling update i.e replace them on each node one after the other.")

    def initialize(*, rolling_update : ::K8S::Api::Apps::V1::RollingUpdateDaemonSet? = nil, type : String? = nil)
      super()
      self.["rollingUpdate"] = rolling_update
      self.["type"] = type
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "rollingUpdate", accessor: "rolling_update", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1::RollingUpdateDaemonSet},
      {key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
