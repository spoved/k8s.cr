# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./persistent_volume_spec"
require "./persistent_volume_status"

::K8S::Kubernetes::Resource.define_resource("", "v1", "PersistentVolume",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Core::V1::PersistentVolumeSpec, key: "spec", nilable: true, read_only: false, description: "spec defines a specification of a persistent volume owned by the cluster. Provisioned by an administrator. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes)"},
    {name: "status", kind: ::K8S::Api::Core::V1::PersistentVolumeStatus, key: "status", nilable: true, read_only: false, description: "status represents the current [information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes](information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes)"},

  ],
  description: "PersistentVolume (PV) is a storage resource provisioned by an administrator. It is analogous to a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes",
  versions: [{group: "", kind: "PersistentVolume", version: "v1"}],
)
