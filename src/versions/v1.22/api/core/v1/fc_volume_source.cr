# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as [read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.](read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.)
  @[::K8S::Properties(
    fs_type: {type: String, nilable: true, key: "fsType", getter: false, setter: false},
    lun: {type: Int32, nilable: true, key: "lun", getter: false, setter: false},
    read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    target_wwns: {type: Array(String), nilable: true, key: "targetWWNs", getter: false, setter: false},
    wwids: {type: Array(String), nilable: true, key: "wwids", getter: false, setter: false},
  )]
  class Api::Core::V1::FCVolumeSource
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    @[::JSON::Field(key: "fsType", emit_null: false)]
    @[::YAML::Field(key: "fsType", emit_null: false)]
    property fs_type : String | Nil

    # Optional: FC target lun number
    @[::JSON::Field(key: "lun", emit_null: false)]
    @[::YAML::Field(key: "lun", emit_null: false)]
    property lun : Int32 | Nil

    # Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    @[::JSON::Field(key: "readOnly", emit_null: false)]
    @[::YAML::Field(key: "readOnly", emit_null: false)]
    property read_only : Bool | Nil

    # Optional: FC target worldwide names (WWNs)
    @[::JSON::Field(key: "targetWWNs", emit_null: false)]
    @[::YAML::Field(key: "targetWWNs", emit_null: false)]
    property target_wwns : Array(String) | Nil

    # Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.
    @[::JSON::Field(key: "wwids", emit_null: false)]
    @[::YAML::Field(key: "wwids", emit_null: false)]
    property wwids : Array(String) | Nil

    def initialize(*, @fs_type : String | Nil = nil, @lun : Int32 | Nil = nil, @read_only : Bool | Nil = nil, @target_wwns : Array(String) | Nil = nil, @wwids : Array(String) | Nil = nil)
    end
  end
end
