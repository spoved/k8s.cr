# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PersistentVolumeClaimStatus is the current status of a persistent volume claim.
  @[::K8S::Properties(
    access_modes: {type: Array(String), nilable: true, key: "accessModes", getter: false, setter: false},
    allocated_resources: {type: Hash(String, String), nilable: true, key: "allocatedResources", getter: false, setter: false},
    capacity: {type: Hash(String, String), nilable: true, key: "capacity", getter: false, setter: false},
    conditions: {type: Array(Api::Core::V1::PersistentVolumeClaimCondition), nilable: true, key: "conditions", getter: false, setter: false},
    phase: {type: String, nilable: true, key: "phase", getter: false, setter: false},
    resize_status: {type: String, nilable: true, key: "resizeStatus", getter: false, setter: false},
  )]
  class Api::Core::V1::PersistentVolumeClaimStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # AccessModes contains the actual access modes the volume backing the PVC has. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)
    @[::JSON::Field(key: "accessModes", emit_null: false)]
    @[::YAML::Field(key: "accessModes", emit_null: false)]
    property access_modes : Array(String) | Nil

    # The storage resource within AllocatedResources tracks the capacity allocated to a PVC. It may be larger than the actual capacity when a volume expansion operation is requested. For storage quota, the larger value from allocatedResources and PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is used for quota calculation. If a volume expansion capacity request is lowered, allocatedResources is only lowered if there are no expansion operations in progress and if the actual volume capacity is equal or lower than the requested capacity. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
    @[::JSON::Field(key: "allocatedResources", emit_null: false)]
    @[::YAML::Field(key: "allocatedResources", emit_null: false)]
    property allocated_resources : Hash(String, String) | Nil

    # Represents the actual resources of the underlying volume.
    @[::JSON::Field(key: "capacity", emit_null: false)]
    @[::YAML::Field(key: "capacity", emit_null: false)]
    property capacity : Hash(String, String) | Nil

    # Current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(Api::Core::V1::PersistentVolumeClaimCondition) | Nil

    # Phase represents the current phase of PersistentVolumeClaim.
    #
    # Possible enum values:
    #  - `"Bound"` used for PersistentVolumeClaims that are bound
    #  - `"Lost"` used for PersistentVolumeClaims that lost their underlying PersistentVolume. The claim was bound to a PersistentVolume and this volume does not exist any longer and all data on it was lost.
    #  - `"Pending"` used for PersistentVolumeClaims that are not yet bound
    @[::JSON::Field(key: "phase", emit_null: false)]
    @[::YAML::Field(key: "phase", emit_null: false)]
    property phase : String | Nil

    # ResizeStatus stores status of resize operation. ResizeStatus is not set by default but when expansion is complete resizeStatus is set to empty string by resize controller or kubelet. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
    @[::JSON::Field(key: "resizeStatus", emit_null: false)]
    @[::YAML::Field(key: "resizeStatus", emit_null: false)]
    property resize_status : String | Nil

    def initialize(*, @access_modes : Array | Nil = nil, @allocated_resources : Hash(String, String) | Nil = nil, @capacity : Hash(String, String) | Nil = nil, @conditions : Array | Nil = nil, @phase : String | Nil = nil, @resize_status : String | Nil = nil)
    end
  end
end
