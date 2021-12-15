# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PersistentVolumeStatus is the current status of a persistent volume.
  @[::K8S::Properties(
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    phase: {type: String, nilable: true, key: "phase", getter: false, setter: false},
    reason: {type: String, nilable: true, key: "reason", getter: false, setter: false},
  )]
  class Api::Core::V1::PersistentVolumeStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # A human-readable message indicating details about why the volume is in this state.
    @[::JSON::Field(key: "message", emit_null: false)]
    @[::YAML::Field(key: "message", emit_null: false)]
    property message : String | Nil

    # Phase indicates if a volume is available, bound to a claim, or released by a claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase](https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase)
    #
    # Possible enum values:
    #  - `"Available"` used for PersistentVolumes that are not yet bound Available volumes are held by the binder and matched to PersistentVolumeClaims
    #  - `"Bound"` used for PersistentVolumes that are bound
    #  - `"Failed"` used for PersistentVolumes that failed to be correctly recycled or deleted after being released from a claim
    #  - `"Pending"` used for PersistentVolumes that are not available
    #  - `"Released"` used for PersistentVolumes where the bound PersistentVolumeClaim was deleted released volumes must be recycled before becoming available again this phase is used by the persistent volume claim binder to signal to another process to reclaim the resource
    @[::JSON::Field(key: "phase", emit_null: false)]
    @[::YAML::Field(key: "phase", emit_null: false)]
    property phase : String | Nil

    # Reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
    @[::JSON::Field(key: "reason", emit_null: false)]
    @[::YAML::Field(key: "reason", emit_null: false)]
    property reason : String | Nil

    def initialize(*, @message : String | Nil = nil, @phase : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
