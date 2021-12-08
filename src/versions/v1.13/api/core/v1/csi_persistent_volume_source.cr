# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents storage that is managed by an external CSI volume driver (Beta feature)
  @[::K8S::Properties(
    controller_publish_secret_ref: {type: Api::Core::V1::SecretReference, nilable: true, key: "controllerPublishSecretRef", getter: false, setter: false},
    driver: {type: String, nilable: false, key: "driver", getter: false, setter: false},
    fs_type: {type: String, nilable: true, key: "fsType", getter: false, setter: false},
    node_publish_secret_ref: {type: Api::Core::V1::SecretReference, nilable: true, key: "nodePublishSecretRef", getter: false, setter: false},
    node_stage_secret_ref: {type: Api::Core::V1::SecretReference, nilable: true, key: "nodeStageSecretRef", getter: false, setter: false},
    read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    volume_attributes: {type: Hash(String, String), nilable: true, key: "volumeAttributes", getter: false, setter: false},
    volume_handle: {type: String, nilable: false, key: "volumeHandle", getter: false, setter: false},
  )]
  class Api::Core::V1::CSIPersistentVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # ControllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    @[::JSON::Field(key: "controllerPublishSecretRef", emit_null: false)]
    @[::YAML::Field(key: "controllerPublishSecretRef", emit_null: false)]
    property controller_publish_secret_ref : Api::Core::V1::SecretReference | Nil

    # Driver is the name of the driver to use for this volume. Required.
    @[::JSON::Field(key: "driver", emit_null: true)]
    @[::YAML::Field(key: "driver", emit_null: true)]
    property driver : String

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".
    @[::JSON::Field(key: "fsType", emit_null: false)]
    @[::YAML::Field(key: "fsType", emit_null: false)]
    property fs_type : String | Nil

    # NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    @[::JSON::Field(key: "nodePublishSecretRef", emit_null: false)]
    @[::YAML::Field(key: "nodePublishSecretRef", emit_null: false)]
    property node_publish_secret_ref : Api::Core::V1::SecretReference | Nil

    # NodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    @[::JSON::Field(key: "nodeStageSecretRef", emit_null: false)]
    @[::YAML::Field(key: "nodeStageSecretRef", emit_null: false)]
    property node_stage_secret_ref : Api::Core::V1::SecretReference | Nil

    # Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false [(read/write).]((read/write).)
    @[::JSON::Field(key: "readOnly", emit_null: false)]
    @[::YAML::Field(key: "readOnly", emit_null: false)]
    property read_only : Bool | Nil

    # Attributes of the volume to publish.
    @[::JSON::Field(key: "volumeAttributes", emit_null: false)]
    @[::YAML::Field(key: "volumeAttributes", emit_null: false)]
    property volume_attributes : Hash(String, String) | Nil

    # VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
    @[::JSON::Field(key: "volumeHandle", emit_null: true)]
    @[::YAML::Field(key: "volumeHandle", emit_null: true)]
    property volume_handle : String

    def initialize(*, @driver : String, @volume_handle : String, @controller_publish_secret_ref : Api::Core::V1::SecretReference | Nil = nil, @fs_type : String | Nil = nil, @node_publish_secret_ref : Api::Core::V1::SecretReference | Nil = nil, @node_stage_secret_ref : Api::Core::V1::SecretReference | Nil = nil, @read_only : Bool | Nil = nil, @volume_attributes : Hash(String, String) | Nil = nil)
    end
  end
end
