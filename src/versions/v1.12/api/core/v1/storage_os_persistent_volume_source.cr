# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents a StorageOS persistent volume resource.
  @[::K8S::Properties(
    fs_type: {type: String, nilable: true, key: "fsType", getter: false, setter: false},
    read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    secret_ref: {type: Api::Core::V1::ObjectReference, nilable: true, key: "secretRef", getter: false, setter: false},
    volume_name: {type: String, nilable: true, key: "volumeName", getter: false, setter: false},
    volume_namespace: {type: String, nilable: true, key: "volumeNamespace", getter: false, setter: false},
  )]
  class Api::Core::V1::StorageOSPersistentVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    @[::JSON::Field(key: "fsType", emit_null: false)]
    @[::YAML::Field(key: "fsType", emit_null: false)]
    property fs_type : String | Nil

    # Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)
    @[::JSON::Field(key: "readOnly", emit_null: false)]
    @[::YAML::Field(key: "readOnly", emit_null: false)]
    property read_only : Bool | Nil

    # SecretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted.
    @[::JSON::Field(key: "secretRef", emit_null: false)]
    @[::YAML::Field(key: "secretRef", emit_null: false)]
    property secret_ref : Api::Core::V1::ObjectReference | Nil

    # VolumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.
    @[::JSON::Field(key: "volumeName", emit_null: false)]
    @[::YAML::Field(key: "volumeName", emit_null: false)]
    property volume_name : String | Nil

    # VolumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to "default" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
    @[::JSON::Field(key: "volumeNamespace", emit_null: false)]
    @[::YAML::Field(key: "volumeNamespace", emit_null: false)]
    property volume_namespace : String | Nil

    def initialize(*, @fs_type : String | Nil = nil, @read_only : Bool | Nil = nil, @secret_ref : Api::Core::V1::ObjectReference | Nil = nil, @volume_name : String | Nil = nil, @volume_namespace : String | Nil = nil)
    end
  end
end
