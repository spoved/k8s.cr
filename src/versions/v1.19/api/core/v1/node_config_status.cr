# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NodeConfigStatus; end

require "./node_config_source"

module K8S
  # Namespace holding the types for `Api::Core::V1::NodeConfigStatus`.
  module Types::Api::Core::V1::NodeConfigStatus
    alias ValueType = ::K8S::Api::Core::V1::NodeConfigSource | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Active reports the checkpointed config the node is actively using. Active will represent either the current version of the Assigned config, or the current LastKnownGood config, depending on whether attempting to use the Assigned config results in an error.
    abstract def active : ::K8S::Api::Core::V1::NodeConfigSource?
    # :ditto:
    abstract def active! : ::K8S::Api::Core::V1::NodeConfigSource
    # :ditto:
    abstract def active? : ::K8S::Api::Core::V1::NodeConfigSource?
    # :ditto:
    abstract def active=(value : ::K8S::Api::Core::V1::NodeConfigSource?)
    # Assigned reports the checkpointed config the node will try to use. When Node.Spec.ConfigSource is updated, the node checkpoints the associated config payload to local disk, along with a record indicating intended config. The node refers to this record to choose its config checkpoint, and reports this record in Assigned. Assigned only updates in the status after the record has been checkpointed to disk. When the Kubelet is restarted, it tries to make the Assigned config the Active config by loading and validating the checkpointed payload identified by Assigned.
    abstract def assigned : ::K8S::Api::Core::V1::NodeConfigSource?
    # :ditto:
    abstract def assigned! : ::K8S::Api::Core::V1::NodeConfigSource
    # :ditto:
    abstract def assigned? : ::K8S::Api::Core::V1::NodeConfigSource?
    # :ditto:
    abstract def assigned=(value : ::K8S::Api::Core::V1::NodeConfigSource?)
    # Error describes any problems reconciling the Spec.ConfigSource to the Active config. Errors may occur, for example, attempting to checkpoint Spec.ConfigSource to the local Assigned record, attempting to checkpoint the payload associated with Spec.ConfigSource, attempting to load or validate the Assigned config, etc. Errors may occur at different points while syncing config. Earlier errors (e.g. download or checkpointing errors) will not result in a rollback to LastKnownGood, and may resolve across Kubelet retries. Later errors (e.g. loading or validating a checkpointed config) will result in a rollback to LastKnownGood. In the latter case, it is usually possible to resolve the error by fixing the config assigned in Spec.ConfigSource. You can find additional information for debugging by searching the error message in the Kubelet log. Error is a human-readable description of the error state; machines can check whether or not Error is empty, but should not rely on the stability of the Error text across Kubelet versions.
    abstract def error : String?
    # :ditto:
    abstract def error! : String
    # :ditto:
    abstract def error? : String?
    # :ditto:
    abstract def error=(value : String?)
    # LastKnownGood reports the checkpointed config the node will fall back to when it encounters an error attempting to use the Assigned config. The Assigned config becomes the LastKnownGood config when the node determines that the Assigned config is stable and correct. This is currently implemented as a 10-minute soak period starting when the local record of Assigned config is updated. If the Assigned config is Active at the end of this period, it becomes the LastKnownGood. Note that if Spec.ConfigSource is reset to nil (use local defaults), the LastKnownGood is also immediately reset to nil, because the local default config is always assumed good. You should not make assumptions about the node's method of determining config stability and correctness, as this may change or become configurable in the future.
    abstract def last_known_good : ::K8S::Api::Core::V1::NodeConfigSource?
    # :ditto:
    abstract def last_known_good! : ::K8S::Api::Core::V1::NodeConfigSource
    # :ditto:
    abstract def last_known_good? : ::K8S::Api::Core::V1::NodeConfigSource?
    # :ditto:
    abstract def last_known_good=(value : ::K8S::Api::Core::V1::NodeConfigSource?)
  end

  # NodeConfigStatus describes the status of the config assigned by Node.Spec.ConfigSource.
  @[::K8S::Properties(
    active: {key: "active", accessor: "active", kind: "::K8S::Api::Core::V1::NodeConfigSource", nilable: true, default: nil, read_only: false, description: "Active reports the checkpointed config the node is actively using. Active will represent either the current version of the Assigned config, or the current LastKnownGood config, depending on whether attempting to use the Assigned config results in an error.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    assigned: {key: "assigned", accessor: "assigned", kind: "::K8S::Api::Core::V1::NodeConfigSource", nilable: true, default: nil, read_only: false, description: "Assigned reports the checkpointed config the node will try to use. When Node.Spec.ConfigSource is updated, the node checkpoints the associated config payload to local disk, along with a record indicating intended config. The node refers to this record to choose its config checkpoint, and reports this record in Assigned. Assigned only updates in the status after the record has been checkpointed to disk. When the Kubelet is restarted, it tries to make the Assigned config the Active config by loading and validating the checkpointed payload identified by Assigned.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    error: {key: "error", accessor: "error", kind: "String", nilable: true, default: nil, read_only: false, description: "Error describes any problems reconciling the Spec.ConfigSource to the Active config. Errors may occur, for example, attempting to checkpoint Spec.ConfigSource to the local Assigned record, attempting to checkpoint the payload associated with Spec.ConfigSource, attempting to load or validate the Assigned config, etc. Errors may occur at different points while syncing config. Earlier errors (e.g. download or checkpointing errors) will not result in a rollback to LastKnownGood, and may resolve across Kubelet retries. Later errors (e.g. loading or validating a checkpointed config) will result in a rollback to LastKnownGood. In the latter case, it is usually possible to resolve the error by fixing the config assigned in Spec.ConfigSource. You can find additional information for debugging by searching the error message in the Kubelet log. Error is a human-readable description of the error state; machines can check whether or not Error is empty, but should not rely on the stability of the Error text across Kubelet versions.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    last_known_good: {key: "lastKnownGood", accessor: "last_known_good", kind: "::K8S::Api::Core::V1::NodeConfigSource", nilable: true, default: nil, read_only: false, description: "LastKnownGood reports the checkpointed config the node will fall back to when it encounters an error attempting to use the Assigned config. The Assigned config becomes the LastKnownGood config when the node determines that the Assigned config is stable and correct. This is currently implemented as a 10-minute soak period starting when the local record of Assigned config is updated. If the Assigned config is Active at the end of this period, it becomes the LastKnownGood. Note that if Spec.ConfigSource is reset to nil (use local defaults), the LastKnownGood is also immediately reset to nil, because the local default config is always assumed good. You should not make assumptions about the node's method of determining config stability and correctness, as this may change or become configurable in the future.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::NodeConfigStatus < ::K8S::Types::Api::Core::V1::NodeConfigStatus::Instance
    include ::K8S::Types::Api::Core::V1::NodeConfigStatus
    include ::K8S::Kubernetes::Object

    # Active reports the checkpointed config the node is actively using. Active will represent either the current version of the Assigned config, or the current LastKnownGood config, depending on whether attempting to use the Assigned config results in an error.
    def active : ::K8S::Api::Core::V1::NodeConfigSource?
      self.["active"].as(::K8S::Api::Core::V1::NodeConfigSource?)
    end

    # :ditto:
    def active! : ::K8S::Api::Core::V1::NodeConfigSource
      self.["active"].as(::K8S::Api::Core::V1::NodeConfigSource?).not_nil!
    end

    # :ditto:
    def active? : ::K8S::Api::Core::V1::NodeConfigSource?
      self.["active"]?.as(::K8S::Api::Core::V1::NodeConfigSource?)
    end

    # :ditto:
    def active=(value : ::K8S::Api::Core::V1::NodeConfigSource?)
      self.["active"] = value
    end

    # Assigned reports the checkpointed config the node will try to use. When Node.Spec.ConfigSource is updated, the node checkpoints the associated config payload to local disk, along with a record indicating intended config. The node refers to this record to choose its config checkpoint, and reports this record in Assigned. Assigned only updates in the status after the record has been checkpointed to disk. When the Kubelet is restarted, it tries to make the Assigned config the Active config by loading and validating the checkpointed payload identified by Assigned.
    def assigned : ::K8S::Api::Core::V1::NodeConfigSource?
      self.["assigned"].as(::K8S::Api::Core::V1::NodeConfigSource?)
    end

    # :ditto:
    def assigned! : ::K8S::Api::Core::V1::NodeConfigSource
      self.["assigned"].as(::K8S::Api::Core::V1::NodeConfigSource?).not_nil!
    end

    # :ditto:
    def assigned? : ::K8S::Api::Core::V1::NodeConfigSource?
      self.["assigned"]?.as(::K8S::Api::Core::V1::NodeConfigSource?)
    end

    # :ditto:
    def assigned=(value : ::K8S::Api::Core::V1::NodeConfigSource?)
      self.["assigned"] = value
    end

    # Error describes any problems reconciling the Spec.ConfigSource to the Active config. Errors may occur, for example, attempting to checkpoint Spec.ConfigSource to the local Assigned record, attempting to checkpoint the payload associated with Spec.ConfigSource, attempting to load or validate the Assigned config, etc. Errors may occur at different points while syncing config. Earlier errors (e.g. download or checkpointing errors) will not result in a rollback to LastKnownGood, and may resolve across Kubelet retries. Later errors (e.g. loading or validating a checkpointed config) will result in a rollback to LastKnownGood. In the latter case, it is usually possible to resolve the error by fixing the config assigned in Spec.ConfigSource. You can find additional information for debugging by searching the error message in the Kubelet log. Error is a human-readable description of the error state; machines can check whether or not Error is empty, but should not rely on the stability of the Error text across Kubelet versions.
    def error : String?
      self.["error"].as(String?)
    end

    # :ditto:
    def error! : String
      self.["error"].as(String?).not_nil!
    end

    # :ditto:
    def error? : String?
      self.["error"]?.as(String?)
    end

    # :ditto:
    def error=(value : String?)
      self.["error"] = value
    end

    # LastKnownGood reports the checkpointed config the node will fall back to when it encounters an error attempting to use the Assigned config. The Assigned config becomes the LastKnownGood config when the node determines that the Assigned config is stable and correct. This is currently implemented as a 10-minute soak period starting when the local record of Assigned config is updated. If the Assigned config is Active at the end of this period, it becomes the LastKnownGood. Note that if Spec.ConfigSource is reset to nil (use local defaults), the LastKnownGood is also immediately reset to nil, because the local default config is always assumed good. You should not make assumptions about the node's method of determining config stability and correctness, as this may change or become configurable in the future.
    def last_known_good : ::K8S::Api::Core::V1::NodeConfigSource?
      self.["lastKnownGood"].as(::K8S::Api::Core::V1::NodeConfigSource?)
    end

    # :ditto:
    def last_known_good! : ::K8S::Api::Core::V1::NodeConfigSource
      self.["lastKnownGood"].as(::K8S::Api::Core::V1::NodeConfigSource?).not_nil!
    end

    # :ditto:
    def last_known_good? : ::K8S::Api::Core::V1::NodeConfigSource?
      self.["lastKnownGood"]?.as(::K8S::Api::Core::V1::NodeConfigSource?)
    end

    # :ditto:
    def last_known_good=(value : ::K8S::Api::Core::V1::NodeConfigSource?)
      self.["lastKnownGood"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "active", accessor: "active", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NodeConfigSource },
        { key: "assigned", accessor: "assigned", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NodeConfigSource },
        { key: "error", accessor: "error", nilable: true, read_only: false, default: nil, kind: String },
        { key: "lastKnownGood", accessor: "last_known_good", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NodeConfigSource },
      ])
end
  end
end
