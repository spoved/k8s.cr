# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1::StorageClass; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "../../core/v1/topology_selector_term"

module K8S
  # Namespace holding the types for `Api::Storage::V1::StorageClass`.
  module Types::Api::Storage::V1::StorageClass
    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    abstract def kind : String?
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
    abstract def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta)
    # AllowVolumeExpansion shows whether the storage class allow volume expand
    abstract def allow_volume_expansion : ::Bool?
    # :ditto:
    abstract def allow_volume_expansion! : ::Bool
    # :ditto:
    abstract def allow_volume_expansion? : ::Bool?
    # :ditto:
    abstract def allow_volume_expansion=(value : ::Bool)
    # Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
    abstract def allowed_topologies : ::Array(::K8S::Api::Core::V1::TopologySelectorTerm)?
    # :ditto:
    abstract def allowed_topologies! : ::Array(::K8S::Api::Core::V1::TopologySelectorTerm)
    # :ditto:
    abstract def allowed_topologies? : ::Array(::K8S::Api::Core::V1::TopologySelectorTerm)?
    # :ditto:
    abstract def allowed_topologies=(value : ::Array(::K8S::Api::Core::V1::TopologySelectorTerm))
    # Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
    abstract def mount_options : ::Array(String)?
    # :ditto:
    abstract def mount_options! : ::Array(String)
    # :ditto:
    abstract def mount_options? : ::Array(String)?
    # :ditto:
    abstract def mount_options=(value : ::Array(String))
    # Parameters holds the parameters for the provisioner that should create volumes of this storage class.
    abstract def parameters : ::Hash(String, String)?
    # :ditto:
    abstract def parameters! : ::Hash(String, String)
    # :ditto:
    abstract def parameters? : ::Hash(String, String)?
    # :ditto:
    abstract def parameters=(value : ::Hash(String, String))
    # Provisioner indicates the type of the provisioner.
    abstract def provisioner : String?
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
    abstract def reclaim_policy=(value : String)
    # VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
    abstract def volume_binding_mode : String?
    # :ditto:
    abstract def volume_binding_mode! : String
    # :ditto:
    abstract def volume_binding_mode? : String?
    # :ditto:
    abstract def volume_binding_mode=(value : String)
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
  class Api::Storage::V1::StorageClass < ::K8S::Kubernetes::Resource::Object
    include ::K8S::Types::Api::Storage::V1::StorageClass
    k8s_object_accessor("apiVersion", api_version : String = "storage/v1", false, true, "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))")
    k8s_object_accessor("kind", kind : String = "StorageClass", false, true, "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))")
    k8s_object_accessor("metadata", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta, true, false, "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))")
    k8s_object_accessor("allowVolumeExpansion", allow_volume_expansion : ::Bool, true, false, "AllowVolumeExpansion shows whether the storage class allow volume expand")
    k8s_object_accessor("allowedTopologies", allowed_topologies : ::Array(::K8S::Api::Core::V1::TopologySelectorTerm), true, false, "Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.")
    k8s_object_accessor("mountOptions", mount_options : ::Array(String), true, false, "Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. [\"ro\", \"soft\"]. Not validated - mount of the PVs will simply fail if one is invalid.")
    k8s_object_accessor("parameters", parameters : ::Hash(String, String), true, false, "Parameters holds the parameters for the provisioner that should create volumes of this storage class.")
    k8s_object_accessor("provisioner", provisioner : String, false, false, "Provisioner indicates the type of the provisioner.")
    k8s_object_accessor("reclaimPolicy", reclaim_policy : String, true, false, "Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.")
    k8s_object_accessor("volumeBindingMode", volume_binding_mode : String, true, false, "VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.")

    def initialize(*, api_version : String? = "storage/v1", kind : String? = "StorageClass", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta? = nil, allow_volume_expansion : ::Bool? = nil, allowed_topologies : ::Array(::K8S::Api::Core::V1::TopologySelectorTerm)? = nil, mount_options : ::Array(String)? = nil, parameters : ::Hash(String, String)? = nil, provisioner : String? = nil, reclaim_policy : String? = nil, volume_binding_mode : String? = nil)
      super()
      raise "api_version cannot be nil" if api_version.nil?
      self.["apiVersion"] = api_version
      raise "kind cannot be nil" if kind.nil?
      self.["kind"] = kind
      self.["metadata"] = metadata
      self.["allowVolumeExpansion"] = allow_volume_expansion
      self.["allowedTopologies"] = allowed_topologies
      self.["mountOptions"] = mount_options
      self.["parameters"] = parameters
      self.["provisioner"] = provisioner
      self.["reclaimPolicy"] = reclaim_policy
      self.["volumeBindingMode"] = volume_binding_mode
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "storage/v1", kind: String},
      {key: "kind", accessor: "kind", nilable: false, read_only: true, default: "StorageClass", kind: String},
      {key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta},
      {key: "allowVolumeExpansion", accessor: "allow_volume_expansion", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "allowedTopologies", accessor: "allowed_topologies", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::TopologySelectorTerm)},
      {key: "mountOptions", accessor: "mount_options", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "parameters", accessor: "parameters", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String)},
      {key: "provisioner", accessor: "provisioner", nilable: false, read_only: false, default: nil, kind: String},
      {key: "reclaimPolicy", accessor: "reclaim_policy", nilable: true, read_only: false, default: nil, kind: String},
      {key: "volumeBindingMode", accessor: "volume_binding_mode", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end

  module Resources::Storage::V1
    alias StorageClass = ::K8S::Api::Storage::V1::StorageClass
  end
end
