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
    include ::YAML::Serializable

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    @[::JSON::Field(key: "fsType")]
    @[::YAML::Field(key: "fsType")]
    property fs_type : String | Nil

    # ID that identifies Photon Controller persistent disk
    @[::JSON::Field(key: "pdID")]
    @[::YAML::Field(key: "pdID")]
    property pd_id : String

    def initialize(*, @pd_id : String, @fs_type : String | Nil = nil)
    end
  end
end
