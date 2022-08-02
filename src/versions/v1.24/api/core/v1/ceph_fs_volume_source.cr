# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./local_object_reference"

::K8S::Kubernetes::Resource.define_object("CephFSVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "monitors", kind: ::Array(String), key: "monitors", nilable: false, read_only: false, description: "monitors is Required: Monitors is a collection of Ceph monitors More info: [https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it](https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it)"},
    {name: "path", kind: String, key: "path", nilable: true, read_only: false, description: "path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /"},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "readOnly is Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it)"},
    {name: "secret_file", kind: String, key: "secretFile", nilable: true, read_only: false, description: "secretFile is Optional: SecretFile is the path to key ring for User, default is [/etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it](/etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it)"},
    {name: "secret_ref", kind: ::K8S::Api::Core::V1::LocalObjectReference, key: "secretRef", nilable: true, read_only: false, description: "secretRef is Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: [https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it](https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it)"},
    {name: "user", kind: String, key: "user", nilable: true, read_only: false, description: "user is optional: User is the rados user name, default is admin More info: [https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it](https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it)"},

  ]
)