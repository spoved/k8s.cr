# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
  @[::K8S::Properties(
    caching_mode: {type: String, nilable: true, key: "cachingMode", getter: false, setter: false},
    disk_name: {type: String, nilable: false, key: "diskName", getter: false, setter: false},
    disk_uri: {type: String, nilable: false, key: "diskURI", getter: false, setter: false},
    fs_type: {type: String, nilable: true, key: "fsType", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
  )]
  class Api::Core::V1::AzureDiskVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Host Caching mode: None, Read Only, Read Write.
    @[::JSON::Field(key: "cachingMode", emit_null: false)]
    @[::YAML::Field(key: "cachingMode", emit_null: false)]
    property caching_mode : String | Nil

    # The Name of the data disk in the blob storage
    @[::JSON::Field(key: "diskName", emit_null: true)]
    @[::YAML::Field(key: "diskName", emit_null: true)]
    property disk_name : String

    # The URI the data disk in the blob storage
    @[::JSON::Field(key: "diskURI", emit_null: true)]
    @[::YAML::Field(key: "diskURI", emit_null: true)]
    property disk_uri : String

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    @[::JSON::Field(key: "fsType", emit_null: false)]
    @[::YAML::Field(key: "fsType", emit_null: false)]
    property fs_type : String | Nil

    # Expected values Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared
    @[::JSON::Field(key: "kind", emit_null: false)]
    @[::YAML::Field(key: "kind", emit_null: false)]
    property kind : String | Nil

    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    @[::JSON::Field(key: "readOnly", emit_null: false)]
    @[::YAML::Field(key: "readOnly", emit_null: false)]
    property read_only : Bool | Nil

    def initialize(*, @disk_name : String, @disk_uri : String, @caching_mode : String | Nil = nil, @fs_type : String | Nil = nil, @kind : String | Nil = nil, @read_only : Bool | Nil = nil)
    end
  end
end
