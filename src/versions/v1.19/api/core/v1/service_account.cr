# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ServiceAccount; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./local_object_reference"
require "./object_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::ServiceAccount`.
  module Types::Api::Core::V1::ServiceAccount
    alias ValueType = String | ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta | ::Bool | ::Array(::K8S::Api::Core::V1::LocalObjectReference) | ::Array(::K8S::Api::Core::V1::ObjectReference) | Nil
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
    # AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted. Can be overridden at the pod level.
    abstract def automount_service_account_token : ::Bool?
    # :ditto:
    abstract def automount_service_account_token! : ::Bool
    # :ditto:
    abstract def automount_service_account_token? : ::Bool?
    # :ditto:
    abstract def automount_service_account_token=(value : ::Bool?)
    # ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: [[https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod)](https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod))
    abstract def image_pull_secrets : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?
    # :ditto:
    abstract def image_pull_secrets! : ::Array(::K8S::Api::Core::V1::LocalObjectReference)
    # :ditto:
    abstract def image_pull_secrets? : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?
    # :ditto:
    abstract def image_pull_secrets=(value : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?)
    # Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount. More info: [[https://kubernetes.io/docs/concepts/configuration/secret](https://kubernetes.io/docs/concepts/configuration/secret)](https://kubernetes.io/docs/concepts/configuration/secret](https://kubernetes.io/docs/concepts/configuration/secret))
    abstract def secrets : ::Array(::K8S::Api::Core::V1::ObjectReference)?
    # :ditto:
    abstract def secrets! : ::Array(::K8S::Api::Core::V1::ObjectReference)
    # :ditto:
    abstract def secrets? : ::Array(::K8S::Api::Core::V1::ObjectReference)?
    # :ditto:
    abstract def secrets=(value : ::Array(::K8S::Api::Core::V1::ObjectReference)?)
  end

  # ServiceAccount binds together: * a name, understood by users, and perhaps by peripheral systems, for an identity * a principal that can be authenticated and authorized * a set of secrets
  @[::K8S::GroupVersionKind(group: "", kind: "ServiceAccount", version: "v1", full: "io.k8s.api.core.v1.ServiceAccount")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "v1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))"},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "ServiceAccount", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))"},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))"},
    automount_service_account_token: {key: "automountServiceAccountToken", accessor: "automount_service_account_token", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted. Can be overridden at the pod level."},
    image_pull_secrets: {key: "imagePullSecrets", accessor: "image_pull_secrets", kind: "::Array(::K8S::Api::Core::V1::LocalObjectReference)", nilable: true, default: nil, read_only: false, description: "ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: [https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod)"},
    secrets: {key: "secrets", accessor: "secrets", kind: "::Array(::K8S::Api::Core::V1::ObjectReference)", nilable: true, default: nil, read_only: false, description: "Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount. More info: [https://kubernetes.io/docs/concepts/configuration/secret](https://kubernetes.io/docs/concepts/configuration/secret)"},
  )]
  class Api::Core::V1::ServiceAccount < ::K8S::Types::Api::Core::V1::ServiceAccount::Instance
    include ::K8S::Types::Api::Core::V1::ServiceAccount
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

    # AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted. Can be overridden at the pod level.
    def automount_service_account_token : ::Bool?
      self.["automountServiceAccountToken"].as(::Bool?)
    end

    # :ditto:
    def automount_service_account_token! : ::Bool
      self.["automountServiceAccountToken"].as(::Bool?).not_nil!
    end

    # :ditto:
    def automount_service_account_token? : ::Bool?
      self.["automountServiceAccountToken"]?.as(::Bool?)
    end

    # :ditto:
    def automount_service_account_token=(value : ::Bool?)
      self.["automountServiceAccountToken"] = value
    end

    # ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: [[https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod)](https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod))
    def image_pull_secrets : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?
      self.["imagePullSecrets"].as(::Array(::K8S::Api::Core::V1::LocalObjectReference)?)
    end

    # :ditto:
    def image_pull_secrets! : ::Array(::K8S::Api::Core::V1::LocalObjectReference)
      self.["imagePullSecrets"].as(::Array(::K8S::Api::Core::V1::LocalObjectReference)?).not_nil!
    end

    # :ditto:
    def image_pull_secrets? : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?
      self.["imagePullSecrets"]?.as(::Array(::K8S::Api::Core::V1::LocalObjectReference)?)
    end

    # :ditto:
    def image_pull_secrets=(value : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?)
      self.["imagePullSecrets"] = value
    end

    # Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount. More info: [[https://kubernetes.io/docs/concepts/configuration/secret](https://kubernetes.io/docs/concepts/configuration/secret)](https://kubernetes.io/docs/concepts/configuration/secret](https://kubernetes.io/docs/concepts/configuration/secret))
    def secrets : ::Array(::K8S::Api::Core::V1::ObjectReference)?
      self.["secrets"].as(::Array(::K8S::Api::Core::V1::ObjectReference)?)
    end

    # :ditto:
    def secrets! : ::Array(::K8S::Api::Core::V1::ObjectReference)
      self.["secrets"].as(::Array(::K8S::Api::Core::V1::ObjectReference)?).not_nil!
    end

    # :ditto:
    def secrets? : ::Array(::K8S::Api::Core::V1::ObjectReference)?
      self.["secrets"]?.as(::Array(::K8S::Api::Core::V1::ObjectReference)?)
    end

    # :ditto:
    def secrets=(value : ::Array(::K8S::Api::Core::V1::ObjectReference)?)
      self.["secrets"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "v1", kind: String },
        { key: "kind", accessor: "kind", nilable: false, read_only: true, default: "ServiceAccount", kind: String },
        { key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta },
        { key: "automountServiceAccountToken", accessor: "automount_service_account_token", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "imagePullSecrets", accessor: "image_pull_secrets", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::LocalObjectReference) },
        { key: "secrets", accessor: "secrets", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ObjectReference) },
      ])
end
  end

  module Resources::V1
    alias ServiceAccount = ::K8S::Api::Core::V1::ServiceAccount
  end
end
