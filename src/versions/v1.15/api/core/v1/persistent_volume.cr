# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PersistentVolume; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./persistent_volume_spec"
require "./persistent_volume_status"

module K8S
  # Namespace holding the types for `Api::Core::V1::PersistentVolume`.
  module Types::Api::Core::V1::PersistentVolume
    alias ValueType = String | ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta | ::K8S::Api::Core::V1::PersistentVolumeSpec | ::K8S::Api::Core::V1::PersistentVolumeStatus | Nil
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
    # Spec defines a specification of a persistent volume owned by the cluster. Provisioned by an administrator. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes))
    abstract def spec : ::K8S::Api::Core::V1::PersistentVolumeSpec?
    # :ditto:
    abstract def spec! : ::K8S::Api::Core::V1::PersistentVolumeSpec
    # :ditto:
    abstract def spec? : ::K8S::Api::Core::V1::PersistentVolumeSpec?
    # :ditto:
    abstract def spec=(value : ::K8S::Api::Core::V1::PersistentVolumeSpec?)
    # Status represents the current [[information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes](information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes)]([information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes](information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes))
    abstract def status : ::K8S::Api::Core::V1::PersistentVolumeStatus?
    # :ditto:
    abstract def status! : ::K8S::Api::Core::V1::PersistentVolumeStatus
    # :ditto:
    abstract def status? : ::K8S::Api::Core::V1::PersistentVolumeStatus?
    # :ditto:
    abstract def status=(value : ::K8S::Api::Core::V1::PersistentVolumeStatus?)
  end

  # PersistentVolume (PV) is a storage resource provisioned by an administrator. It is analogous to a node. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes)
  @[::K8S::GroupVersionKind(group: "", kind: "PersistentVolume", version: "v1", full: "io.k8s.api.core.v1.PersistentVolume")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "v1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))"},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "PersistentVolume", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))"},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))"},
    spec: {key: "spec", accessor: "spec", kind: "::K8S::Api::Core::V1::PersistentVolumeSpec", nilable: true, default: nil, read_only: false, description: "Spec defines a specification of a persistent volume owned by the cluster. Provisioned by an administrator. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes)"},
    status: {key: "status", accessor: "status", kind: "::K8S::Api::Core::V1::PersistentVolumeStatus", nilable: true, default: nil, read_only: false, description: "Status represents the current [information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes](information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes)"},
  )]
  class Api::Core::V1::PersistentVolume < ::K8S::Types::Api::Core::V1::PersistentVolume::Instance
    include ::K8S::Types::Api::Core::V1::PersistentVolume
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

    # Spec defines a specification of a persistent volume owned by the cluster. Provisioned by an administrator. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes))
    def spec : ::K8S::Api::Core::V1::PersistentVolumeSpec?
      self.["spec"].as(::K8S::Api::Core::V1::PersistentVolumeSpec?)
    end

    # :ditto:
    def spec! : ::K8S::Api::Core::V1::PersistentVolumeSpec
      self.["spec"].as(::K8S::Api::Core::V1::PersistentVolumeSpec?).not_nil!
    end

    # :ditto:
    def spec? : ::K8S::Api::Core::V1::PersistentVolumeSpec?
      self.["spec"]?.as(::K8S::Api::Core::V1::PersistentVolumeSpec?)
    end

    # :ditto:
    def spec=(value : ::K8S::Api::Core::V1::PersistentVolumeSpec?)
      self.["spec"] = value
    end

    # Status represents the current [[information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes](information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes)]([information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes](information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes))
    def status : ::K8S::Api::Core::V1::PersistentVolumeStatus?
      self.["status"].as(::K8S::Api::Core::V1::PersistentVolumeStatus?)
    end

    # :ditto:
    def status! : ::K8S::Api::Core::V1::PersistentVolumeStatus
      self.["status"].as(::K8S::Api::Core::V1::PersistentVolumeStatus?).not_nil!
    end

    # :ditto:
    def status? : ::K8S::Api::Core::V1::PersistentVolumeStatus?
      self.["status"]?.as(::K8S::Api::Core::V1::PersistentVolumeStatus?)
    end

    # :ditto:
    def status=(value : ::K8S::Api::Core::V1::PersistentVolumeStatus?)
      self.["status"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "v1", kind: String },
        { key: "kind", accessor: "kind", nilable: false, read_only: true, default: "PersistentVolume", kind: String },
        { key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta },
        { key: "spec", accessor: "spec", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PersistentVolumeSpec },
        { key: "status", accessor: "status", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PersistentVolumeStatus },
      ])
end
  end

  module Resources::V1
    alias PersistentVolume = ::K8S::Api::Core::V1::PersistentVolume
  end
end
