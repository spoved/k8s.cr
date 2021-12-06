# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered.
  @[::K8S::Properties(
    field: {type: String, nilable: true, key: "field", getter: false, setter: false},
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    reason: {type: String, nilable: true, key: "reason", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::StatusCause
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.
    #
    # Examples:
    #   "name" - the field "name" on the current resource
    #   "items[0].name" - the field "name" on the first array entry in "items"
    @[::JSON::Field(key: "field", emit_null: false)]
    @[::YAML::Field(key: "field", emit_null: false)]
    property field : String | Nil

    # A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
    @[::JSON::Field(key: "message", emit_null: false)]
    @[::YAML::Field(key: "message", emit_null: false)]
    property message : String | Nil

    # A machine-readable description of the cause of the error. If this value is empty there is no information available.
    @[::JSON::Field(key: "reason", emit_null: false)]
    @[::YAML::Field(key: "reason", emit_null: false)]
    property reason : String | Nil

    def initialize(*, @field : String | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
