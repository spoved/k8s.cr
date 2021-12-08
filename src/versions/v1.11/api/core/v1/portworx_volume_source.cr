# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PortworxVolumeSource represents a Portworx volume resource.
  @[::K8S::Properties(
    fs_type: {type: String, nilable: true, key: "fsType", getter: false, setter: false},
    read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    volume_id: {type: String, nilable: false, key: "volumeID", getter: false, setter: false},
  )]
  class Api::Core::V1::PortworxVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
    @[::JSON::Field(key: "fsType", emit_null: false)]
    @[::YAML::Field(key: "fsType", emit_null: false)]
    property fs_type : String | Nil

    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    @[::JSON::Field(key: "readOnly", emit_null: false)]
    @[::YAML::Field(key: "readOnly", emit_null: false)]
    property read_only : Bool | Nil

    # VolumeID uniquely identifies a Portworx volume
    @[::JSON::Field(key: "volumeID", emit_null: true)]
    @[::YAML::Field(key: "volumeID", emit_null: true)]
    property volume_id : String

    def initialize(*, @volume_id : String, @fs_type : String | Nil = nil, @read_only : Bool | Nil = nil)
    end
  end
end
