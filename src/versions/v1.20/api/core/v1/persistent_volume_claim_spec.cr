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
    alias ValueType = ::Array(String) | ::K8S::Api::Core::V1::TypedLocalObjectReference | ::K8S::Api::Core::V1::ResourceRequirements | ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # AccessModes contains the desired access modes the volume should have. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1))
    abstract def access_modes : ::Array(String)?
    # :ditto:
    abstract def access_modes! : ::Array(String)
    # :ditto:
    abstract def access_modes? : ::Array(String)?
    # :ditto:
    abstract def access_modes=(value : ::Array(String)?)
    # This field can be used to specify either: * An existing VolumeSnapshot object [[(snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) * An existing custom resource that implements data population (Alpha) In order to use custom resource types that implement data population, the AnyVolumeDataSource feature gate must be enabled. If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source.]((snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) * An existing custom resource that implements data population (Alpha) In order to use custom resource types that implement data population, the AnyVolumeDataSource feature gate must be enabled. If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source.)]([(snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) * An existing custom resource that implements data population (Alpha) In order to use custom resource types that implement data population, the AnyVolumeDataSource feature gate must be enabled. If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source.]((snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) * An existing custom resource that implements data population (Alpha) In order to use custom resource types that implement data population, the AnyVolumeDataSource feature gate must be enabled. If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source.))
    abstract def data_source : ::K8S::Api::Core::V1::TypedLocalObjectReference?
    # :ditto:
    abstract def data_source! : ::K8S::Api::Core::V1::TypedLocalObjectReference
    # :ditto:
    abstract def data_source? : ::K8S::Api::Core::V1::TypedLocalObjectReference?
    # :ditto:
    abstract def data_source=(value : ::K8S::Api::Core::V1::TypedLocalObjectReference?)
    # Resources represents the minimum resources the volume should have. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources))
    abstract def resources : ::K8S::Api::Core::V1::ResourceRequirements?
    # :ditto:
    abstract def resources! : ::K8S::Api::Core::V1::ResourceRequirements
    # :ditto:
    abstract def resources? : ::K8S::Api::Core::V1::ResourceRequirements?
    # :ditto:
    abstract def resources=(value : ::K8S::Api::Core::V1::ResourceRequirements?)
    # A label query over volumes to consider for binding.
    abstract def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    # Name of the StorageClass required by the claim. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1))
    abstract def storage_class_name : String?
    # :ditto:
    abstract def storage_class_name! : String
    # :ditto:
    abstract def storage_class_name? : String?
    # :ditto:
    abstract def storage_class_name=(value : String?)
    # volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
    abstract def volume_mode : String?
    # :ditto:
    abstract def volume_mode! : String
    # :ditto:
    abstract def volume_mode? : String?
    # :ditto:
    abstract def volume_mode=(value : String?)
    # VolumeName is the binding reference to the PersistentVolume backing this claim.
    abstract def volume_name : String?
    # :ditto:
    abstract def volume_name! : String
    # :ditto:
    abstract def volume_name? : String?
    # :ditto:
    abstract def volume_name=(value : String?)
  end

  # PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
  @[::K8S::Properties(
    access_modes: {key: "accessModes", accessor: "access_modes", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "AccessModes contains the desired access modes the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    data_source: {key: "dataSource", accessor: "data_source", kind: "::K8S::Api::Core::V1::TypedLocalObjectReference", nilable: true, default: nil, read_only: false, description: "This field can be used to specify either: * An existing VolumeSnapshot object [(snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) * An existing custom resource that implements data population (Alpha) In order to use custom resource types that implement data population, the AnyVolumeDataSource feature gate must be enabled. If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source.]((snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) * An existing custom resource that implements data population (Alpha) In order to use custom resource types that implement data population, the AnyVolumeDataSource feature gate must be enabled. If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resources: {key: "resources", accessor: "resources", kind: "::K8S::Api::Core::V1::ResourceRequirements", nilable: true, default: nil, read_only: false, description: "Resources represents the minimum resources the volume should have. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "A label query over volumes to consider for binding.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    storage_class_name: {key: "storageClassName", accessor: "storage_class_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name of the StorageClass required by the claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_mode: {key: "volumeMode", accessor: "volume_mode", kind: "String", nilable: true, default: nil, read_only: false, description: "volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_name: {key: "volumeName", accessor: "volume_name", kind: "String", nilable: true, default: nil, read_only: false, description: "VolumeName is the binding reference to the PersistentVolume backing this claim.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PersistentVolumeClaimSpec < ::K8S::Types::Api::Core::V1::PersistentVolumeClaimSpec::Instance
    include ::K8S::Types::Api::Core::V1::PersistentVolumeClaimSpec
    include ::K8S::Kubernetes::Object

    # AccessModes contains the desired access modes the volume should have. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1))
    def access_modes : ::Array(String)?
      self.["accessModes"].as(::Array(String)?)
    end

    # :ditto:
    def access_modes! : ::Array(String)
      self.["accessModes"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def access_modes? : ::Array(String)?
      self.["accessModes"]?.as(::Array(String)?)
    end

    # :ditto:
    def access_modes=(value : ::Array(String)?)
      self.["accessModes"] = value
    end

    # This field can be used to specify either: * An existing VolumeSnapshot object [[(snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) * An existing custom resource that implements data population (Alpha) In order to use custom resource types that implement data population, the AnyVolumeDataSource feature gate must be enabled. If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source.]((snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) * An existing custom resource that implements data population (Alpha) In order to use custom resource types that implement data population, the AnyVolumeDataSource feature gate must be enabled. If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source.)]([(snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) * An existing custom resource that implements data population (Alpha) In order to use custom resource types that implement data population, the AnyVolumeDataSource feature gate must be enabled. If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source.]((snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) * An existing custom resource that implements data population (Alpha) In order to use custom resource types that implement data population, the AnyVolumeDataSource feature gate must be enabled. If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source.))
    def data_source : ::K8S::Api::Core::V1::TypedLocalObjectReference?
      self.["dataSource"].as(::K8S::Api::Core::V1::TypedLocalObjectReference?)
    end

    # :ditto:
    def data_source! : ::K8S::Api::Core::V1::TypedLocalObjectReference
      self.["dataSource"].as(::K8S::Api::Core::V1::TypedLocalObjectReference?).not_nil!
    end

    # :ditto:
    def data_source? : ::K8S::Api::Core::V1::TypedLocalObjectReference?
      self.["dataSource"]?.as(::K8S::Api::Core::V1::TypedLocalObjectReference?)
    end

    # :ditto:
    def data_source=(value : ::K8S::Api::Core::V1::TypedLocalObjectReference?)
      self.["dataSource"] = value
    end

    # Resources represents the minimum resources the volume should have. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources))
    def resources : ::K8S::Api::Core::V1::ResourceRequirements?
      self.["resources"].as(::K8S::Api::Core::V1::ResourceRequirements?)
    end

    # :ditto:
    def resources! : ::K8S::Api::Core::V1::ResourceRequirements
      self.["resources"].as(::K8S::Api::Core::V1::ResourceRequirements?).not_nil!
    end

    # :ditto:
    def resources? : ::K8S::Api::Core::V1::ResourceRequirements?
      self.["resources"]?.as(::K8S::Api::Core::V1::ResourceRequirements?)
    end

    # :ditto:
    def resources=(value : ::K8S::Api::Core::V1::ResourceRequirements?)
      self.["resources"] = value
    end

    # A label query over volumes to consider for binding.
    def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["selector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["selector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?).not_nil!
    end

    # :ditto:
    def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["selector"]?.as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
      self.["selector"] = value
    end

    # Name of the StorageClass required by the claim. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1))
    def storage_class_name : String?
      self.["storageClassName"].as(String?)
    end

    # :ditto:
    def storage_class_name! : String
      self.["storageClassName"].as(String?).not_nil!
    end

    # :ditto:
    def storage_class_name? : String?
      self.["storageClassName"]?.as(String?)
    end

    # :ditto:
    def storage_class_name=(value : String?)
      self.["storageClassName"] = value
    end

    # volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
    def volume_mode : String?
      self.["volumeMode"].as(String?)
    end

    # :ditto:
    def volume_mode! : String
      self.["volumeMode"].as(String?).not_nil!
    end

    # :ditto:
    def volume_mode? : String?
      self.["volumeMode"]?.as(String?)
    end

    # :ditto:
    def volume_mode=(value : String?)
      self.["volumeMode"] = value
    end

    # VolumeName is the binding reference to the PersistentVolume backing this claim.
    def volume_name : String?
      self.["volumeName"].as(String?)
    end

    # :ditto:
    def volume_name! : String
      self.["volumeName"].as(String?).not_nil!
    end

    # :ditto:
    def volume_name? : String?
      self.["volumeName"]?.as(String?)
    end

    # :ditto:
    def volume_name=(value : String?)
      self.["volumeName"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "accessModes", accessor: "access_modes", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "dataSource", accessor: "data_source", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::TypedLocalObjectReference },
        { key: "resources", accessor: "resources", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ResourceRequirements },
        { key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
        { key: "storageClassName", accessor: "storage_class_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "volumeMode", accessor: "volume_mode", nilable: true, read_only: false, default: nil, kind: String },
        { key: "volumeName", accessor: "volume_name", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
