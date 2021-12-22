# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
  @[::K8S::Properties(
    causes: {type: Array(Apimachinery::Apis::Meta::V1::StatusCause), nilable: true, key: "causes", getter: false, setter: false},
    group: {type: String, nilable: true, key: "group", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    retry_after_seconds: {type: Int32, nilable: true, key: "retryAfterSeconds", getter: false, setter: false},
    uid: {type: String, nilable: true, key: "uid", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::StatusDetails
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
    @[::JSON::Field(key: "causes", emit_null: false)]
    @[::YAML::Field(key: "causes", emit_null: false)]
    property causes : Array(Apimachinery::Apis::Meta::V1::StatusCause) | Nil

    # The group attribute of the resource associated with the status StatusReason.
    @[::JSON::Field(key: "group", emit_null: false)]
    @[::YAML::Field(key: "group", emit_null: false)]
    property group : String | Nil

    # The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)
    @[::JSON::Field(key: "kind", emit_null: false)]
    @[::YAML::Field(key: "kind", emit_null: false)]
    property kind : String | Nil

    # The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
    @[::JSON::Field(key: "name", emit_null: false)]
    @[::YAML::Field(key: "name", emit_null: false)]
    property name : String | Nil

    # If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
    @[::JSON::Field(key: "retryAfterSeconds", emit_null: false)]
    @[::YAML::Field(key: "retryAfterSeconds", emit_null: false)]
    property retry_after_seconds : Int32 | Nil

    # UID of the resource. (when there is a single resource which can be described). More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)
    @[::JSON::Field(key: "uid", emit_null: false)]
    @[::YAML::Field(key: "uid", emit_null: false)]
    property uid : String | Nil

    def initialize(*, @causes : Array(Apimachinery::Apis::Meta::V1::StatusCause) | Nil = nil, @group : String | Nil = nil, @kind : String | Nil = nil, @name : String | Nil = nil, @retry_after_seconds : Int32 | Nil = nil, @uid : String | Nil = nil)
    end
  end
end