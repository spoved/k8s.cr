# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./local_object_reference"

::K8S::Kubernetes::Resource.define_object("RBDVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "fs_type", kind: String, key: "fsType", nilable: true, read_only: false, description: "Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#rbd](https://kubernetes.io/docs/concepts/storage/volumes#rbd)"},
    {name: "image", kind: String, key: "image", nilable: false, read_only: false, description: "The rados image name. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)"},
    {name: "keyring", kind: String, key: "keyring", nilable: true, read_only: false, description: "Keyring is the path to key ring for RBDUser. Default is [/etc/ceph/keyring. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](/etc/ceph/keyring. More info: https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)"},
    {name: "monitors", kind: ::Array(String), key: "monitors", nilable: false, read_only: false, description: "A collection of Ceph monitors. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)"},
    {name: "pool", kind: String, key: "pool", nilable: true, read_only: false, description: "The rados pool name. Default is rbd. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)"},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)"},
    {name: "secret_ref", kind: ::K8S::Api::Core::V1::LocalObjectReference, key: "secretRef", nilable: true, read_only: false, description: "SecretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)"},
    {name: "user", kind: String, key: "user", nilable: true, read_only: false, description: "The rados user name. Default is admin. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md#how-to-use-it)"},

  ]
)
