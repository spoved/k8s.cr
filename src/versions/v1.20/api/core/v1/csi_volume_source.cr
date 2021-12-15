# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents a source location of a volume to mount, managed by an external CSI driver
  @[::K8S::Properties(
    driver: {type: String, nilable: false, key: "driver", getter: false, setter: false},
    fs_type: {type: String, nilable: true, key: "fsType", getter: false, setter: false},
    node_publish_secret_ref: {type: Api::Core::V1::LocalObjectReference, nilable: true, key: "nodePublishSecretRef", getter: false, setter: false},
    read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    volume_attributes: {type: Hash(String, String), nilable: true, key: "volumeAttributes", getter: false, setter: false},
  )]
  class Api::Core::V1::CSIVolumeSource
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
    @[::JSON::Field(key: "driver", emit_null: true)]
    @[::YAML::Field(key: "driver", emit_null: true)]
    property driver : String

    # Filesystem type to mount. Ex. "ext4", "xfs", "ntfs". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
    @[::JSON::Field(key: "fsType", emit_null: false)]
    @[::YAML::Field(key: "fsType", emit_null: false)]
    property fs_type : String | Nil

    # NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed.
    @[::JSON::Field(key: "nodePublishSecretRef", emit_null: false)]
    @[::YAML::Field(key: "nodePublishSecretRef", emit_null: false)]
    property node_publish_secret_ref : Api::Core::V1::LocalObjectReference | Nil

    # Specifies a read-only configuration for the volume. Defaults to false [(read/write).]((read/write).)
    @[::JSON::Field(key: "readOnly", emit_null: false)]
    @[::YAML::Field(key: "readOnly", emit_null: false)]
    property read_only : Bool | Nil

    # VolumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
    @[::JSON::Field(key: "volumeAttributes", emit_null: false)]
    @[::YAML::Field(key: "volumeAttributes", emit_null: false)]
    property volume_attributes : Hash(String, String) | Nil

    def initialize(*, @driver : String, @fs_type : String | Nil = nil, @node_publish_secret_ref : Api::Core::V1::LocalObjectReference | Nil = nil, @read_only : Bool | Nil = nil, @volume_attributes : Hash(String, String) | Nil = nil)
    end
  end
end
