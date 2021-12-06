# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents a vSphere volume resource.
  @[::K8S::Properties(
    fs_type: {type: String, nilable: true, key: "fsType", getter: false, setter: false},
    storage_policy_id: {type: String, nilable: true, key: "storagePolicyID", getter: false, setter: false},
    storage_policy_name: {type: String, nilable: true, key: "storagePolicyName", getter: false, setter: false},
    volume_path: {type: String, nilable: false, key: "volumePath", getter: false, setter: false},
  )]
  class Api::Core::V1::VsphereVirtualDiskVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    @[::JSON::Field(key: "fsType", emit_null: false)]
    @[::YAML::Field(key: "fsType", emit_null: false)]
    property fs_type : String | Nil

    # Storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
    @[::JSON::Field(key: "storagePolicyID", emit_null: false)]
    @[::YAML::Field(key: "storagePolicyID", emit_null: false)]
    property storage_policy_id : String | Nil

    # Storage Policy Based Management (SPBM) profile name.
    @[::JSON::Field(key: "storagePolicyName", emit_null: false)]
    @[::YAML::Field(key: "storagePolicyName", emit_null: false)]
    property storage_policy_name : String | Nil

    # Path that identifies vSphere volume vmdk
    @[::JSON::Field(key: "volumePath", emit_null: true)]
    @[::YAML::Field(key: "volumePath", emit_null: true)]
    property volume_path : String

    def initialize(*, @volume_path : String, @fs_type : String | Nil = nil, @storage_policy_id : String | Nil = nil, @storage_policy_name : String | Nil = nil)
    end
  end
end
