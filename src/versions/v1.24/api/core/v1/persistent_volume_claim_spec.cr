# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./typed_local_object_reference"
require "./resource_requirements"
require "../../../apimachinery/apis/meta/v1/label_selector"

::K8S::Kubernetes::Resource.define_object("PersistentVolumeClaimSpec",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "access_modes", kind: ::Array(String), key: "accessModes", nilable: true, read_only: false, description: "accessModes contains the desired access modes the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)"},
    {name: "data_source", kind: ::K8S::Api::Core::V1::TypedLocalObjectReference, key: "dataSource", nilable: true, read_only: false, description: "dataSource field can be used to specify either: * An existing VolumeSnapshot object [(snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. If the AnyVolumeDataSource feature gate is enabled, this field will always have the same contents as the DataSourceRef field.]((snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. If the AnyVolumeDataSource feature gate is enabled, this field will always have the same contents as the DataSourceRef field.)"},
    {name: "data_source_ref", kind: ::K8S::Api::Core::V1::TypedLocalObjectReference, key: "dataSourceRef", nilable: true, read_only: false, description: "dataSourceRef specifies the object from which to populate the volume with data, if a non-empty volume is desired. This may be any local object from a non-empty API group (non core object) or a PersistentVolumeClaim object. When this field is specified, volume binding will only succeed if the type of the specified object matches some installed volume populator or dynamic provisioner. This field will replace the functionality of the DataSource field and as such if both fields are non-empty, they must have the same value. For backwards compatibility, both fields (DataSource and DataSourceRef) will be set to the same value automatically if one of them is empty and the other is non-empty. There are two important differences between DataSource and DataSourceRef: * While DataSource only allows two specific types of objects, DataSourceRef\n  allows any non-core object, as well as PersistentVolumeClaim objects.\n* While DataSource ignores disallowed values (dropping them), DataSourceRef\n  preserves all values, and generates an error if a disallowed value is\n  specified.\n(Beta) Using this field requires the AnyVolumeDataSource feature gate to be enabled."},
    {name: "resources", kind: ::K8S::Api::Core::V1::ResourceRequirements, key: "resources", nilable: true, read_only: false, description: "resources represents the minimum resources the volume should have. If RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource requirements that are lower than previous value but must still be higher than capacity recorded in the status field of the claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)"},
    {name: "selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "selector", nilable: true, read_only: false, description: "selector is a label query over volumes to consider for binding."},
    {name: "storage_class_name", kind: String, key: "storageClassName", nilable: true, read_only: false, description: "storageClassName is the name of the StorageClass required by the claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1)"},
    {name: "volume_mode", kind: String, key: "volumeMode", nilable: true, read_only: false, description: "volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec."},
    {name: "volume_name", kind: String, key: "volumeName", nilable: true, read_only: false, description: "volumeName is the binding reference to the PersistentVolume backing this claim."},

  ]
)
