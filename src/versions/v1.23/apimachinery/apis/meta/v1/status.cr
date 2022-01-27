# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::Status; end

require "./status_details"
require "./list_meta"

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::Status`.
  module Types::Apimachinery::Apis::Meta::V1::Status
    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # :ditto:
    abstract def api_version=(value : String)
    # Suggested HTTP return code for this status, 0 if not set.
    abstract def code : Int32?
    # :ditto:
    abstract def code! : Int32
    # :ditto:
    abstract def code? : Int32?
    # :ditto:
    abstract def code=(value : Int32)
    # Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
    abstract def details : ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails?
    # :ditto:
    abstract def details! : ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails
    # :ditto:
    abstract def details? : ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails?
    # :ditto:
    abstract def details=(value : ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails)
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String)
    # A human-readable description of the status of this operation.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String)
    # Standard list metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))
    abstract def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?
    # :ditto:
    abstract def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta
    # :ditto:
    abstract def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?
    # :ditto:
    abstract def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta)
    # A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String)
    # Status of the operation. One of: "Success" or "Failure". More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status))
    abstract def status : String?
    # :ditto:
    abstract def status! : String
    # :ditto:
    abstract def status? : String?
    # :ditto:
    abstract def status=(value : String)
  end

  # Status is a return value for calls that don't return other objects.
  @[::K8S::GroupVersionKind(group: "", kind: "Status", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.Status")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: true, default: nil, read_only: false, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    code: {key: "code", accessor: "code", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Suggested HTTP return code for this status, 0 if not set.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    details: {key: "details", accessor: "details", kind: "::K8S::Apimachinery::Apis::Meta::V1::StatusDetails", nilable: true, default: nil, read_only: false, description: "Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: true, default: nil, read_only: false, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "A human-readable description of the status of this operation.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ListMeta", nilable: true, default: nil, read_only: false, description: "Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "A machine-readable description of why this operation is in the \"Failure\" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    status: {key: "status", accessor: "status", kind: "String", nilable: true, default: nil, read_only: false, description: "Status of the operation. One of: \"Success\" or \"Failure\". More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::Status < ::K8S::GenericObject
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::Status
    k8s_object_accessor("apiVersion", api_version : String, true, false, "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)")
    k8s_object_accessor("code", code : Int32, true, false, "Suggested HTTP return code for this status, 0 if not set.")
    k8s_object_accessor("details", details : ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails, true, false, "Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.")
    k8s_object_accessor("kind", kind : String, true, false, "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)")
    k8s_object_accessor("message", message : String, true, false, "A human-readable description of the status of this operation.")
    k8s_object_accessor("metadata", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta, true, false, "Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)")
    k8s_object_accessor("reason", reason : String, true, false, "A machine-readable description of why this operation is in the \"Failure\" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.")
    k8s_object_accessor("status", status : String, true, false, "Status of the operation. One of: \"Success\" or \"Failure\". More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)")

    def initialize(*, api_version : String? = nil, code : Int32? = nil, details : ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails? = nil, kind : String? = nil, message : String? = nil, metadata : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta? = nil, reason : String? = nil, status : String? = nil)
      super()
      self.["apiVersion"] = api_version
      self.["code"] = code
      self.["details"] = details
      self.["kind"] = kind
      self.["message"] = message
      self.["metadata"] = metadata
      self.["reason"] = reason
      self.["status"] = status
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: true, read_only: false, default: nil, kind: String},
      {key: "code", accessor: "code", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "details", accessor: "details", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails},
      {key: "kind", accessor: "kind", nilable: true, read_only: false, default: nil, kind: String},
      {key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String},
      {key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ListMeta},
      {key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String},
      {key: "status", accessor: "status", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
