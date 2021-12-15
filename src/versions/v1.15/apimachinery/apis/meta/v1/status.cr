# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Status is a return value for calls that don't return other objects.
  @[::K8S::GroupVersionKind(group: "", kind: "Status", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.Status")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    code: {type: Int32, nilable: true, key: "code", getter: false, setter: false},
    details: {type: Apimachinery::Apis::Meta::V1::StatusDetails, nilable: true, key: "details", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    metadata: {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
    reason: {type: String, nilable: true, key: "reason", getter: false, setter: false},
    status: {type: String, nilable: true, key: "status", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::Status
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/api-conventions.md#resources)
    @[::JSON::Field(key: "apiVersion", emit_null: false)]
    @[::YAML::Field(key: "apiVersion", emit_null: false)]
    property api_version : String | Nil

    # Suggested HTTP return code for this status, 0 if not set.
    @[::JSON::Field(key: "code", emit_null: false)]
    @[::YAML::Field(key: "code", emit_null: false)]
    property code : Int32 | Nil

    # Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
    @[::JSON::Field(key: "details", emit_null: false)]
    @[::YAML::Field(key: "details", emit_null: false)]
    property details : Apimachinery::Apis::Meta::V1::StatusDetails | Nil

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)
    @[::JSON::Field(key: "kind", emit_null: false)]
    @[::YAML::Field(key: "kind", emit_null: false)]
    property kind : String | Nil

    # A human-readable description of the status of this operation.
    @[::JSON::Field(key: "message", emit_null: false)]
    @[::YAML::Field(key: "message", emit_null: false)]
    property message : String | Nil

    # Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)
    @[::JSON::Field(key: "metadata", emit_null: false)]
    @[::YAML::Field(key: "metadata", emit_null: false)]
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    # A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
    @[::JSON::Field(key: "reason", emit_null: false)]
    @[::YAML::Field(key: "reason", emit_null: false)]
    property reason : String | Nil

    # Status of the operation. One of: "Success" or "Failure". More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "status", emit_null: false)]
    @[::YAML::Field(key: "status", emit_null: false)]
    property status : String | Nil

    def initialize(*, @api_version : String | Nil = nil, @code : Int32 | Nil = nil, @details : Apimachinery::Apis::Meta::V1::StatusDetails | Nil = nil, @kind : String | Nil = nil, @message : String | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil, @reason : String | Nil = nil, @status : String | Nil = nil)
    end
  end
end
