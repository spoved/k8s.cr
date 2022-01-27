# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::FlexPersistentVolumeSource; end

require "./secret_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::FlexPersistentVolumeSource`.
  module Types::Api::Core::V1::FlexPersistentVolumeSource
    # Driver is the name of the driver to use for this volume.
    abstract def driver : String?
    # :ditto:
    abstract def driver! : String
    # :ditto:
    abstract def driver? : String?
    # :ditto:
    abstract def driver=(value : String)
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String)
    # Optional: Extra command options if any.
    abstract def options : ::Hash(String, String)?
    # :ditto:
    abstract def options! : ::Hash(String, String)
    # :ditto:
    abstract def options? : ::Hash(String, String)?
    # :ditto:
    abstract def options=(value : ::Hash(String, String))
    # Optional: Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool)
    # Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
    abstract def secret_ref : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def secret_ref! : ::K8S::Api::Core::V1::SecretReference
    # :ditto:
    abstract def secret_ref? : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def secret_ref=(value : ::K8S::Api::Core::V1::SecretReference)
  end

  # FlexPersistentVolumeSource represents a generic persistent volume resource that is [provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.)
  @[::K8S::Properties(
    driver: {key: "driver", accessor: "driver", kind: "String", nilable: false, default: nil, read_only: false, description: "Driver is the name of the driver to use for this volume.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default filesystem depends on FlexVolume script.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    options: {key: "options", accessor: "options", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "Optional: Extra command options if any.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    secret_ref: {key: "secretRef", accessor: "secret_ref", kind: "::K8S::Api::Core::V1::SecretReference", nilable: true, default: nil, read_only: false, description: "Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::FlexPersistentVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::FlexPersistentVolumeSource
    k8s_object_accessor("driver", driver : String, false, false, "Driver is the name of the driver to use for this volume.")
    k8s_object_accessor("fsType", fs_type : String, true, false, "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default filesystem depends on FlexVolume script.")
    k8s_object_accessor("options", options : ::Hash(String, String), true, false, "Optional: Extra command options if any.")
    k8s_object_accessor("readOnly", read_only : ::Bool, true, false, "Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)")
    k8s_object_accessor("secretRef", secret_ref : ::K8S::Api::Core::V1::SecretReference, true, false, "Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.")

    def initialize(*, driver : String? = nil, fs_type : String? = nil, options : ::Hash(String, String)? = nil, read_only : ::Bool? = nil, secret_ref : ::K8S::Api::Core::V1::SecretReference? = nil)
      super()
      self.["driver"] = driver
      self.["fsType"] = fs_type
      self.["options"] = options
      self.["readOnly"] = read_only
      self.["secretRef"] = secret_ref
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "driver", accessor: "driver", nilable: false, read_only: false, default: nil, kind: String},
      {key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String},
      {key: "options", accessor: "options", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String)},
      {key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "secretRef", accessor: "secret_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecretReference},
    ])
  end
end
