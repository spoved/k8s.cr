# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1::StorageClass; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "../../core/v1/topology_selector_term"

module K8S
  # Namespace holding the types for `Api::Storage::V1::StorageClass`.
  module Types::Api::Storage::V1::StorageClass
    alias ValueType = String | ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta | ::Bool | ::Array(::K8S::Api::Core::V1::TopologySelectorTerm) | ::Array(String) | ::Hash(String, String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    abstract def api_version : String
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    abstract def kind : String
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
    abstract def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
    # :ditto:
    abstract def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    # AllowVolumeExpansion shows whether the storage class allow volume expand
    abstract def allow_volume_expansion : ::Bool?
    # :ditto:
    abstract def allow_volume_expansion! : ::Bool
    # :ditto:
    abstract def allow_volume_expansion? : ::Bool?
    # :ditto:
    abstract def allow_volume_expansion=(value : ::Bool?)
    # Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
    abstract def allowed_topologies : ::Array(::K8S::Api::Core::V1::TopologySelectorTerm)?
    # :ditto:
    abstract def allowed_topologies! : ::Array(::K8S::Api::Core::V1::TopologySelectorTerm)
    # :ditto:
    abstract def allowed_topologies? : ::Array(::K8S::Api::Core::V1::TopologySelectorTerm)?
    # :ditto:
    abstract def allowed_topologies=(value : ::Array(::K8S::Api::Core::V1::TopologySelectorTerm)?)
    # Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
    abstract def mount_options : ::Array(String)?
    # :ditto:
    abstract def mount_options! : ::Array(String)
    # :ditto:
    abstract def mount_options? : ::Array(String)?
    # :ditto:
    abstract def mount_options=(value : ::Array(String)?)
    # Parameters holds the parameters for the provisioner that should create volumes of this storage class.
    abstract def parameters : ::Hash(String, String)?
    # :ditto:
    abstract def parameters! : ::Hash(String, String)
    # :ditto:
    abstract def parameters? : ::Hash(String, String)?
    # :ditto:
    abstract def parameters=(value : ::Hash(String, String)?)
    # Provisioner indicates the type of the provisioner.
    abstract def provisioner : String
    # :ditto:
    abstract def provisioner! : String
    # :ditto:
    abstract def provisioner? : String?
    # :ditto:
    abstract def provisioner=(value : String)
    # Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
    abstract def reclaim_policy : String?
    # :ditto:
    abstract def reclaim_policy! : String
    # :ditto:
    abstract def reclaim_policy? : String?
    # :ditto:
    abstract def reclaim_policy=(value : String?)
    # VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
    abstract def volume_binding_mode : String?
    # :ditto:
    abstract def volume_binding_mode! : String
    # :ditto:
    abstract def volume_binding_mode? : String?
    # :ditto:
    abstract def volume_binding_mode=(value : String?)
  end

  # StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
  #
  # StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
  @[::K8S::GroupVersionKind(group: "storage.k8s.io", kind: "StorageClass", version: "v1", full: "io.k8s.api.storage.v1.StorageClass")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "storage/v1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "StorageClass", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    allow_volume_expansion: {key: "allowVolumeExpansion", accessor: "allow_volume_expansion", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "AllowVolumeExpansion shows whether the storage class allow volume expand", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    allowed_topologies: {key: "allowedTopologies", accessor: "allowed_topologies", kind: "::Array(::K8S::Api::Core::V1::TopologySelectorTerm)", nilable: true, default: nil, read_only: false, description: "Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    mount_options: {key: "mountOptions", accessor: "mount_options", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. [\"ro\", \"soft\"]. Not validated - mount of the PVs will simply fail if one is invalid.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    parameters: {key: "parameters", accessor: "parameters", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "Parameters holds the parameters for the provisioner that should create volumes of this storage class.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    provisioner: {key: "provisioner", accessor: "provisioner", kind: "String", nilable: false, default: nil, read_only: false, description: "Provisioner indicates the type of the provisioner.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reclaim_policy: {key: "reclaimPolicy", accessor: "reclaim_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_binding_mode: {key: "volumeBindingMode", accessor: "volume_binding_mode", kind: "String", nilable: true, default: nil, read_only: false, description: "VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Storage::V1::StorageClass < ::K8S::Types::Api::Storage::V1::StorageClass::Instance
    include ::K8S::Types::Api::Storage::V1::StorageClass
    include ::K8S::Kubernetes::Resource::Object

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    def api_version : String
      self.["apiVersion"].as(String)
    end

    # :ditto:
    def api_version! : String
      self.["apiVersion"].as(String).not_nil!
    end

    # :ditto:
    def api_version? : String?
      self.["apiVersion"]?.as(String?)
    end

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    def kind : String
      self.["kind"].as(String)
    end

    # :ditto:
    def kind! : String
      self.["kind"].as(String).not_nil!
    end

    # :ditto:
    def kind? : String?
      self.["kind"]?.as(String?)
    end

    # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
    def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    end

    # :ditto:
    def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?).not_nil!
    end

    # :ditto:
    def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
      self.["metadata"]?.as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    end

    # :ditto:
    def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
      self.["metadata"] = value
    end

    # AllowVolumeExpansion shows whether the storage class allow volume expand
    def allow_volume_expansion : ::Bool?
      self.["allowVolumeExpansion"].as(::Bool?)
    end

    # :ditto:
    def allow_volume_expansion! : ::Bool
      self.["allowVolumeExpansion"].as(::Bool?).not_nil!
    end

    # :ditto:
    def allow_volume_expansion? : ::Bool?
      self.["allowVolumeExpansion"]?.as(::Bool?)
    end

    # :ditto:
    def allow_volume_expansion=(value : ::Bool?)
      self.["allowVolumeExpansion"] = value
    end

    # Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
    def allowed_topologies : ::Array(::K8S::Api::Core::V1::TopologySelectorTerm)?
      self.["allowedTopologies"].as(::Array(::K8S::Api::Core::V1::TopologySelectorTerm)?)
    end

    # :ditto:
    def allowed_topologies! : ::Array(::K8S::Api::Core::V1::TopologySelectorTerm)
      self.["allowedTopologies"].as(::Array(::K8S::Api::Core::V1::TopologySelectorTerm)?).not_nil!
    end

    # :ditto:
    def allowed_topologies? : ::Array(::K8S::Api::Core::V1::TopologySelectorTerm)?
      self.["allowedTopologies"]?.as(::Array(::K8S::Api::Core::V1::TopologySelectorTerm)?)
    end

    # :ditto:
    def allowed_topologies=(value : ::Array(::K8S::Api::Core::V1::TopologySelectorTerm)?)
      self.["allowedTopologies"] = value
    end

    # Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
    def mount_options : ::Array(String)?
      self.["mountOptions"].as(::Array(String)?)
    end

    # :ditto:
    def mount_options! : ::Array(String)
      self.["mountOptions"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def mount_options? : ::Array(String)?
      self.["mountOptions"]?.as(::Array(String)?)
    end

    # :ditto:
    def mount_options=(value : ::Array(String)?)
      self.["mountOptions"] = value
    end

    # Parameters holds the parameters for the provisioner that should create volumes of this storage class.
    def parameters : ::Hash(String, String)?
      self.["parameters"].as(::Hash(String, String)?)
    end

    # :ditto:
    def parameters! : ::Hash(String, String)
      self.["parameters"].as(::Hash(String, String)?).not_nil!
    end

    # :ditto:
    def parameters? : ::Hash(String, String)?
      self.["parameters"]?.as(::Hash(String, String)?)
    end

    # :ditto:
    def parameters=(value : ::Hash(String, String)?)
      self.["parameters"] = value
    end

    # Provisioner indicates the type of the provisioner.
    def provisioner : String
      self.["provisioner"].as(String)
    end

    # :ditto:
    def provisioner! : String
      self.["provisioner"].as(String).not_nil!
    end

    # :ditto:
    def provisioner? : String?
      self.["provisioner"]?.as(String?)
    end

    # :ditto:
    def provisioner=(value : String)
      self.["provisioner"] = value
    end

    # Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
    def reclaim_policy : String?
      self.["reclaimPolicy"].as(String?)
    end

    # :ditto:
    def reclaim_policy! : String
      self.["reclaimPolicy"].as(String?).not_nil!
    end

    # :ditto:
    def reclaim_policy? : String?
      self.["reclaimPolicy"]?.as(String?)
    end

    # :ditto:
    def reclaim_policy=(value : String?)
      self.["reclaimPolicy"] = value
    end

    # VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
    def volume_binding_mode : String?
      self.["volumeBindingMode"].as(String?)
    end

    # :ditto:
    def volume_binding_mode! : String
      self.["volumeBindingMode"].as(String?).not_nil!
    end

    # :ditto:
    def volume_binding_mode? : String?
      self.["volumeBindingMode"]?.as(String?)
    end

    # :ditto:
    def volume_binding_mode=(value : String?)
      self.["volumeBindingMode"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "storage/v1", kind: String },
        { key: "kind", accessor: "kind", nilable: false, read_only: true, default: "StorageClass", kind: String },
        { key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta },
        { key: "allowVolumeExpansion", accessor: "allow_volume_expansion", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "allowedTopologies", accessor: "allowed_topologies", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::TopologySelectorTerm) },
        { key: "mountOptions", accessor: "mount_options", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "parameters", accessor: "parameters", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String) },
        { key: "provisioner", accessor: "provisioner", nilable: false, read_only: false, default: nil, kind: String },
        { key: "reclaimPolicy", accessor: "reclaim_policy", nilable: true, read_only: false, default: nil, kind: String },
        { key: "volumeBindingMode", accessor: "volume_binding_mode", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end

  module Resources::Storage::V1
    alias StorageClass = ::K8S::Api::Storage::V1::StorageClass
  end
end
