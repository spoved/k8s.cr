# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./persistent_volume_claim_condition"

::K8S::Kubernetes::Resource.define_object("PersistentVolumeClaimStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "access_modes", kind: ::Array(String), key: "accessModes", nilable: true, read_only: false, description: "AccessModes contains the actual access modes the volume backing the PVC has. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)"},
    {name: "allocated_resources", kind: Union(::Hash(String, ::Int32 | ::String)), key: "allocatedResources", nilable: true, read_only: false, description: "The storage resource within AllocatedResources tracks the capacity allocated to a PVC. It may be larger than the actual capacity when a volume expansion operation is requested. For storage quota, the larger value from allocatedResources and PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is used for quota calculation. If a volume expansion capacity request is lowered, allocatedResources is only lowered if there are no expansion operations in progress and if the actual volume capacity is equal or lower than the requested capacity. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature."},
    {name: "capacity", kind: Union(::Hash(String, ::Int32 | ::String)), key: "capacity", nilable: true, read_only: false, description: "Represents the actual resources of the underlying volume."},
    {name: "conditions", kind: ::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition), key: "conditions", nilable: true, read_only: false, description: "Current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'."},
    {name: "phase", kind: String, key: "phase", nilable: true, read_only: false, description: "Phase represents the current phase of PersistentVolumeClaim.\n\n"},
    {name: "resize_status", kind: String, key: "resizeStatus", nilable: true, read_only: false, description: "ResizeStatus stores status of resize operation. ResizeStatus is not set by default but when expansion is complete resizeStatus is set to empty string by resize controller or kubelet. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature."},

  ]
)
