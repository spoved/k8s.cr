# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
  @[::K8S::Properties(
    key: {type: String, nilable: false, key: "key", getter: false, setter: false},
    operator: {type: String, nilable: false, key: "operator", getter: false, setter: false},
    values: {type: Array(String), nilable: true, key: "values", getter: false, setter: false},
  )]
  class Api::Core::V1::NodeSelectorRequirement
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # The label key that the selector applies to.
    @[::JSON::Field(key: "key", emit_null: true)]
    @[::YAML::Field(key: "key", emit_null: true)]
    property key : String

    # Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.
    #
    # Possible enum values:
    #  - `"DoesNotExist"`
    #  - `"Exists"`
    #  - `"Gt"`
    #  - `"In"`
    #  - `"Lt"`
    #  - `"NotIn"`
    @[::JSON::Field(key: "operator", emit_null: true)]
    @[::YAML::Field(key: "operator", emit_null: true)]
    property operator : String

    # An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.
    @[::JSON::Field(key: "values", emit_null: false)]
    @[::YAML::Field(key: "values", emit_null: false)]
    property values : Array(String) | Nil

    def initialize(*, @key : String, @operator : String, @values : Array(String) | Nil = nil)
    end
  end
end
