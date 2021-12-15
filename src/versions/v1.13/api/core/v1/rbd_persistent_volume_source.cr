# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
  @[::K8S::Properties(
    fs_type: {type: String, nilable: true, key: "fsType", getter: false, setter: false},
    image: {type: String, nilable: false, key: "image", getter: false, setter: false},
    keyring: {type: String, nilable: true, key: "keyring", getter: false, setter: false},
    monitors: {type: Array(String), nilable: false, key: "monitors", getter: false, setter: false},
    pool: {type: String, nilable: true, key: "pool", getter: false, setter: false},
    read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    secret_ref: {type: Api::Core::V1::SecretReference, nilable: true, key: "secretRef", getter: false, setter: false},
    user: {type: String, nilable: true, key: "user", getter: false, setter: false},
  )]
  class Api::Core::V1::RBDPersistentVolumeSource
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#rbd](https://kubernetes.io/docs/concepts/storage/volumes#rbd)
    @[::JSON::Field(key: "fsType", emit_null: false)]
    @[::YAML::Field(key: "fsType", emit_null: false)]
    property fs_type : String | Nil

    # The rados image name. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    @[::JSON::Field(key: "image", emit_null: true)]
    @[::YAML::Field(key: "image", emit_null: true)]
    property image : String

    # Keyring is the path to key ring for RBDUser. Default is [/etc/ceph/keyring. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](/etc/ceph/keyring. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    @[::JSON::Field(key: "keyring", emit_null: false)]
    @[::YAML::Field(key: "keyring", emit_null: false)]
    property keyring : String | Nil

    # A collection of Ceph monitors. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    @[::JSON::Field(key: "monitors", emit_null: true)]
    @[::YAML::Field(key: "monitors", emit_null: true)]
    property monitors : Array(String)

    # The rados pool name. Default is rbd. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    @[::JSON::Field(key: "pool", emit_null: false)]
    @[::YAML::Field(key: "pool", emit_null: false)]
    property pool : String | Nil

    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    @[::JSON::Field(key: "readOnly", emit_null: false)]
    @[::YAML::Field(key: "readOnly", emit_null: false)]
    property read_only : Bool | Nil

    # SecretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    @[::JSON::Field(key: "secretRef", emit_null: false)]
    @[::YAML::Field(key: "secretRef", emit_null: false)]
    property secret_ref : Api::Core::V1::SecretReference | Nil

    # The rados user name. Default is admin. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)
    @[::JSON::Field(key: "user", emit_null: false)]
    @[::YAML::Field(key: "user", emit_null: false)]
    property user : String | Nil

    def initialize(*, @image : String, @monitors : Array, @fs_type : String | Nil = nil, @keyring : String | Nil = nil, @pool : String | Nil = nil, @read_only : Bool | Nil = nil, @secret_ref : Api::Core::V1::SecretReference | Nil = nil, @user : String | Nil = nil)
    end
  end
end
