# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
  class Api::Core::V1::RBDVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#rbd](https://kubernetes.io/docs/concepts/storage/volumes#rbd)
    property fs_type : String | Nil

    # The rados image name. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)
    property image : String

    # Keyring is the path to key ring for RBDUser. Default is [/etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](/etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)
    property keyring : String | Nil

    # A collection of Ceph monitors. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)
    property monitors : Array(String)

    # The rados pool name. Default is rbd. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)
    property pool : String | Nil

    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)
    property read_only : Bool | Nil

    # SecretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)
    property secret_ref : Api::Core::V1::LocalObjectReference | Nil

    # The rados user name. Default is admin. More info: [https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it](https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it)
    property user : String | Nil

    ::YAML.mapping({
      fs_type:    {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      image:      {type: String, nilable: false, key: "image", getter: false, setter: false},
      keyring:    {type: String, nilable: true, key: "keyring", getter: false, setter: false},
      monitors:   {type: Array(String), nilable: false, key: "monitors", getter: false, setter: false},
      pool:       {type: String, nilable: true, key: "pool", getter: false, setter: false},
      read_only:  {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      secret_ref: {type: Api::Core::V1::LocalObjectReference, nilable: true, key: "secretRef", getter: false, setter: false},
      user:       {type: String, nilable: true, key: "user", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      fs_type:    {type: String, nilable: true, key: "fsType", getter: false, setter: false},
      image:      {type: String, nilable: false, key: "image", getter: false, setter: false},
      keyring:    {type: String, nilable: true, key: "keyring", getter: false, setter: false},
      monitors:   {type: Array(String), nilable: false, key: "monitors", getter: false, setter: false},
      pool:       {type: String, nilable: true, key: "pool", getter: false, setter: false},
      read_only:  {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      secret_ref: {type: Api::Core::V1::LocalObjectReference, nilable: true, key: "secretRef", getter: false, setter: false},
      user:       {type: String, nilable: true, key: "user", getter: false, setter: false},
    }, true)

    def initialize(*, @image : String, @monitors : Array, @fs_type : String | Nil = nil, @keyring : String | Nil = nil, @pool : String | Nil = nil, @read_only : Bool | Nil = nil, @secret_ref : Api::Core::V1::LocalObjectReference | Nil = nil, @user : String | Nil = nil)
    end
  end
end
