# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ScaleIOPersistentVolumeSource represents a persistent ScaleIO volume
  @[::K8S::Properties(
    fs_type: {type: String, nilable: true, key: "fsType", getter: false, setter: false},
    gateway: {type: String, nilable: false, key: "gateway", getter: false, setter: false},
    protection_domain: {type: String, nilable: true, key: "protectionDomain", getter: false, setter: false},
    read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    secret_ref: {type: Api::Core::V1::SecretReference, nilable: false, key: "secretRef", getter: false, setter: false},
    ssl_enabled: {type: Bool, nilable: true, key: "sslEnabled", getter: false, setter: false},
    storage_mode: {type: String, nilable: true, key: "storageMode", getter: false, setter: false},
    storage_pool: {type: String, nilable: true, key: "storagePool", getter: false, setter: false},
    system: {type: String, nilable: false, key: "system", getter: false, setter: false},
    volume_name: {type: String, nilable: true, key: "volumeName", getter: false, setter: false},
  )]
  class Api::Core::V1::ScaleIOPersistentVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs"
    @[::JSON::Field(key: "fsType", emit_null: false)]
    @[::YAML::Field(key: "fsType", emit_null: false)]
    property fs_type : String | Nil

    # The host address of the ScaleIO API Gateway.
    @[::JSON::Field(key: "gateway", emit_null: true)]
    @[::YAML::Field(key: "gateway", emit_null: true)]
    property gateway : String

    # The name of the ScaleIO Protection Domain for the configured storage.
    @[::JSON::Field(key: "protectionDomain", emit_null: false)]
    @[::YAML::Field(key: "protectionDomain", emit_null: false)]
    property protection_domain : String | Nil

    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    @[::JSON::Field(key: "readOnly", emit_null: false)]
    @[::YAML::Field(key: "readOnly", emit_null: false)]
    property read_only : Bool | Nil

    # SecretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.
    @[::JSON::Field(key: "secretRef", emit_null: true)]
    @[::YAML::Field(key: "secretRef", emit_null: true)]
    property secret_ref : Api::Core::V1::SecretReference

    # Flag to [enable/disable SSL communication with Gateway, default false](enable/disable SSL communication with Gateway, default false)
    @[::JSON::Field(key: "sslEnabled", emit_null: false)]
    @[::YAML::Field(key: "sslEnabled", emit_null: false)]
    property ssl_enabled : Bool | Nil

    # Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.
    @[::JSON::Field(key: "storageMode", emit_null: false)]
    @[::YAML::Field(key: "storageMode", emit_null: false)]
    property storage_mode : String | Nil

    # The ScaleIO Storage Pool associated with the protection domain.
    @[::JSON::Field(key: "storagePool", emit_null: false)]
    @[::YAML::Field(key: "storagePool", emit_null: false)]
    property storage_pool : String | Nil

    # The name of the storage system as configured in ScaleIO.
    @[::JSON::Field(key: "system", emit_null: true)]
    @[::YAML::Field(key: "system", emit_null: true)]
    property system : String

    # The name of a volume already created in the ScaleIO system that is associated with this volume source.
    @[::JSON::Field(key: "volumeName", emit_null: false)]
    @[::YAML::Field(key: "volumeName", emit_null: false)]
    property volume_name : String | Nil

    def initialize(*, @gateway : String, @secret_ref : Api::Core::V1::SecretReference, @system : String, @fs_type : String | Nil = nil, @protection_domain : String | Nil = nil, @read_only : Bool | Nil = nil, @ssl_enabled : Bool | Nil = nil, @storage_mode : String | Nil = nil, @storage_pool : String | Nil = nil, @volume_name : String | Nil = nil)
    end
  end
end
