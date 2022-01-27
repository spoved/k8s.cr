# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::StorageOSVolumeSource; end

require "./local_object_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::StorageOSVolumeSource`.
  module Types::Api::Core::V1::StorageOSVolumeSource
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String)
    # Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool)
    # SecretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted.
    abstract def secret_ref : ::K8S::Api::Core::V1::LocalObjectReference?
    # :ditto:
    abstract def secret_ref! : ::K8S::Api::Core::V1::LocalObjectReference
    # :ditto:
    abstract def secret_ref? : ::K8S::Api::Core::V1::LocalObjectReference?
    # :ditto:
    abstract def secret_ref=(value : ::K8S::Api::Core::V1::LocalObjectReference)
    # VolumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.
    abstract def volume_name : String?
    # :ditto:
    abstract def volume_name! : String
    # :ditto:
    abstract def volume_name? : String?
    # :ditto:
    abstract def volume_name=(value : String)
    # VolumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to "default" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
    abstract def volume_namespace : String?
    # :ditto:
    abstract def volume_namespace! : String
    # :ditto:
    abstract def volume_namespace? : String?
    # :ditto:
    abstract def volume_namespace=(value : String)
  end

  # Represents a StorageOS persistent volume resource.
  @[::K8S::Properties(
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    secret_ref: {key: "secretRef", accessor: "secret_ref", kind: "::K8S::Api::Core::V1::LocalObjectReference", nilable: true, default: nil, read_only: false, description: "SecretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_name: {key: "volumeName", accessor: "volume_name", kind: "String", nilable: true, default: nil, read_only: false, description: "VolumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_namespace: {key: "volumeNamespace", accessor: "volume_namespace", kind: "String", nilable: true, default: nil, read_only: false, description: "VolumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to \"default\" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::StorageOSVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::StorageOSVolumeSource
    k8s_object_accessor("fsType", fs_type : String, true, false, "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.")
    k8s_object_accessor("readOnly", read_only : ::Bool, true, false, "Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)")
    k8s_object_accessor("secretRef", secret_ref : ::K8S::Api::Core::V1::LocalObjectReference, true, false, "SecretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted.")
    k8s_object_accessor("volumeName", volume_name : String, true, false, "VolumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.")
    k8s_object_accessor("volumeNamespace", volume_namespace : String, true, false, "VolumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to \"default\" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.")

    def initialize(*, fs_type : String? = nil, read_only : ::Bool? = nil, secret_ref : ::K8S::Api::Core::V1::LocalObjectReference? = nil, volume_name : String? = nil, volume_namespace : String? = nil)
      super()
      self.["fsType"] = fs_type
      self.["readOnly"] = read_only
      self.["secretRef"] = secret_ref
      self.["volumeName"] = volume_name
      self.["volumeNamespace"] = volume_namespace
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String},
      {key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "secretRef", accessor: "secret_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::LocalObjectReference},
      {key: "volumeName", accessor: "volume_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "volumeNamespace", accessor: "volume_namespace", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
