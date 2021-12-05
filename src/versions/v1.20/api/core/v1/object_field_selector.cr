# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ObjectFieldSelector selects an APIVersioned field of an object.
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    field_path: {type: String, nilable: false, key: "fieldPath", getter: false, setter: false},
  )]
  class Api::Core::V1::ObjectFieldSelector
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Version of the schema the FieldPath is written in terms of, defaults to "v1".
    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    property api_version : String | Nil

    # Path of the field to select in the specified API version.
    @[::JSON::Field(key: "fieldPath")]
    @[::YAML::Field(key: "fieldPath")]
    property field_path : String

    def initialize(*, @field_path : String, @api_version : String | Nil = nil)
    end
  end
end
