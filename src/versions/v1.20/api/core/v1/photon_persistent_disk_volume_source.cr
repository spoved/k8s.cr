# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents a Photon Controller persistent disk resource.
  @[::K8S::Properties(
    fs_type: {type: String, nilable: true, key: "fsType", getter: false, setter: false},
    pd_id: {type: String, nilable: false, key: "pdID", getter: false, setter: false},
  )]
  class Api::Core::V1::PhotonPersistentDiskVolumeSource
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    @[::JSON::Field(key: "fsType", emit_null: false)]
    @[::YAML::Field(key: "fsType", emit_null: false)]
    property fs_type : String | Nil

    # ID that identifies Photon Controller persistent disk
    @[::JSON::Field(key: "pdID", emit_null: true)]
    @[::YAML::Field(key: "pdID", emit_null: true)]
    property pd_id : String

    def initialize(*, @pd_id : String, @fs_type : String | Nil = nil)
    end
  end
end
