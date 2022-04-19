# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./persistent_volume_claim_condition"

::K8S::Kubernetes::Resource.define_object("PersistentVolumeClaimStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "access_modes", kind: ::Array(String), key: "accessModes", nilable: true, read_only: false, description: "AccessModes contains the actual access modes the volume backing the PVC has. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)"},
    {name: "capacity", kind: Union(::Hash(String, ::Int32 | ::String)), key: "capacity", nilable: true, read_only: false, description: "Represents the actual resources of the underlying volume."},
    {name: "conditions", kind: ::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition), key: "conditions", nilable: true, read_only: false, description: "Current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'."},
    {name: "phase", kind: String, key: "phase", nilable: true, read_only: false, description: "Phase represents the current phase of PersistentVolumeClaim."},

  ]
)
