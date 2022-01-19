# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::FlexPersistentVolumeSource; end

require "./secret_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::FlexPersistentVolumeSource`.
  module Types::Api::Core::V1::FlexPersistentVolumeSource
    alias ValueType = String | ::Hash(String, String) | ::Bool | ::K8S::Api::Core::V1::SecretReference | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Driver is the name of the driver to use for this volume.
    abstract def driver : String
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
    abstract def fs_type=(value : String?)
    # Optional: Extra command options if any.
    abstract def options : ::Hash(String, String)?
    # :ditto:
    abstract def options! : ::Hash(String, String)
    # :ditto:
    abstract def options? : ::Hash(String, String)?
    # :ditto:
    abstract def options=(value : ::Hash(String, String)?)
    # Optional: Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
    # Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
    abstract def secret_ref : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def secret_ref! : ::K8S::Api::Core::V1::SecretReference
    # :ditto:
    abstract def secret_ref? : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def secret_ref=(value : ::K8S::Api::Core::V1::SecretReference?)
  end

  # FlexPersistentVolumeSource represents a generic persistent volume resource that is [provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.)
  @[::K8S::Properties(
    driver: {key: "driver", accessor: "driver", kind: "String", nilable: false, default: nil, read_only: false, description: "Driver is the name of the driver to use for this volume."},
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default filesystem depends on FlexVolume script."},
    options: {key: "options", accessor: "options", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "Optional: Extra command options if any."},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)"},
    secret_ref: {key: "secretRef", accessor: "secret_ref", kind: "::K8S::Api::Core::V1::SecretReference", nilable: true, default: nil, read_only: false, description: "Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts."},
  )]
  class Api::Core::V1::FlexPersistentVolumeSource < ::K8S::Types::Api::Core::V1::FlexPersistentVolumeSource::Instance
    include ::K8S::Types::Api::Core::V1::FlexPersistentVolumeSource
    include ::K8S::Kubernetes::Object

    # Driver is the name of the driver to use for this volume.
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

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
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

    # Optional: Extra command options if any.
    def options : ::Hash(String, String)?
      self.["options"].as(::Hash(String, String)?)
    end

    # :ditto:
    def options! : ::Hash(String, String)
      self.["options"].as(::Hash(String, String)?).not_nil!
    end

    # :ditto:
    def options? : ::Hash(String, String)?
      self.["options"]?.as(::Hash(String, String)?)
    end

    # :ditto:
    def options=(value : ::Hash(String, String)?)
      self.["options"] = value
    end

    # Optional: Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.))
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

    # Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
    def secret_ref : ::K8S::Api::Core::V1::SecretReference?
      self.["secretRef"].as(::K8S::Api::Core::V1::SecretReference?)
    end

    # :ditto:
    def secret_ref! : ::K8S::Api::Core::V1::SecretReference
      self.["secretRef"].as(::K8S::Api::Core::V1::SecretReference?).not_nil!
    end

    # :ditto:
    def secret_ref? : ::K8S::Api::Core::V1::SecretReference?
      self.["secretRef"]?.as(::K8S::Api::Core::V1::SecretReference?)
    end

    # :ditto:
    def secret_ref=(value : ::K8S::Api::Core::V1::SecretReference?)
      self.["secretRef"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "driver", accessor: "driver", nilable: false, read_only: false, default: nil, kind: String },
        { key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String },
        { key: "options", accessor: "options", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String) },
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "secretRef", accessor: "secret_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecretReference },
      ])
end
  end
end
