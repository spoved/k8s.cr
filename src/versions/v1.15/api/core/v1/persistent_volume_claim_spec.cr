# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PersistentVolumeClaimSpec; end

require "./typed_local_object_reference"
require "./resource_requirements"
require "../../../apimachinery/apis/meta/v1/label_selector"

module K8S
  # Namespace holding the types for `Api::Core::V1::PersistentVolumeClaimSpec`.
  module Types::Api::Core::V1::PersistentVolumeClaimSpec
    # AccessModes contains the desired access modes the volume should have. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1))
    abstract def access_modes : ::Array(String)?
    # :ditto:
    abstract def access_modes! : ::Array(String)
    # :ditto:
    abstract def access_modes? : ::Array(String)?
    # :ditto:
    abstract def access_modes=(value : ::Array(String))
    # This field requires the VolumeSnapshotDataSource alpha feature gate to be enabled and currently VolumeSnapshot is the only supported data source. If the provisioner can support VolumeSnapshot data source, it will create a new volume and data will be restored to the volume at the same time. If the provisioner does not support VolumeSnapshot data source, volume will not be created and the failure will be reported as an event. In the future, we plan to support more data source types and the behavior of the provisioner may change.
    abstract def data_source : ::K8S::Api::Core::V1::TypedLocalObjectReference?
    # :ditto:
    abstract def data_source! : ::K8S::Api::Core::V1::TypedLocalObjectReference
    # :ditto:
    abstract def data_source? : ::K8S::Api::Core::V1::TypedLocalObjectReference?
    # :ditto:
    abstract def data_source=(value : ::K8S::Api::Core::V1::TypedLocalObjectReference)
    # Resources represents the minimum resources the volume should have. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources))
    abstract def resources : ::K8S::Api::Core::V1::ResourceRequirements?
    # :ditto:
    abstract def resources! : ::K8S::Api::Core::V1::ResourceRequirements
    # :ditto:
    abstract def resources? : ::K8S::Api::Core::V1::ResourceRequirements?
    # :ditto:
    abstract def resources=(value : ::K8S::Api::Core::V1::ResourceRequirements)
    # A label query over volumes to consider for binding.
    abstract def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
    # Name of the StorageClass required by the claim. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1))
    abstract def storage_class_name : String?
    # :ditto:
    abstract def storage_class_name! : String
    # :ditto:
    abstract def storage_class_name? : String?
    # :ditto:
    abstract def storage_class_name=(value : String)
    # volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec. This is a beta feature.
    abstract def volume_mode : String?
    # :ditto:
    abstract def volume_mode! : String
    # :ditto:
    abstract def volume_mode? : String?
    # :ditto:
    abstract def volume_mode=(value : String)
    # VolumeName is the binding reference to the PersistentVolume backing this claim.
    abstract def volume_name : String?
    # :ditto:
    abstract def volume_name! : String
    # :ditto:
    abstract def volume_name? : String?
    # :ditto:
    abstract def volume_name=(value : String)
  end

  # PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
  @[::K8S::Properties(
    access_modes: {key: "accessModes", accessor: "access_modes", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "AccessModes contains the desired access modes the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    data_source: {key: "dataSource", accessor: "data_source", kind: "::K8S::Api::Core::V1::TypedLocalObjectReference", nilable: true, default: nil, read_only: false, description: "This field requires the VolumeSnapshotDataSource alpha feature gate to be enabled and currently VolumeSnapshot is the only supported data source. If the provisioner can support VolumeSnapshot data source, it will create a new volume and data will be restored to the volume at the same time. If the provisioner does not support VolumeSnapshot data source, volume will not be created and the failure will be reported as an event. In the future, we plan to support more data source types and the behavior of the provisioner may change.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resources: {key: "resources", accessor: "resources", kind: "::K8S::Api::Core::V1::ResourceRequirements", nilable: true, default: nil, read_only: false, description: "Resources represents the minimum resources the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "A label query over volumes to consider for binding.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    storage_class_name: {key: "storageClassName", accessor: "storage_class_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name of the StorageClass required by the claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_mode: {key: "volumeMode", accessor: "volume_mode", kind: "String", nilable: true, default: nil, read_only: false, description: "volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec. This is a beta feature.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_name: {key: "volumeName", accessor: "volume_name", kind: "String", nilable: true, default: nil, read_only: false, description: "VolumeName is the binding reference to the PersistentVolume backing this claim.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PersistentVolumeClaimSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PersistentVolumeClaimSpec
    k8s_object_accessor("accessModes", access_modes : ::Array(String), true, false, "AccessModes contains the desired access modes the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)")
    k8s_object_accessor("dataSource", data_source : ::K8S::Api::Core::V1::TypedLocalObjectReference, true, false, "This field requires the VolumeSnapshotDataSource alpha feature gate to be enabled and currently VolumeSnapshot is the only supported data source. If the provisioner can support VolumeSnapshot data source, it will create a new volume and data will be restored to the volume at the same time. If the provisioner does not support VolumeSnapshot data source, volume will not be created and the failure will be reported as an event. In the future, we plan to support more data source types and the behavior of the provisioner may change.")
    k8s_object_accessor("resources", resources : ::K8S::Api::Core::V1::ResourceRequirements, true, false, "Resources represents the minimum resources the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)")
    k8s_object_accessor("selector", selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, true, false, "A label query over volumes to consider for binding.")
    k8s_object_accessor("storageClassName", storage_class_name : String, true, false, "Name of the StorageClass required by the claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1)")
    k8s_object_accessor("volumeMode", volume_mode : String, true, false, "volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec. This is a beta feature.")
    k8s_object_accessor("volumeName", volume_name : String, true, false, "VolumeName is the binding reference to the PersistentVolume backing this claim.")

    def initialize(*, access_modes : ::Array(String)? = nil, data_source : ::K8S::Api::Core::V1::TypedLocalObjectReference? = nil, resources : ::K8S::Api::Core::V1::ResourceRequirements? = nil, selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector? = nil, storage_class_name : String? = nil, volume_mode : String? = nil, volume_name : String? = nil)
      super()
      self.["accessModes"] = access_modes
      self.["dataSource"] = data_source
      self.["resources"] = resources
      self.["selector"] = selector
      self.["storageClassName"] = storage_class_name
      self.["volumeMode"] = volume_mode
      self.["volumeName"] = volume_name
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "accessModes", accessor: "access_modes", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "dataSource", accessor: "data_source", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::TypedLocalObjectReference},
      {key: "resources", accessor: "resources", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ResourceRequirements},
      {key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector},
      {key: "storageClassName", accessor: "storage_class_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "volumeMode", accessor: "volume_mode", nilable: true, read_only: false, default: nil, kind: String},
      {key: "volumeName", accessor: "volume_name", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
