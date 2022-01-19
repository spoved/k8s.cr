# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::Status; end

require "./status_details"
require "./list_meta"

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::Status`.
  module Types::Apimachinery::Apis::Meta::V1::Status
    alias ValueType = String | Int32 | ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails | ::K8S::Apimachinery::Apis::Meta::V1::ListMeta | Nil
    alias Instance = ::K8S::Object(ValueType)

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # :ditto:
    abstract def api_version=(value : String?)
    # Suggested HTTP return code for this status, 0 if not set.
    abstract def code : Int32?
    # :ditto:
    abstract def code! : Int32
    # :ditto:
    abstract def code? : Int32?
    # :ditto:
    abstract def code=(value : Int32?)
    # Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
    abstract def details : ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails?
    # :ditto:
    abstract def details! : ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails
    # :ditto:
    abstract def details? : ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails?
    # :ditto:
    abstract def details=(value : ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails?)
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String?)
    # A human-readable description of the status of this operation.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String?)
    # Standard list metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))
    abstract def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?
    # :ditto:
    abstract def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta
    # :ditto:
    abstract def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?
    # :ditto:
    abstract def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?)
    # A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String?)
    # Status of the operation. One of: "Success" or "Failure". More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status))
    abstract def status : String?
    # :ditto:
    abstract def status! : String
    # :ditto:
    abstract def status? : String?
    # :ditto:
    abstract def status=(value : String?)
  end

  # Status is a return value for calls that don't return other objects.
  @[::K8S::GroupVersionKind(group: "", kind: "Status", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.Status")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: true, default: nil, read_only: false, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)"},
    code: {key: "code", accessor: "code", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Suggested HTTP return code for this status, 0 if not set."},
    details: {key: "details", accessor: "details", kind: "::K8S::Apimachinery::Apis::Meta::V1::StatusDetails", nilable: true, default: nil, read_only: false, description: "Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type."},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: true, default: nil, read_only: false, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)"},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "A human-readable description of the status of this operation."},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ListMeta", nilable: true, default: nil, read_only: false, description: "Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)"},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "A machine-readable description of why this operation is in the \"Failure\" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it."},
    status: {key: "status", accessor: "status", kind: "String", nilable: true, default: nil, read_only: false, description: "Status of the operation. One of: \"Success\" or \"Failure\". More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},
  )]
  class Apimachinery::Apis::Meta::V1::Status < ::K8S::Types::Apimachinery::Apis::Meta::V1::Status::Instance
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::Status
    include ::K8S::Kubernetes::Object

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))
    def api_version : String?
      self.["apiVersion"].as(String?)
    end

    # :ditto:
    def api_version! : String
      self.["apiVersion"].as(String?).not_nil!
    end

    # :ditto:
    def api_version? : String?
      self.["apiVersion"]?.as(String?)
    end

    # :ditto:
    def api_version=(value : String?)
      self.["apiVersion"] = value
    end

    # Suggested HTTP return code for this status, 0 if not set.
    def code : Int32?
      self.["code"].as(Int32?)
    end

    # :ditto:
    def code! : Int32
      self.["code"].as(Int32?).not_nil!
    end

    # :ditto:
    def code? : Int32?
      self.["code"]?.as(Int32?)
    end

    # :ditto:
    def code=(value : Int32?)
      self.["code"] = value
    end

    # Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
    def details : ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails?
      self.["details"].as(::K8S::Apimachinery::Apis::Meta::V1::StatusDetails?)
    end

    # :ditto:
    def details! : ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails
      self.["details"].as(::K8S::Apimachinery::Apis::Meta::V1::StatusDetails?).not_nil!
    end

    # :ditto:
    def details? : ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails?
      self.["details"]?.as(::K8S::Apimachinery::Apis::Meta::V1::StatusDetails?)
    end

    # :ditto:
    def details=(value : ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails?)
      self.["details"] = value
    end

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))
    def kind : String?
      self.["kind"].as(String?)
    end

    # :ditto:
    def kind! : String
      self.["kind"].as(String?).not_nil!
    end

    # :ditto:
    def kind? : String?
      self.["kind"]?.as(String?)
    end

    # :ditto:
    def kind=(value : String?)
      self.["kind"] = value
    end

    # A human-readable description of the status of this operation.
    def message : String?
      self.["message"].as(String?)
    end

    # :ditto:
    def message! : String
      self.["message"].as(String?).not_nil!
    end

    # :ditto:
    def message? : String?
      self.["message"]?.as(String?)
    end

    # :ditto:
    def message=(value : String?)
      self.["message"] = value
    end

    # Standard list metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))
    def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ListMeta?)
    end

    # :ditto:
    def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ListMeta?).not_nil!
    end

    # :ditto:
    def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?
      self.["metadata"]?.as(::K8S::Apimachinery::Apis::Meta::V1::ListMeta?)
    end

    # :ditto:
    def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?)
      self.["metadata"] = value
    end

    # A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
    def reason : String?
      self.["reason"].as(String?)
    end

    # :ditto:
    def reason! : String
      self.["reason"].as(String?).not_nil!
    end

    # :ditto:
    def reason? : String?
      self.["reason"]?.as(String?)
    end

    # :ditto:
    def reason=(value : String?)
      self.["reason"] = value
    end

    # Status of the operation. One of: "Success" or "Failure". More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status))
    def status : String?
      self.["status"].as(String?)
    end

    # :ditto:
    def status! : String
      self.["status"].as(String?).not_nil!
    end

    # :ditto:
    def status? : String?
      self.["status"]?.as(String?)
    end

    # :ditto:
    def status=(value : String?)
      self.["status"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: true, read_only: false, default: nil, kind: String },
        { key: "code", accessor: "code", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "details", accessor: "details", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails },
        { key: "kind", accessor: "kind", nilable: true, read_only: false, default: nil, kind: String },
        { key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String },
        { key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ListMeta },
        { key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String },
        { key: "status", accessor: "status", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
