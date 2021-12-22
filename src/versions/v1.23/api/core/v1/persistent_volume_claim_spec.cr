# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
  @[::K8S::Properties(
    access_modes: {type: Array(String), nilable: true, key: "accessModes", getter: false, setter: false},
    data_source: {type: Api::Core::V1::TypedLocalObjectReference, nilable: true, key: "dataSource", getter: false, setter: false},
    data_source_ref: {type: Api::Core::V1::TypedLocalObjectReference, nilable: true, key: "dataSourceRef", getter: false, setter: false},
    resources: {type: Api::Core::V1::ResourceRequirements, nilable: true, key: "resources", getter: false, setter: false},
    selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
    storage_class_name: {type: String, nilable: true, key: "storageClassName", getter: false, setter: false},
    volume_mode: {type: String, nilable: true, key: "volumeMode", getter: false, setter: false},
    volume_name: {type: String, nilable: true, key: "volumeName", getter: false, setter: false},
  )]
  class Api::Core::V1::PersistentVolumeClaimSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # AccessModes contains the desired access modes the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)
    @[::JSON::Field(key: "accessModes", emit_null: false)]
    @[::YAML::Field(key: "accessModes", emit_null: false)]
    property access_modes : Array(String) | Nil

    # This field can be used to specify either: * An existing VolumeSnapshot object [(snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. If the AnyVolumeDataSource feature gate is enabled, this field will always have the same contents as the DataSourceRef field.]((snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. If the AnyVolumeDataSource feature gate is enabled, this field will always have the same contents as the DataSourceRef field.)
    @[::JSON::Field(key: "dataSource", emit_null: false)]
    @[::YAML::Field(key: "dataSource", emit_null: false)]
    property data_source : Api::Core::V1::TypedLocalObjectReference | Nil

    # Specifies the object from which to populate the volume with data, if a non-empty volume is desired. This may be any local object from a non-empty API group (non core object) or a PersistentVolumeClaim object. When this field is specified, volume binding will only succeed if the type of the specified object matches some installed volume populator or dynamic provisioner. This field will replace the functionality of the DataSource field and as such if both fields are non-empty, they must have the same value. For backwards compatibility, both fields (DataSource and DataSourceRef) will be set to the same value automatically if one of them is empty and the other is non-empty. There are two important differences between DataSource and DataSourceRef: * While DataSource only allows two specific types of objects, DataSourceRef
    #   allows any non-core object, as well as PersistentVolumeClaim objects.
    # * While DataSource ignores disallowed values (dropping them), DataSourceRef
    #   preserves all values, and generates an error if a disallowed value is
    #   specified.
    # (Alpha) Using this field requires the AnyVolumeDataSource feature gate to be enabled.
    @[::JSON::Field(key: "dataSourceRef", emit_null: false)]
    @[::YAML::Field(key: "dataSourceRef", emit_null: false)]
    property data_source_ref : Api::Core::V1::TypedLocalObjectReference | Nil

    # Resources represents the minimum resources the volume should have. If RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource requirements that are lower than previous value but must still be higher than capacity recorded in the status field of the claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)
    @[::JSON::Field(key: "resources", emit_null: false)]
    @[::YAML::Field(key: "resources", emit_null: false)]
    property resources : Api::Core::V1::ResourceRequirements | Nil

    # A label query over volumes to consider for binding.
    @[::JSON::Field(key: "selector", emit_null: false)]
    @[::YAML::Field(key: "selector", emit_null: false)]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # Name of the StorageClass required by the claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1)
    @[::JSON::Field(key: "storageClassName", emit_null: false)]
    @[::YAML::Field(key: "storageClassName", emit_null: false)]
    property storage_class_name : String | Nil

    # volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
    @[::JSON::Field(key: "volumeMode", emit_null: false)]
    @[::YAML::Field(key: "volumeMode", emit_null: false)]
    property volume_mode : String | Nil

    # VolumeName is the binding reference to the PersistentVolume backing this claim.
    @[::JSON::Field(key: "volumeName", emit_null: false)]
    @[::YAML::Field(key: "volumeName", emit_null: false)]
    property volume_name : String | Nil

    def initialize(*, @access_modes : Array(String) | Nil = nil, @data_source : Api::Core::V1::TypedLocalObjectReference | Nil = nil, @data_source_ref : Api::Core::V1::TypedLocalObjectReference | Nil = nil, @resources : Api::Core::V1::ResourceRequirements | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @storage_class_name : String | Nil = nil, @volume_mode : String | Nil = nil, @volume_name : String | Nil = nil)
    end
  end
end