# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::CephFSPersistentVolumeSource; end

require "./secret_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::CephFSPersistentVolumeSource`.
  module Types::Api::Core::V1::CephFSPersistentVolumeSource
    alias ValueType = ::Array(String) | String | ::Bool | ::K8S::Api::Core::V1::SecretReference | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Required: Monitors is a collection of Ceph monitors More info: [[https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it))
    abstract def monitors : ::Array(String)
    # :ditto:
    abstract def monitors! : ::Array(String)
    # :ditto:
    abstract def monitors? : ::Array(String)?
    # :ditto:
    abstract def monitors=(value : ::Array(String))
    # Optional: Used as the mounted root, rather than the full Ceph tree, default is /
    abstract def path : String?
    # :ditto:
    abstract def path! : String
    # :ditto:
    abstract def path? : String?
    # :ditto:
    abstract def path=(value : String?)
    # Optional: Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
    # Optional: SecretFile is the path to key ring for User, default is [[/etc/ceph/user.secret More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](/etc/ceph/user.secret More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)]([/etc/ceph/user.secret More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](/etc/ceph/user.secret More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it))
    abstract def secret_file : String?
    # :ditto:
    abstract def secret_file! : String
    # :ditto:
    abstract def secret_file? : String?
    # :ditto:
    abstract def secret_file=(value : String?)
    # Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: [[https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it))
    abstract def secret_ref : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def secret_ref! : ::K8S::Api::Core::V1::SecretReference
    # :ditto:
    abstract def secret_ref? : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def secret_ref=(value : ::K8S::Api::Core::V1::SecretReference?)
    # Optional: User is the rados user name, default is admin More info: [[https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it))
    abstract def user : String?
    # :ditto:
    abstract def user! : String
    # :ditto:
    abstract def user? : String?
    # :ditto:
    abstract def user=(value : String?)
  end

  # Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
  @[::K8S::Properties(
    monitors: {key: "monitors", accessor: "monitors", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "Required: Monitors is a collection of Ceph monitors More info: [https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)"},
    path: {key: "path", accessor: "path", kind: "String", nilable: true, default: nil, read_only: false, description: "Optional: Used as the mounted root, rather than the full Ceph tree, default is /"},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)"},
    secret_file: {key: "secretFile", accessor: "secret_file", kind: "String", nilable: true, default: nil, read_only: false, description: "Optional: SecretFile is the path to key ring for User, default is [/etc/ceph/user.secret More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](/etc/ceph/user.secret More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)"},
    secret_ref: {key: "secretRef", accessor: "secret_ref", kind: "::K8S::Api::Core::V1::SecretReference", nilable: true, default: nil, read_only: false, description: "Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: [https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)"},
    user: {key: "user", accessor: "user", kind: "String", nilable: true, default: nil, read_only: false, description: "Optional: User is the rados user name, default is admin More info: [https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)"},
  )]
  class Api::Core::V1::CephFSPersistentVolumeSource < ::K8S::Types::Api::Core::V1::CephFSPersistentVolumeSource::Instance
    include ::K8S::Types::Api::Core::V1::CephFSPersistentVolumeSource
    include ::K8S::Kubernetes::Object

    # Required: Monitors is a collection of Ceph monitors More info: [[https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it))
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

    # Optional: Used as the mounted root, rather than the full Ceph tree, default is /
    def path : String?
      self.["path"].as(String?)
    end

    # :ditto:
    def path! : String
      self.["path"].as(String?).not_nil!
    end

    # :ditto:
    def path? : String?
      self.["path"]?.as(String?)
    end

    # :ditto:
    def path=(value : String?)
      self.["path"] = value
    end

    # Optional: Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it))
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

    # Optional: SecretFile is the path to key ring for User, default is [[/etc/ceph/user.secret More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](/etc/ceph/user.secret More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)]([/etc/ceph/user.secret More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](/etc/ceph/user.secret More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it))
    def secret_file : String?
      self.["secretFile"].as(String?)
    end

    # :ditto:
    def secret_file! : String
      self.["secretFile"].as(String?).not_nil!
    end

    # :ditto:
    def secret_file? : String?
      self.["secretFile"]?.as(String?)
    end

    # :ditto:
    def secret_file=(value : String?)
      self.["secretFile"] = value
    end

    # Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: [[https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it))
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

    # Optional: User is the rados user name, default is admin More info: [[https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it))
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
        { key: "monitors", accessor: "monitors", nilable: false, read_only: false, default: nil, kind: ::Array(String) },
        { key: "path", accessor: "path", nilable: true, read_only: false, default: nil, kind: String },
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "secretFile", accessor: "secret_file", nilable: true, read_only: false, default: nil, kind: String },
        { key: "secretRef", accessor: "secret_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecretReference },
        { key: "user", accessor: "user", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
