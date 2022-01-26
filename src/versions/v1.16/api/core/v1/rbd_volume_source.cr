# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::RBDVolumeSource; end

require "./local_object_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::RBDVolumeSource`.
  module Types::Api::Core::V1::RBDVolumeSource
    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#rbd](https://kubernetes.io/docs/concepts/storage/volumes#rbd)](https://kubernetes.io/docs/concepts/storage/volumes#rbd](https://kubernetes.io/docs/concepts/storage/volumes#rbd))
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String?)
    # The rados image name. More info: [[https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it))
    abstract def image : String
    # :ditto:
    abstract def image! : String
    # :ditto:
    abstract def image? : String?
    # :ditto:
    abstract def image=(value : String)
    # Keyring is the path to key ring for RBDUser. Default is [[/etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](/etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)]([/etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](/etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it))
    abstract def keyring : String?
    # :ditto:
    abstract def keyring! : String
    # :ditto:
    abstract def keyring? : String?
    # :ditto:
    abstract def keyring=(value : String?)
    # A collection of Ceph monitors. More info: [[https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it))
    abstract def monitors : ::Array(String)
    # :ditto:
    abstract def monitors! : ::Array(String)
    # :ditto:
    abstract def monitors? : ::Array(String)?
    # :ditto:
    abstract def monitors=(value : ::Array(String))
    # The rados pool name. Default is rbd. More info: [[https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it))
    abstract def pool : String?
    # :ditto:
    abstract def pool! : String
    # :ditto:
    abstract def pool? : String?
    # :ditto:
    abstract def pool=(value : String?)
    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: [[https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
    # SecretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: [[https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it))
    abstract def secret_ref : ::K8S::Api::Core::V1::LocalObjectReference?
    # :ditto:
    abstract def secret_ref! : ::K8S::Api::Core::V1::LocalObjectReference
    # :ditto:
    abstract def secret_ref? : ::K8S::Api::Core::V1::LocalObjectReference?
    # :ditto:
    abstract def secret_ref=(value : ::K8S::Api::Core::V1::LocalObjectReference?)
    # The rados user name. Default is admin. More info: [[https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it))
    abstract def user : String?
    # :ditto:
    abstract def user! : String
    # :ditto:
    abstract def user? : String?
    # :ditto:
    abstract def user=(value : String?)
  end

  # Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
  @[::K8S::Properties(
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#rbd](https://kubernetes.io/docs/concepts/storage/volumes#rbd)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    image: {key: "image", accessor: "image", kind: "String", nilable: false, default: nil, read_only: false, description: "The rados image name. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    keyring: {key: "keyring", accessor: "keyring", kind: "String", nilable: true, default: nil, read_only: false, description: "Keyring is the path to key ring for RBDUser. Default is [/etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](/etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    monitors: {key: "monitors", accessor: "monitors", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "A collection of Ceph monitors. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pool: {key: "pool", accessor: "pool", kind: "String", nilable: true, default: nil, read_only: false, description: "The rados pool name. Default is rbd. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    secret_ref: {key: "secretRef", accessor: "secret_ref", kind: "::K8S::Api::Core::V1::LocalObjectReference", nilable: true, default: nil, read_only: false, description: "SecretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    user: {key: "user", accessor: "user", kind: "String", nilable: true, default: nil, read_only: false, description: "The rados user name. Default is admin. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::RBDVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::RBDVolumeSource

    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#rbd](https://kubernetes.io/docs/concepts/storage/volumes#rbd)](https://kubernetes.io/docs/concepts/storage/volumes#rbd](https://kubernetes.io/docs/concepts/storage/volumes#rbd))
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

    # The rados image name. More info: [[https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it))
    def image : String
      self.["image"].as(String)
    end

    # :ditto:
    def image! : String
      self.["image"].as(String).not_nil!
    end

    # :ditto:
    def image? : String?
      self.["image"]?.as(String?)
    end

    # :ditto:
    def image=(value : String)
      self.["image"] = value
    end

    # Keyring is the path to key ring for RBDUser. Default is [[/etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](/etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)]([/etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](/etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it))
    def keyring : String?
      self.["keyring"].as(String?)
    end

    # :ditto:
    def keyring! : String
      self.["keyring"].as(String?).not_nil!
    end

    # :ditto:
    def keyring? : String?
      self.["keyring"]?.as(String?)
    end

    # :ditto:
    def keyring=(value : String?)
      self.["keyring"] = value
    end

    # A collection of Ceph monitors. More info: [[https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it))
    def monitors : ::Array(String)
      self.["monitors"].as(::Array(String))
    end

    # :ditto:
    def monitors! : ::Array(String)
      self.["monitors"].as(::Array(String)).not_nil!
    end

    # :ditto:
    def monitors? : ::Array(String)?
      self.["monitors"]?.as(::Array(String)?)
    end

    # :ditto:
    def monitors=(value : ::Array(String))
      self.["monitors"] = value
    end

    # The rados pool name. Default is rbd. More info: [[https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it))
    def pool : String?
      self.["pool"].as(String?)
    end

    # :ditto:
    def pool! : String
      self.["pool"].as(String?).not_nil!
    end

    # :ditto:
    def pool? : String?
      self.["pool"]?.as(String?)
    end

    # :ditto:
    def pool=(value : String?)
      self.["pool"] = value
    end

    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: [[https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it))
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

    # SecretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: [[https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it))
    def secret_ref : ::K8S::Api::Core::V1::LocalObjectReference?
      self.["secretRef"].as(::K8S::Api::Core::V1::LocalObjectReference?)
    end

    # :ditto:
    def secret_ref! : ::K8S::Api::Core::V1::LocalObjectReference
      self.["secretRef"].as(::K8S::Api::Core::V1::LocalObjectReference?).not_nil!
    end

    # :ditto:
    def secret_ref? : ::K8S::Api::Core::V1::LocalObjectReference?
      self.["secretRef"]?.as(::K8S::Api::Core::V1::LocalObjectReference?)
    end

    # :ditto:
    def secret_ref=(value : ::K8S::Api::Core::V1::LocalObjectReference?)
      self.["secretRef"] = value
    end

    # The rados user name. Default is admin. More info: [[https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it))
    def user : String?
      self.["user"].as(String?)
    end

    # :ditto:
    def user! : String
      self.["user"].as(String?).not_nil!
    end

    # :ditto:
    def user? : String?
      self.["user"]?.as(String?)
    end

    # :ditto:
    def user=(value : String?)
      self.["user"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String },
        { key: "image", accessor: "image", nilable: false, read_only: false, default: nil, kind: String },
        { key: "keyring", accessor: "keyring", nilable: true, read_only: false, default: nil, kind: String },
        { key: "monitors", accessor: "monitors", nilable: false, read_only: false, default: nil, kind: ::Array(String) },
        { key: "pool", accessor: "pool", nilable: true, read_only: false, default: nil, kind: String },
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "secretRef", accessor: "secret_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::LocalObjectReference },
        { key: "user", accessor: "user", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
