# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ScaleIOVolumeSource; end

require "./local_object_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::ScaleIOVolumeSource`.
  module Types::Api::Core::V1::ScaleIOVolumeSource
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String)
    # The host address of the ScaleIO API Gateway.
    abstract def gateway : String?
    # :ditto:
    abstract def gateway! : String
    # :ditto:
    abstract def gateway? : String?
    # :ditto:
    abstract def gateway=(value : String)
    # The name of the ScaleIO Protection Domain for the configured storage.
    abstract def protection_domain : String?
    # :ditto:
    abstract def protection_domain! : String
    # :ditto:
    abstract def protection_domain? : String?
    # :ditto:
    abstract def protection_domain=(value : String)
    # Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool)
    # SecretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.
    abstract def secret_ref : ::K8S::Api::Core::V1::LocalObjectReference?
    # :ditto:
    abstract def secret_ref! : ::K8S::Api::Core::V1::LocalObjectReference
    # :ditto:
    abstract def secret_ref? : ::K8S::Api::Core::V1::LocalObjectReference?
    # :ditto:
    abstract def secret_ref=(value : ::K8S::Api::Core::V1::LocalObjectReference)
    # Flag to [[enable/disable SSL communication with Gateway, default false](enable/disable SSL communication with Gateway, default false)]([enable/disable SSL communication with Gateway, default false](enable/disable SSL communication with Gateway, default false))
    abstract def ssl_enabled : ::Bool?
    # :ditto:
    abstract def ssl_enabled! : ::Bool
    # :ditto:
    abstract def ssl_enabled? : ::Bool?
    # :ditto:
    abstract def ssl_enabled=(value : ::Bool)
    # Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned.
    abstract def storage_mode : String?
    # :ditto:
    abstract def storage_mode! : String
    # :ditto:
    abstract def storage_mode? : String?
    # :ditto:
    abstract def storage_mode=(value : String)
    # The ScaleIO Storage Pool associated with the protection domain.
    abstract def storage_pool : String?
    # :ditto:
    abstract def storage_pool! : String
    # :ditto:
    abstract def storage_pool? : String?
    # :ditto:
    abstract def storage_pool=(value : String)
    # The name of the storage system as configured in ScaleIO.
    abstract def system : String?
    # :ditto:
    abstract def system! : String
    # :ditto:
    abstract def system? : String?
    # :ditto:
    abstract def system=(value : String)
    # The name of a volume already created in the ScaleIO system that is associated with this volume source.
    abstract def volume_name : String?
    # :ditto:
    abstract def volume_name! : String
    # :ditto:
    abstract def volume_name? : String?
    # :ditto:
    abstract def volume_name=(value : String)
  end

  # ScaleIOVolumeSource represents a persistent ScaleIO volume
  @[::K8S::Properties(
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    gateway: {key: "gateway", accessor: "gateway", kind: "String", nilable: false, default: nil, read_only: false, description: "The host address of the ScaleIO API Gateway.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    protection_domain: {key: "protectionDomain", accessor: "protection_domain", kind: "String", nilable: true, default: nil, read_only: false, description: "The name of the ScaleIO Protection Domain for the configured storage.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    secret_ref: {key: "secretRef", accessor: "secret_ref", kind: "::K8S::Api::Core::V1::LocalObjectReference", nilable: false, default: nil, read_only: false, description: "SecretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ssl_enabled: {key: "sslEnabled", accessor: "ssl_enabled", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Flag to [enable/disable SSL communication with Gateway, default false](enable/disable SSL communication with Gateway, default false)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    storage_mode: {key: "storageMode", accessor: "storage_mode", kind: "String", nilable: true, default: nil, read_only: false, description: "Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    storage_pool: {key: "storagePool", accessor: "storage_pool", kind: "String", nilable: true, default: nil, read_only: false, description: "The ScaleIO Storage Pool associated with the protection domain.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    system: {key: "system", accessor: "system", kind: "String", nilable: false, default: nil, read_only: false, description: "The name of the storage system as configured in ScaleIO.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_name: {key: "volumeName", accessor: "volume_name", kind: "String", nilable: true, default: nil, read_only: false, description: "The name of a volume already created in the ScaleIO system that is associated with this volume source.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ScaleIOVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ScaleIOVolumeSource
    k8s_object_accessor("fsType", fs_type : String, true, false, "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.")
    k8s_object_accessor("gateway", gateway : String, false, false, "The host address of the ScaleIO API Gateway.")
    k8s_object_accessor("protectionDomain", protection_domain : String, true, false, "The name of the ScaleIO Protection Domain for the configured storage.")
    k8s_object_accessor("readOnly", read_only : ::Bool, true, false, "Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)")
    k8s_object_accessor("secretRef", secret_ref : ::K8S::Api::Core::V1::LocalObjectReference, false, false, "SecretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.")
    k8s_object_accessor("sslEnabled", ssl_enabled : ::Bool, true, false, "Flag to [enable/disable SSL communication with Gateway, default false](enable/disable SSL communication with Gateway, default false)")
    k8s_object_accessor("storageMode", storage_mode : String, true, false, "Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned.")
    k8s_object_accessor("storagePool", storage_pool : String, true, false, "The ScaleIO Storage Pool associated with the protection domain.")
    k8s_object_accessor("system", system : String, false, false, "The name of the storage system as configured in ScaleIO.")
    k8s_object_accessor("volumeName", volume_name : String, true, false, "The name of a volume already created in the ScaleIO system that is associated with this volume source.")

    def initialize(*, fs_type : String? = nil, gateway : String? = nil, protection_domain : String? = nil, read_only : ::Bool? = nil, secret_ref : ::K8S::Api::Core::V1::LocalObjectReference? = nil, ssl_enabled : ::Bool? = nil, storage_mode : String? = nil, storage_pool : String? = nil, system : String? = nil, volume_name : String? = nil)
      super()
      self.["fsType"] = fs_type
      self.["gateway"] = gateway
      self.["protectionDomain"] = protection_domain
      self.["readOnly"] = read_only
      self.["secretRef"] = secret_ref
      self.["sslEnabled"] = ssl_enabled
      self.["storageMode"] = storage_mode
      self.["storagePool"] = storage_pool
      self.["system"] = system
      self.["volumeName"] = volume_name
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String},
      {key: "gateway", accessor: "gateway", nilable: false, read_only: false, default: nil, kind: String},
      {key: "protectionDomain", accessor: "protection_domain", nilable: true, read_only: false, default: nil, kind: String},
      {key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "secretRef", accessor: "secret_ref", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::LocalObjectReference},
      {key: "sslEnabled", accessor: "ssl_enabled", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "storageMode", accessor: "storage_mode", nilable: true, read_only: false, default: nil, kind: String},
      {key: "storagePool", accessor: "storage_pool", nilable: true, read_only: false, default: nil, kind: String},
      {key: "system", accessor: "system", nilable: false, read_only: false, default: nil, kind: String},
      {key: "volumeName", accessor: "volume_name", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
