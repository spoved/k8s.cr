# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::CinderPersistentVolumeSource; end

require "./secret_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::CinderPersistentVolumeSource`.
  module Types::Api::Core::V1::CinderPersistentVolumeSource
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [[https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md))
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String?)
    # Optional: Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
    # Optional: points to a secret object containing parameters used to connect to OpenStack.
    abstract def secret_ref : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def secret_ref! : ::K8S::Api::Core::V1::SecretReference
    # :ditto:
    abstract def secret_ref? : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def secret_ref=(value : ::K8S::Api::Core::V1::SecretReference?)
    # volume id used to identify the volume in cinder More info: [[https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md))
    abstract def volume_id : String
    # :ditto:
    abstract def volume_id! : String
    # :ditto:
    abstract def volume_id? : String?
    # :ditto:
    abstract def volume_id=(value : String)
  end

  # Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
  @[::K8S::Properties(
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: [https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    secret_ref: {key: "secretRef", accessor: "secret_ref", kind: "::K8S::Api::Core::V1::SecretReference", nilable: true, default: nil, read_only: false, description: "Optional: points to a secret object containing parameters used to connect to OpenStack.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_id: {key: "volumeID", accessor: "volume_id", kind: "String", nilable: false, default: nil, read_only: false, description: "volume id used to identify the volume in cinder More info: [https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::CinderPersistentVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::CinderPersistentVolumeSource

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [[https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md))
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

    # Optional: Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md))
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

    # Optional: points to a secret object containing parameters used to connect to OpenStack.
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

    # volume id used to identify the volume in cinder More info: [[https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md))
    def volume_id : String
      self.["volumeID"].as(String)
    end

    # :ditto:
    def volume_id! : String
      self.["volumeID"].as(String).not_nil!
    end

    # :ditto:
    def volume_id? : String?
      self.["volumeID"]?.as(String?)
    end

    # :ditto:
    def volume_id=(value : String)
      self.["volumeID"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String },
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "secretRef", accessor: "secret_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecretReference },
        { key: "volumeID", accessor: "volume_id", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
