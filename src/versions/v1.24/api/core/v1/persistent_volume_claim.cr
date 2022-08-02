# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./persistent_volume_claim_spec"
require "./persistent_volume_claim_status"

::K8S::Kubernetes::Resource.define_resource("", "v1", "PersistentVolumeClaim",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Core::V1::PersistentVolumeClaimSpec, key: "spec", nilable: true, read_only: false, description: "spec defines the desired characteristics of a volume requested by a pod author. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)"},
    {name: "status", kind: ::K8S::Api::Core::V1::PersistentVolumeClaimStatus, key: "status", nilable: true, read_only: false, description: "status represents the current [information/status of a persistent volume claim. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](information/status of a persistent volume claim. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)"},

  ],
  description: "PersistentVolumeClaim is a user's request for and claim to a persistent volume",
  versions: [{group: "", kind: "PersistentVolumeClaim", version: "v1"}],
)
