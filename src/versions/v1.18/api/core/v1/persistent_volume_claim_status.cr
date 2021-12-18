# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PersistentVolumeClaimStatus is the current status of a persistent volume claim.
  @[::K8S::Properties(
    access_modes: {type: Array(String), nilable: true, key: "accessModes", getter: false, setter: false},
    capacity: {type: Hash(String, Int32 | String), nilable: true, key: "capacity", getter: false, setter: false},
    conditions: {type: Array(Api::Core::V1::PersistentVolumeClaimCondition), nilable: true, key: "conditions", getter: false, setter: false},
    phase: {type: String, nilable: true, key: "phase", getter: false, setter: false},
  )]
  class Api::Core::V1::PersistentVolumeClaimStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # AccessModes contains the actual access modes the volume backing the PVC has. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)
    @[::JSON::Field(key: "accessModes", emit_null: false)]
    @[::YAML::Field(key: "accessModes", emit_null: false)]
    property access_modes : Array(String) | Nil

    # Represents the actual resources of the underlying volume.
    @[::JSON::Field(key: "capacity", emit_null: false)]
    @[::YAML::Field(key: "capacity", emit_null: false)]
    property capacity : Hash(String, Int32 | String) | Nil

    # Current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(Api::Core::V1::PersistentVolumeClaimCondition) | Nil

    # Phase represents the current phase of PersistentVolumeClaim.
    @[::JSON::Field(key: "phase", emit_null: false)]
    @[::YAML::Field(key: "phase", emit_null: false)]
    property phase : String | Nil

    def initialize(*, @access_modes : Array(String) | Nil = nil, @capacity : Hash(String, Int32 | String) | Nil = nil, @conditions : Array(Api::Core::V1::PersistentVolumeClaimCondition) | Nil = nil, @phase : String | Nil = nil)
    end
  end
end
