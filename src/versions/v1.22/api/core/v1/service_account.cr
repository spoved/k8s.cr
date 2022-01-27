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
    # AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted. Can be overridden at the pod level.
    abstract def automount_service_account_token : ::Bool?
    # :ditto:
    abstract def automount_service_account_token! : ::Bool
    # :ditto:
    abstract def automount_service_account_token? : ::Bool?
    # :ditto:
    abstract def automount_service_account_token=(value : ::Bool)
    # ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: [[https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod)](https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod))
    abstract def image_pull_secrets : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?
    # :ditto:
    abstract def image_pull_secrets! : ::Array(::K8S::Api::Core::V1::LocalObjectReference)
    # :ditto:
    abstract def image_pull_secrets? : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?
    # :ditto:
    abstract def image_pull_secrets=(value : ::Array(::K8S::Api::Core::V1::LocalObjectReference))
    # Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount. More info: [[https://kubernetes.io/docs/concepts/configuration/secret](https://kubernetes.io/docs/concepts/configuration/secret)](https://kubernetes.io/docs/concepts/configuration/secret](https://kubernetes.io/docs/concepts/configuration/secret))
    abstract def secrets : ::Array(::K8S::Api::Core::V1::ObjectReference)?
    # :ditto:
    abstract def secrets! : ::Array(::K8S::Api::Core::V1::ObjectReference)
    # :ditto:
    abstract def secrets? : ::Array(::K8S::Api::Core::V1::ObjectReference)?
    # :ditto:
    abstract def secrets=(value : ::Array(::K8S::Api::Core::V1::ObjectReference))
  end

  # ServiceAccount binds together: * a name, understood by users, and perhaps by peripheral systems, for an identity * a principal that can be authenticated and authorized * a set of secrets
  @[::K8S::GroupVersionKind(group: "", kind: "ServiceAccount", version: "v1", full: "io.k8s.api.core.v1.ServiceAccount")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "v1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "ServiceAccount", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    automount_service_account_token: {key: "automountServiceAccountToken", accessor: "automount_service_account_token", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted. Can be overridden at the pod level.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    image_pull_secrets: {key: "imagePullSecrets", accessor: "image_pull_secrets", kind: "::Array(::K8S::Api::Core::V1::LocalObjectReference)", nilable: true, default: nil, read_only: false, description: "ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: [https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    secrets: {key: "secrets", accessor: "secrets", kind: "::Array(::K8S::Api::Core::V1::ObjectReference)", nilable: true, default: nil, read_only: false, description: "Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount. More info: [https://kubernetes.io/docs/concepts/configuration/secret](https://kubernetes.io/docs/concepts/configuration/secret)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ServiceAccount < ::K8S::Kubernetes::Resource::Object
    include ::K8S::Types::Api::Core::V1::ServiceAccount
    k8s_object_accessor("apiVersion", api_version : String = "v1", false, true, "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))")
    k8s_object_accessor("kind", kind : String = "ServiceAccount", false, true, "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))")
    k8s_object_accessor("metadata", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta, true, false, "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))")
    k8s_object_accessor("automountServiceAccountToken", automount_service_account_token : ::Bool, true, false, "AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted. Can be overridden at the pod level.")
    k8s_object_accessor("imagePullSecrets", image_pull_secrets : ::Array(::K8S::Api::Core::V1::LocalObjectReference), true, false, "ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: [https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod)")
    k8s_object_accessor("secrets", secrets : ::Array(::K8S::Api::Core::V1::ObjectReference), true, false, "Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount. More info: [https://kubernetes.io/docs/concepts/configuration/secret](https://kubernetes.io/docs/concepts/configuration/secret)")

    def initialize(*, api_version : String? = "v1", kind : String? = "ServiceAccount", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta? = nil, automount_service_account_token : ::Bool? = nil, image_pull_secrets : ::Array(::K8S::Api::Core::V1::LocalObjectReference)? = nil, secrets : ::Array(::K8S::Api::Core::V1::ObjectReference)? = nil)
      super()
      raise "api_version cannot be nil" if api_version.nil?
      self.["apiVersion"] = api_version
      raise "kind cannot be nil" if kind.nil?
      self.["kind"] = kind
      self.["metadata"] = metadata
      self.["automountServiceAccountToken"] = automount_service_account_token
      self.["imagePullSecrets"] = image_pull_secrets
      self.["secrets"] = secrets
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "v1", kind: String},
      {key: "kind", accessor: "kind", nilable: false, read_only: true, default: "ServiceAccount", kind: String},
      {key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta},
      {key: "automountServiceAccountToken", accessor: "automount_service_account_token", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "imagePullSecrets", accessor: "image_pull_secrets", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::LocalObjectReference)},
      {key: "secrets", accessor: "secrets", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ObjectReference)},
    ])
  end

  module Resources::V1
    alias ServiceAccount = ::K8S::Api::Core::V1::ServiceAccount
  end
end
