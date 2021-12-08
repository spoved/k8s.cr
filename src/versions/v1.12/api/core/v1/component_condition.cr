# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Information about the condition of a component.
  @[::K8S::Properties(
    error: {type: String, nilable: true, key: "error", getter: false, setter: false},
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    status: {type: String, nilable: false, key: "status", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Api::Core::V1::ComponentCondition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Condition error code for a component. For example, a health check error code.
    @[::JSON::Field(key: "error", emit_null: false)]
    @[::YAML::Field(key: "error", emit_null: false)]
    property error : String | Nil

    # Message about the condition for a component. For example, information about a health check.
    @[::JSON::Field(key: "message", emit_null: false)]
    @[::YAML::Field(key: "message", emit_null: false)]
    property message : String | Nil

    # Status of the condition for a component. Valid values for "Healthy": "True", "False", or "Unknown".
    @[::JSON::Field(key: "status", emit_null: true)]
    @[::YAML::Field(key: "status", emit_null: true)]
    property status : String

    # Type of condition for a component. Valid value: "Healthy"
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    def initialize(*, @status : String, @type : String, @error : String | Nil = nil, @message : String | Nil = nil)
    end
  end
end
