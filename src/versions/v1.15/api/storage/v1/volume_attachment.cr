# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1::VolumeAttachment; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./volume_attachment_spec"
require "./volume_attachment_status"

module K8S
  # Namespace holding the types for `Api::Storage::V1::VolumeAttachment`.
  module Types::Api::Storage::V1::VolumeAttachment
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
    # Specification of the desired [[attach/detach volume behavior. Populated by the Kubernetes system.](attach/detach volume behavior. Populated by the Kubernetes system.)]([attach/detach volume behavior. Populated by the Kubernetes system.](attach/detach volume behavior. Populated by the Kubernetes system.))
    abstract def spec : ::K8S::Api::Storage::V1::VolumeAttachmentSpec?
    # :ditto:
    abstract def spec! : ::K8S::Api::Storage::V1::VolumeAttachmentSpec
    # :ditto:
    abstract def spec? : ::K8S::Api::Storage::V1::VolumeAttachmentSpec?
    # :ditto:
    abstract def spec=(value : ::K8S::Api::Storage::V1::VolumeAttachmentSpec)
    # Status of the VolumeAttachment request. Populated by the entity completing the attach or detach operation, i.e. the external-attacher.
    abstract def status : ::K8S::Api::Storage::V1::VolumeAttachmentStatus?
    # :ditto:
    abstract def status! : ::K8S::Api::Storage::V1::VolumeAttachmentStatus
    # :ditto:
    abstract def status? : ::K8S::Api::Storage::V1::VolumeAttachmentStatus?
    # :ditto:
    abstract def status=(value : ::K8S::Api::Storage::V1::VolumeAttachmentStatus)
  end

  # VolumeAttachment captures the intent to attach or detach the specified volume [to/from the specified node.](to/from the specified node.)
  #
  # VolumeAttachment objects are non-namespaced.
  @[::K8S::GroupVersionKind(group: "storage.k8s.io", kind: "VolumeAttachment", version: "v1", full: "io.k8s.api.storage.v1.VolumeAttachment")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "storage/v1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "VolumeAttachment", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    spec: {key: "spec", accessor: "spec", kind: "::K8S::Api::Storage::V1::VolumeAttachmentSpec", nilable: false, default: nil, read_only: false, description: "Specification of the desired [attach/detach volume behavior. Populated by the Kubernetes system.](attach/detach volume behavior. Populated by the Kubernetes system.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    status: {key: "status", accessor: "status", kind: "::K8S::Api::Storage::V1::VolumeAttachmentStatus", nilable: true, default: nil, read_only: false, description: "Status of the VolumeAttachment request. Populated by the entity completing the attach or detach operation, i.e. the external-attacher.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Storage::V1::VolumeAttachment < ::K8S::Kubernetes::Resource::Object
    include ::K8S::Types::Api::Storage::V1::VolumeAttachment
    k8s_object_accessor("apiVersion", api_version : String = "storage/v1", false, true, "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))")
    k8s_object_accessor("kind", kind : String = "VolumeAttachment", false, true, "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))")
    k8s_object_accessor("metadata", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta, true, false, "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))")
    k8s_object_accessor("spec", spec : ::K8S::Api::Storage::V1::VolumeAttachmentSpec, false, false, "Specification of the desired [attach/detach volume behavior. Populated by the Kubernetes system.](attach/detach volume behavior. Populated by the Kubernetes system.)")
    k8s_object_accessor("status", status : ::K8S::Api::Storage::V1::VolumeAttachmentStatus, true, false, "Status of the VolumeAttachment request. Populated by the entity completing the attach or detach operation, i.e. the external-attacher.")

    def initialize(*, api_version : String? = "storage/v1", kind : String? = "VolumeAttachment", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta? = nil, spec : ::K8S::Api::Storage::V1::VolumeAttachmentSpec? = nil, status : ::K8S::Api::Storage::V1::VolumeAttachmentStatus? = nil)
      super()
      raise "api_version cannot be nil" if api_version.nil?
      self.["apiVersion"] = api_version
      raise "kind cannot be nil" if kind.nil?
      self.["kind"] = kind
      self.["metadata"] = metadata
      self.["spec"] = spec
      self.["status"] = status
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "storage/v1", kind: String},
      {key: "kind", accessor: "kind", nilable: false, read_only: true, default: "VolumeAttachment", kind: String},
      {key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta},
      {key: "spec", accessor: "spec", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Storage::V1::VolumeAttachmentSpec},
      {key: "status", accessor: "status", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Storage::V1::VolumeAttachmentStatus},
    ])
  end

  module Resources::Storage::V1
    alias VolumeAttachment = ::K8S::Api::Storage::V1::VolumeAttachment
  end
end
