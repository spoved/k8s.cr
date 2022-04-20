# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./resource_requirements"
require "../../../apimachinery/apis/meta/v1/label_selector"

::K8S::Kubernetes::Resource.define_object("PersistentVolumeClaimSpec",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "access_modes", kind: ::Array(String), key: "accessModes", nilable: true, read_only: false, description: "AccessModes contains the desired access modes the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)"},
    {name: "resources", kind: ::K8S::Api::Core::V1::ResourceRequirements, key: "resources", nilable: true, read_only: false, description: "Resources represents the minimum resources the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)"},
    {name: "selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "selector", nilable: true, read_only: false, description: "A label query over volumes to consider for binding."},
    {name: "storage_class_name", kind: String, key: "storageClassName", nilable: true, read_only: false, description: "Name of the StorageClass required by the claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1)"},
    {name: "volume_mode", kind: String, key: "volumeMode", nilable: true, read_only: false, description: "volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec. This is an alpha feature and may change in the future."},
    {name: "volume_name", kind: String, key: "volumeName", nilable: true, read_only: false, description: "VolumeName is the binding reference to the PersistentVolume backing this claim."},

  ]
)
