# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CustomResourceColumnDefinition specifies a column for server side printing.
  @[::K8S::Properties(
    description: {type: String, nilable: true, key: "description", getter: false, setter: false},
    format: {type: String, nilable: true, key: "format", getter: false, setter: false},
    json_path: {type: String, nilable: false, key: "jsonPath", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    priority: {type: Int32, nilable: true, key: "priority", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # description is a human readable description of this column.
    @[::JSON::Field(key: "description", emit_null: false)]
    @[::YAML::Field(key: "description", emit_null: false)]
    property description : String | Nil

    # format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See [https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.)
    @[::JSON::Field(key: "format", emit_null: false)]
    @[::YAML::Field(key: "format", emit_null: false)]
    property format : String | Nil

    # jsonPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column.
    @[::JSON::Field(key: "jsonPath", emit_null: true)]
    @[::YAML::Field(key: "jsonPath", emit_null: true)]
    property json_path : String

    # name is a human readable name for the column.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a priority greater than 0.
    @[::JSON::Field(key: "priority", emit_null: false)]
    @[::YAML::Field(key: "priority", emit_null: false)]
    property priority : Int32 | Nil

    # type is an OpenAPI type definition for this column. See [https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.)
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    def initialize(*, @json_path : String, @name : String, @type : String, @description : String | Nil = nil, @format : String | Nil = nil, @priority : Int32 | Nil = nil)
    end
  end
end
