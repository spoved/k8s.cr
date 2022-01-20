# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apiserverinternal::V1alpha1::StorageVersion; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./storage_version_spec"
require "./storage_version_status"

module K8S
  # Namespace holding the types for `Api::Apiserverinternal::V1alpha1::StorageVersion`.
  module Types::Api::Apiserverinternal::V1alpha1::StorageVersion
    alias ValueType = String | ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta | ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionSpec | ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionStatus | Nil
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
    # Spec is an empty spec. It is here to comply with Kubernetes API style.
    abstract def spec : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionSpec
    # :ditto:
    abstract def spec! : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionSpec
    # :ditto:
    abstract def spec? : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionSpec?
    # :ditto:
    abstract def spec=(value : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionSpec)
    # API server instances report the version they can decode and the version they encode objects to when persisting objects in the backend.
    abstract def status : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionStatus
    # :ditto:
    abstract def status! : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionStatus
    # :ditto:
    abstract def status? : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionStatus?
    # :ditto:
    abstract def status=(value : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionStatus)
  end

  #
  #  Storage version of a specific resource.
  @[::K8S::GroupVersionKind(group: "internal.apiserver.k8s.io", kind: "StorageVersion", version: "v1alpha1", full: "io.k8s.api.apiserverinternal.v1alpha1.StorageVersion")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "apiserverinternal/v1alpha1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "StorageVersion", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    spec: {key: "spec", accessor: "spec", kind: "::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionSpec", nilable: false, default: nil, read_only: false, description: "Spec is an empty spec. It is here to comply with Kubernetes API style.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    status: {key: "status", accessor: "status", kind: "::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionStatus", nilable: false, default: nil, read_only: false, description: "API server instances report the version they can decode and the version they encode objects to when persisting objects in the backend.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apiserverinternal::V1alpha1::StorageVersion < ::K8S::Types::Api::Apiserverinternal::V1alpha1::StorageVersion::Instance
    include ::K8S::Types::Api::Apiserverinternal::V1alpha1::StorageVersion
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

    # Spec is an empty spec. It is here to comply with Kubernetes API style.
    def spec : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionSpec
      self.["spec"].as(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionSpec)
    end

    # :ditto:
    def spec! : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionSpec
      self.["spec"].as(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionSpec).not_nil!
    end

    # :ditto:
    def spec? : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionSpec?
      self.["spec"]?.as(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionSpec?)
    end

    # :ditto:
    def spec=(value : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionSpec)
      self.["spec"] = value
    end

    # API server instances report the version they can decode and the version they encode objects to when persisting objects in the backend.
    def status : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionStatus
      self.["status"].as(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionStatus)
    end

    # :ditto:
    def status! : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionStatus
      self.["status"].as(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionStatus).not_nil!
    end

    # :ditto:
    def status? : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionStatus?
      self.["status"]?.as(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionStatus?)
    end

    # :ditto:
    def status=(value : ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionStatus)
      self.["status"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "apiserverinternal/v1alpha1", kind: String },
        { key: "kind", accessor: "kind", nilable: false, read_only: true, default: "StorageVersion", kind: String },
        { key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta },
        { key: "spec", accessor: "spec", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionSpec },
        { key: "status", accessor: "status", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionStatus },
      ])
end
  end

  module Resources::Apiserverinternal::V1alpha1
    alias StorageVersion = ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersion
  end
end
