# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::CSIPersistentVolumeSource; end

require "./secret_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::CSIPersistentVolumeSource`.
  module Types::Api::Core::V1::CSIPersistentVolumeSource
    alias ValueType = ::K8S::Api::Core::V1::SecretReference | String | ::Bool | ::Hash(String, String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # ControllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    abstract def controller_publish_secret_ref : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def controller_publish_secret_ref! : ::K8S::Api::Core::V1::SecretReference
    # :ditto:
    abstract def controller_publish_secret_ref? : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def controller_publish_secret_ref=(value : ::K8S::Api::Core::V1::SecretReference?)
    # Driver is the name of the driver to use for this volume. Required.
    abstract def driver : String
    # :ditto:
    abstract def driver! : String
    # :ditto:
    abstract def driver? : String?
    # :ditto:
    abstract def driver=(value : String)
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String?)
    # NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    abstract def node_publish_secret_ref : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def node_publish_secret_ref! : ::K8S::Api::Core::V1::SecretReference
    # :ditto:
    abstract def node_publish_secret_ref? : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def node_publish_secret_ref=(value : ::K8S::Api::Core::V1::SecretReference?)
    # NodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    abstract def node_stage_secret_ref : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def node_stage_secret_ref! : ::K8S::Api::Core::V1::SecretReference
    # :ditto:
    abstract def node_stage_secret_ref? : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def node_stage_secret_ref=(value : ::K8S::Api::Core::V1::SecretReference?)
    # Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false [[(read/write).]((read/write).)]([(read/write).]((read/write).))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
    # Attributes of the volume to publish.
    abstract def volume_attributes : ::Hash(String, String)?
    # :ditto:
    abstract def volume_attributes! : ::Hash(String, String)
    # :ditto:
    abstract def volume_attributes? : ::Hash(String, String)?
    # :ditto:
    abstract def volume_attributes=(value : ::Hash(String, String)?)
    # VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
    abstract def volume_handle : String
    # :ditto:
    abstract def volume_handle! : String
    # :ditto:
    abstract def volume_handle? : String?
    # :ditto:
    abstract def volume_handle=(value : String)
  end

  # Represents storage that is managed by an external CSI volume driver (Beta feature)
  @[::K8S::Properties(
    controller_publish_secret_ref: {key: "controllerPublishSecretRef", accessor: "controller_publish_secret_ref", kind: "::K8S::Api::Core::V1::SecretReference", nilable: true, default: nil, read_only: false, description: "ControllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    driver: {key: "driver", accessor: "driver", kind: "String", nilable: false, default: nil, read_only: false, description: "Driver is the name of the driver to use for this volume. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    node_publish_secret_ref: {key: "nodePublishSecretRef", accessor: "node_publish_secret_ref", kind: "::K8S::Api::Core::V1::SecretReference", nilable: true, default: nil, read_only: false, description: "NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    node_stage_secret_ref: {key: "nodeStageSecretRef", accessor: "node_stage_secret_ref", kind: "::K8S::Api::Core::V1::SecretReference", nilable: true, default: nil, read_only: false, description: "NodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false [(read/write).]((read/write).)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_attributes: {key: "volumeAttributes", accessor: "volume_attributes", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "Attributes of the volume to publish.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_handle: {key: "volumeHandle", accessor: "volume_handle", kind: "String", nilable: false, default: nil, read_only: false, description: "VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::CSIPersistentVolumeSource < ::K8S::Types::Api::Core::V1::CSIPersistentVolumeSource::Instance
    include ::K8S::Types::Api::Core::V1::CSIPersistentVolumeSource
    include ::K8S::Kubernetes::Object

    # ControllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    def controller_publish_secret_ref : ::K8S::Api::Core::V1::SecretReference?
      self.["controllerPublishSecretRef"].as(::K8S::Api::Core::V1::SecretReference?)
    end

    # :ditto:
    def controller_publish_secret_ref! : ::K8S::Api::Core::V1::SecretReference
      self.["controllerPublishSecretRef"].as(::K8S::Api::Core::V1::SecretReference?).not_nil!
    end

    # :ditto:
    def controller_publish_secret_ref? : ::K8S::Api::Core::V1::SecretReference?
      self.["controllerPublishSecretRef"]?.as(::K8S::Api::Core::V1::SecretReference?)
    end

    # :ditto:
    def controller_publish_secret_ref=(value : ::K8S::Api::Core::V1::SecretReference?)
      self.["controllerPublishSecretRef"] = value
    end

    # Driver is the name of the driver to use for this volume. Required.
    def driver : String
      self.["driver"].as(String)
    end

    # :ditto:
    def driver! : String
      self.["driver"].as(String).not_nil!
    end

    # :ditto:
    def driver? : String?
      self.["driver"]?.as(String?)
    end

    # :ditto:
    def driver=(value : String)
      self.["driver"] = value
    end

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".
    def fs_type : String?
      self.["fsType"].as(String?)
    end

    # :ditto:
    def fs_type! : String
      self.["fsType"].as(String?).not_nil!
    end

    # :ditto:
    def fs_type? : String?
      self.["fsType"]?.as(String?)
    end

    # :ditto:
    def fs_type=(value : String?)
      self.["fsType"] = value
    end

    # NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    def node_publish_secret_ref : ::K8S::Api::Core::V1::SecretReference?
      self.["nodePublishSecretRef"].as(::K8S::Api::Core::V1::SecretReference?)
    end

    # :ditto:
    def node_publish_secret_ref! : ::K8S::Api::Core::V1::SecretReference
      self.["nodePublishSecretRef"].as(::K8S::Api::Core::V1::SecretReference?).not_nil!
    end

    # :ditto:
    def node_publish_secret_ref? : ::K8S::Api::Core::V1::SecretReference?
      self.["nodePublishSecretRef"]?.as(::K8S::Api::Core::V1::SecretReference?)
    end

    # :ditto:
    def node_publish_secret_ref=(value : ::K8S::Api::Core::V1::SecretReference?)
      self.["nodePublishSecretRef"] = value
    end

    # NodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
    def node_stage_secret_ref : ::K8S::Api::Core::V1::SecretReference?
      self.["nodeStageSecretRef"].as(::K8S::Api::Core::V1::SecretReference?)
    end

    # :ditto:
    def node_stage_secret_ref! : ::K8S::Api::Core::V1::SecretReference
      self.["nodeStageSecretRef"].as(::K8S::Api::Core::V1::SecretReference?).not_nil!
    end

    # :ditto:
    def node_stage_secret_ref? : ::K8S::Api::Core::V1::SecretReference?
      self.["nodeStageSecretRef"]?.as(::K8S::Api::Core::V1::SecretReference?)
    end

    # :ditto:
    def node_stage_secret_ref=(value : ::K8S::Api::Core::V1::SecretReference?)
      self.["nodeStageSecretRef"] = value
    end

    # Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false [[(read/write).]((read/write).)]([(read/write).]((read/write).))
    def read_only : ::Bool?
      self.["readOnly"].as(::Bool?)
    end

    # :ditto:
    def read_only! : ::Bool
      self.["readOnly"].as(::Bool?).not_nil!
    end

    # :ditto:
    def read_only? : ::Bool?
      self.["readOnly"]?.as(::Bool?)
    end

    # :ditto:
    def read_only=(value : ::Bool?)
      self.["readOnly"] = value
    end

    # Attributes of the volume to publish.
    def volume_attributes : ::Hash(String, String)?
      self.["volumeAttributes"].as(::Hash(String, String)?)
    end

    # :ditto:
    def volume_attributes! : ::Hash(String, String)
      self.["volumeAttributes"].as(::Hash(String, String)?).not_nil!
    end

    # :ditto:
    def volume_attributes? : ::Hash(String, String)?
      self.["volumeAttributes"]?.as(::Hash(String, String)?)
    end

    # :ditto:
    def volume_attributes=(value : ::Hash(String, String)?)
      self.["volumeAttributes"] = value
    end

    # VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
    def volume_handle : String
      self.["volumeHandle"].as(String)
    end

    # :ditto:
    def volume_handle! : String
      self.["volumeHandle"].as(String).not_nil!
    end

    # :ditto:
    def volume_handle? : String?
      self.["volumeHandle"]?.as(String?)
    end

    # :ditto:
    def volume_handle=(value : String)
      self.["volumeHandle"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "controllerPublishSecretRef", accessor: "controller_publish_secret_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecretReference },
        { key: "driver", accessor: "driver", nilable: false, read_only: false, default: nil, kind: String },
        { key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String },
        { key: "nodePublishSecretRef", accessor: "node_publish_secret_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecretReference },
        { key: "nodeStageSecretRef", accessor: "node_stage_secret_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecretReference },
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "volumeAttributes", accessor: "volume_attributes", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String) },
        { key: "volumeHandle", accessor: "volume_handle", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
