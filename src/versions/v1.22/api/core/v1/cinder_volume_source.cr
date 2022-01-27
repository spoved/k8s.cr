# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::CinderVolumeSource; end

require "./local_object_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::CinderVolumeSource`.
  module Types::Api::Core::V1::CinderVolumeSource
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [[https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)](https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md))
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String)
    # Optional: Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool)
    # Optional: points to a secret object containing parameters used to connect to OpenStack.
    abstract def secret_ref : ::K8S::Api::Core::V1::LocalObjectReference?
    # :ditto:
    abstract def secret_ref! : ::K8S::Api::Core::V1::LocalObjectReference
    # :ditto:
    abstract def secret_ref? : ::K8S::Api::Core::V1::LocalObjectReference?
    # :ditto:
    abstract def secret_ref=(value : ::K8S::Api::Core::V1::LocalObjectReference)
    # volume id used to identify the volume in cinder. More info: [[https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)](https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md))
    abstract def volume_id : String?
    # :ditto:
    abstract def volume_id! : String
    # :ditto:
    abstract def volume_id? : String?
    # :ditto:
    abstract def volume_id=(value : String)
  end

  # Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
  @[::K8S::Properties(
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: [https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    secret_ref: {key: "secretRef", accessor: "secret_ref", kind: "::K8S::Api::Core::V1::LocalObjectReference", nilable: true, default: nil, read_only: false, description: "Optional: points to a secret object containing parameters used to connect to OpenStack.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_id: {key: "volumeID", accessor: "volume_id", kind: "String", nilable: false, default: nil, read_only: false, description: "volume id used to identify the volume in cinder. More info: [https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::CinderVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::CinderVolumeSource
    k8s_object_accessor("fsType", fs_type : String, true, false, "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: [https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)")
    k8s_object_accessor("readOnly", read_only : ::Bool, true, false, "Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md)")
    k8s_object_accessor("secretRef", secret_ref : ::K8S::Api::Core::V1::LocalObjectReference, true, false, "Optional: points to a secret object containing parameters used to connect to OpenStack.")
    k8s_object_accessor("volumeID", volume_id : String, false, false, "volume id used to identify the volume in cinder. More info: [https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)")

    def initialize(*, fs_type : String? = nil, read_only : ::Bool? = nil, secret_ref : ::K8S::Api::Core::V1::LocalObjectReference? = nil, volume_id : String? = nil)
      super()
      self.["fsType"] = fs_type
      self.["readOnly"] = read_only
      self.["secretRef"] = secret_ref
      self.["volumeID"] = volume_id
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String},
      {key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "secretRef", accessor: "secret_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::LocalObjectReference},
      {key: "volumeID", accessor: "volume_id", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
