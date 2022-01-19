# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ScaleIOPersistentVolumeSource; end

require "./secret_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::ScaleIOPersistentVolumeSource`.
  module Types::Api::Core::V1::ScaleIOPersistentVolumeSource
    alias ValueType = String | ::Bool | ::K8S::Api::Core::V1::SecretReference | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs"
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String?)
    # The host address of the ScaleIO API Gateway.
    abstract def gateway : String
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
    abstract def protection_domain=(value : String?)
    # Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
    # SecretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.
    abstract def secret_ref : ::K8S::Api::Core::V1::SecretReference
    # :ditto:
    abstract def secret_ref! : ::K8S::Api::Core::V1::SecretReference
    # :ditto:
    abstract def secret_ref? : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def secret_ref=(value : ::K8S::Api::Core::V1::SecretReference)
    # Flag to [[enable/disable SSL communication with Gateway, default false](enable/disable SSL communication with Gateway, default false)]([enable/disable SSL communication with Gateway, default false](enable/disable SSL communication with Gateway, default false))
    abstract def ssl_enabled : ::Bool?
    # :ditto:
    abstract def ssl_enabled! : ::Bool
    # :ditto:
    abstract def ssl_enabled? : ::Bool?
    # :ditto:
    abstract def ssl_enabled=(value : ::Bool?)
    # Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.
    abstract def storage_mode : String?
    # :ditto:
    abstract def storage_mode! : String
    # :ditto:
    abstract def storage_mode? : String?
    # :ditto:
    abstract def storage_mode=(value : String?)
    # The ScaleIO Storage Pool associated with the protection domain.
    abstract def storage_pool : String?
    # :ditto:
    abstract def storage_pool! : String
    # :ditto:
    abstract def storage_pool? : String?
    # :ditto:
    abstract def storage_pool=(value : String?)
    # The name of the storage system as configured in ScaleIO.
    abstract def system : String
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
    abstract def volume_name=(value : String?)
  end

  # ScaleIOPersistentVolumeSource represents a persistent ScaleIO volume
  @[::K8S::Properties(
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Default is \"xfs\""},
    gateway: {key: "gateway", accessor: "gateway", kind: "String", nilable: false, default: nil, read_only: false, description: "The host address of the ScaleIO API Gateway."},
    protection_domain: {key: "protectionDomain", accessor: "protection_domain", kind: "String", nilable: true, default: nil, read_only: false, description: "The name of the ScaleIO Protection Domain for the configured storage."},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)"},
    secret_ref: {key: "secretRef", accessor: "secret_ref", kind: "::K8S::Api::Core::V1::SecretReference", nilable: false, default: nil, read_only: false, description: "SecretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail."},
    ssl_enabled: {key: "sslEnabled", accessor: "ssl_enabled", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Flag to [enable/disable SSL communication with Gateway, default false](enable/disable SSL communication with Gateway, default false)"},
    storage_mode: {key: "storageMode", accessor: "storage_mode", kind: "String", nilable: true, default: nil, read_only: false, description: "Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned."},
    storage_pool: {key: "storagePool", accessor: "storage_pool", kind: "String", nilable: true, default: nil, read_only: false, description: "The ScaleIO Storage Pool associated with the protection domain."},
    system: {key: "system", accessor: "system", kind: "String", nilable: false, default: nil, read_only: false, description: "The name of the storage system as configured in ScaleIO."},
    volume_name: {key: "volumeName", accessor: "volume_name", kind: "String", nilable: true, default: nil, read_only: false, description: "The name of a volume already created in the ScaleIO system that is associated with this volume source."},
  )]
  class Api::Core::V1::ScaleIOPersistentVolumeSource < ::K8S::Types::Api::Core::V1::ScaleIOPersistentVolumeSource::Instance
    include ::K8S::Types::Api::Core::V1::ScaleIOPersistentVolumeSource
    include ::K8S::Kubernetes::Object

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs"
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

    # The host address of the ScaleIO API Gateway.
    def gateway : String
      self.["gateway"].as(String)
    end

    # :ditto:
    def gateway! : String
      self.["gateway"].as(String).not_nil!
    end

    # :ditto:
    def gateway? : String?
      self.["gateway"]?.as(String?)
    end

    # :ditto:
    def gateway=(value : String)
      self.["gateway"] = value
    end

    # The name of the ScaleIO Protection Domain for the configured storage.
    def protection_domain : String?
      self.["protectionDomain"].as(String?)
    end

    # :ditto:
    def protection_domain! : String
      self.["protectionDomain"].as(String?).not_nil!
    end

    # :ditto:
    def protection_domain? : String?
      self.["protectionDomain"]?.as(String?)
    end

    # :ditto:
    def protection_domain=(value : String?)
      self.["protectionDomain"] = value
    end

    # Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.))
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

    # SecretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.
    def secret_ref : ::K8S::Api::Core::V1::SecretReference
      self.["secretRef"].as(::K8S::Api::Core::V1::SecretReference)
    end

    # :ditto:
    def secret_ref! : ::K8S::Api::Core::V1::SecretReference
      self.["secretRef"].as(::K8S::Api::Core::V1::SecretReference).not_nil!
    end

    # :ditto:
    def secret_ref? : ::K8S::Api::Core::V1::SecretReference?
      self.["secretRef"]?.as(::K8S::Api::Core::V1::SecretReference?)
    end

    # :ditto:
    def secret_ref=(value : ::K8S::Api::Core::V1::SecretReference)
      self.["secretRef"] = value
    end

    # Flag to [[enable/disable SSL communication with Gateway, default false](enable/disable SSL communication with Gateway, default false)]([enable/disable SSL communication with Gateway, default false](enable/disable SSL communication with Gateway, default false))
    def ssl_enabled : ::Bool?
      self.["sslEnabled"].as(::Bool?)
    end

    # :ditto:
    def ssl_enabled! : ::Bool
      self.["sslEnabled"].as(::Bool?).not_nil!
    end

    # :ditto:
    def ssl_enabled? : ::Bool?
      self.["sslEnabled"]?.as(::Bool?)
    end

    # :ditto:
    def ssl_enabled=(value : ::Bool?)
      self.["sslEnabled"] = value
    end

    # Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.
    def storage_mode : String?
      self.["storageMode"].as(String?)
    end

    # :ditto:
    def storage_mode! : String
      self.["storageMode"].as(String?).not_nil!
    end

    # :ditto:
    def storage_mode? : String?
      self.["storageMode"]?.as(String?)
    end

    # :ditto:
    def storage_mode=(value : String?)
      self.["storageMode"] = value
    end

    # The ScaleIO Storage Pool associated with the protection domain.
    def storage_pool : String?
      self.["storagePool"].as(String?)
    end

    # :ditto:
    def storage_pool! : String
      self.["storagePool"].as(String?).not_nil!
    end

    # :ditto:
    def storage_pool? : String?
      self.["storagePool"]?.as(String?)
    end

    # :ditto:
    def storage_pool=(value : String?)
      self.["storagePool"] = value
    end

    # The name of the storage system as configured in ScaleIO.
    def system : String
      self.["system"].as(String)
    end

    # :ditto:
    def system! : String
      self.["system"].as(String).not_nil!
    end

    # :ditto:
    def system? : String?
      self.["system"]?.as(String?)
    end

    # :ditto:
    def system=(value : String)
      self.["system"] = value
    end

    # The name of a volume already created in the ScaleIO system that is associated with this volume source.
    def volume_name : String?
      self.["volumeName"].as(String?)
    end

    # :ditto:
    def volume_name! : String
      self.["volumeName"].as(String?).not_nil!
    end

    # :ditto:
    def volume_name? : String?
      self.["volumeName"]?.as(String?)
    end

    # :ditto:
    def volume_name=(value : String?)
      self.["volumeName"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String },
        { key: "gateway", accessor: "gateway", nilable: false, read_only: false, default: nil, kind: String },
        { key: "protectionDomain", accessor: "protection_domain", nilable: true, read_only: false, default: nil, kind: String },
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "secretRef", accessor: "secret_ref", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecretReference },
        { key: "sslEnabled", accessor: "ssl_enabled", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "storageMode", accessor: "storage_mode", nilable: true, read_only: false, default: nil, kind: String },
        { key: "storagePool", accessor: "storage_pool", nilable: true, read_only: false, default: nil, kind: String },
        { key: "system", accessor: "system", nilable: false, read_only: false, default: nil, kind: String },
        { key: "volumeName", accessor: "volume_name", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
