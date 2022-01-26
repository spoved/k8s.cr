# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::CSIVolumeSource; end

require "./local_object_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::CSIVolumeSource`.
  module Types::Api::Core::V1::CSIVolumeSource
    # Driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
    abstract def driver : String
    # :ditto:
    abstract def driver! : String
    # :ditto:
    abstract def driver? : String?
    # :ditto:
    abstract def driver=(value : String)
    # Filesystem type to mount. Ex. "ext4", "xfs", "ntfs". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String?)
    # NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed.
    abstract def node_publish_secret_ref : ::K8S::Api::Core::V1::LocalObjectReference?
    # :ditto:
    abstract def node_publish_secret_ref! : ::K8S::Api::Core::V1::LocalObjectReference
    # :ditto:
    abstract def node_publish_secret_ref? : ::K8S::Api::Core::V1::LocalObjectReference?
    # :ditto:
    abstract def node_publish_secret_ref=(value : ::K8S::Api::Core::V1::LocalObjectReference?)
    # Specifies a read-only configuration for the volume. Defaults to false [[(read/write).]((read/write).)]([(read/write).]((read/write).))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
    # VolumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
    abstract def volume_attributes : ::Hash(String, String)?
    # :ditto:
    abstract def volume_attributes! : ::Hash(String, String)
    # :ditto:
    abstract def volume_attributes? : ::Hash(String, String)?
    # :ditto:
    abstract def volume_attributes=(value : ::Hash(String, String)?)
  end

  # Represents a source location of a volume to mount, managed by an external CSI driver
  @[::K8S::Properties(
    driver: {key: "driver", accessor: "driver", kind: "String", nilable: false, default: nil, read_only: false, description: "Driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type to mount. Ex. \"ext4\", \"xfs\", \"ntfs\". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    node_publish_secret_ref: {key: "nodePublishSecretRef", accessor: "node_publish_secret_ref", kind: "::K8S::Api::Core::V1::LocalObjectReference", nilable: true, default: nil, read_only: false, description: "NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Specifies a read-only configuration for the volume. Defaults to false [(read/write).]((read/write).)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_attributes: {key: "volumeAttributes", accessor: "volume_attributes", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "VolumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::CSIVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::CSIVolumeSource

    # Driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
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

    # Filesystem type to mount. Ex. "ext4", "xfs", "ntfs". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
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

    # NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed.
    def node_publish_secret_ref : ::K8S::Api::Core::V1::LocalObjectReference?
      self.["nodePublishSecretRef"].as(::K8S::Api::Core::V1::LocalObjectReference?)
    end

    # :ditto:
    def node_publish_secret_ref! : ::K8S::Api::Core::V1::LocalObjectReference
      self.["nodePublishSecretRef"].as(::K8S::Api::Core::V1::LocalObjectReference?).not_nil!
    end

    # :ditto:
    def node_publish_secret_ref? : ::K8S::Api::Core::V1::LocalObjectReference?
      self.["nodePublishSecretRef"]?.as(::K8S::Api::Core::V1::LocalObjectReference?)
    end

    # :ditto:
    def node_publish_secret_ref=(value : ::K8S::Api::Core::V1::LocalObjectReference?)
      self.["nodePublishSecretRef"] = value
    end

    # Specifies a read-only configuration for the volume. Defaults to false [[(read/write).]((read/write).)]([(read/write).]((read/write).))
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

    # VolumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "driver", accessor: "driver", nilable: false, read_only: false, default: nil, kind: String },
        { key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String },
        { key: "nodePublishSecretRef", accessor: "node_publish_secret_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::LocalObjectReference },
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "volumeAttributes", accessor: "volume_attributes", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String) },
      ])
end
  end
end
