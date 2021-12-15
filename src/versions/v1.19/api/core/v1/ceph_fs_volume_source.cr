# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
  @[::K8S::Properties(
    monitors: {type: Array(String), nilable: false, key: "monitors", getter: false, setter: false},
    path: {type: String, nilable: true, key: "path", getter: false, setter: false},
    read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    secret_file: {type: String, nilable: true, key: "secretFile", getter: false, setter: false},
    secret_ref: {type: Api::Core::V1::LocalObjectReference, nilable: true, key: "secretRef", getter: false, setter: false},
    user: {type: String, nilable: true, key: "user", getter: false, setter: false},
  )]
  class Api::Core::V1::CephFSVolumeSource
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Required: Monitors is a collection of Ceph monitors More info: [https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it](https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it)
    @[::JSON::Field(key: "monitors", emit_null: true)]
    @[::YAML::Field(key: "monitors", emit_null: true)]
    property monitors : Array(String)

    # Optional: Used as the mounted root, rather than the full Ceph tree, default is /
    @[::JSON::Field(key: "path", emit_null: false)]
    @[::YAML::Field(key: "path", emit_null: false)]
    property path : String | Nil

    # Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it)
    @[::JSON::Field(key: "readOnly", emit_null: false)]
    @[::YAML::Field(key: "readOnly", emit_null: false)]
    property read_only : Bool | Nil

    # Optional: SecretFile is the path to key ring for User, default is [/etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it](/etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it)
    @[::JSON::Field(key: "secretFile", emit_null: false)]
    @[::YAML::Field(key: "secretFile", emit_null: false)]
    property secret_file : String | Nil

    # Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: [https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it](https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it)
    @[::JSON::Field(key: "secretRef", emit_null: false)]
    @[::YAML::Field(key: "secretRef", emit_null: false)]
    property secret_ref : Api::Core::V1::LocalObjectReference | Nil

    # Optional: User is the rados user name, default is admin More info: [https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it](https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it)
    @[::JSON::Field(key: "user", emit_null: false)]
    @[::YAML::Field(key: "user", emit_null: false)]
    property user : String | Nil

    def initialize(*, @monitors : Array, @path : String | Nil = nil, @read_only : Bool | Nil = nil, @secret_file : String | Nil = nil, @secret_ref : Api::Core::V1::LocalObjectReference | Nil = nil, @user : String | Nil = nil)
    end
  end
end
