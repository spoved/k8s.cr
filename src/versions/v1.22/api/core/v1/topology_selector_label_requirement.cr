# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # A topology selector requirement is a selector that matches given label. This is an alpha feature and may change in the future.
  @[::K8S::Properties(
    key: {type: String, nilable: false, key: "key", getter: false, setter: false},
    values: {type: Array(String), nilable: false, key: "values", getter: false, setter: false},
  )]
  class Api::Core::V1::TopologySelectorLabelRequirement
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The label key that the selector applies to.
    @[::JSON::Field(key: "key", emit_null: true)]
    @[::YAML::Field(key: "key", emit_null: true)]
    property key : String

    # An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
    @[::JSON::Field(key: "values", emit_null: true)]
    @[::YAML::Field(key: "values", emit_null: true)]
    property values : Array(String)

    def initialize(*, @key : String, @values : Array)
    end
  end
end
