# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./secret_reference"

::K8S::Kubernetes::Resource.define_object("CephFSPersistentVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "monitors", kind: ::Array(String), key: "monitors", nilable: false, read_only: false, description: "Required: Monitors is a collection of Ceph monitors More info: [https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)"},
    {name: "path", kind: String, key: "path", nilable: true, read_only: false, description: "Optional: Used as the mounted root, rather than the full Ceph tree, default is /"},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)"},
    {name: "secret_file", kind: String, key: "secretFile", nilable: true, read_only: false, description: "Optional: SecretFile is the path to key ring for User, default is [/etc/ceph/user.secret More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](/etc/ceph/user.secret More info: https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)"},
    {name: "secret_ref", kind: ::K8S::Api::Core::V1::SecretReference, key: "secretRef", nilable: true, read_only: false, description: "Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: [https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)"},
    {name: "user", kind: String, key: "user", nilable: true, read_only: false, description: "Optional: User is the rados user name, default is admin More info: [https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it](https://releases.k8s.io/HEAD/examples/volumes/cephfs/README.md#how-to-use-it)"},

  ]
)
