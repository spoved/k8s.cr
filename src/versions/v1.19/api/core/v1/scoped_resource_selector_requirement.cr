# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # A scoped-resource selector requirement is a selector that contains values, a scope name, and an operator that relates the scope name and values.
  @[::K8S::Properties(
    operator: {type: String, nilable: false, key: "operator", getter: false, setter: false},
    scope_name: {type: String, nilable: false, key: "scopeName", getter: false, setter: false},
    values: {type: Array(String), nilable: true, key: "values", getter: false, setter: false},
  )]
  class Api::Core::V1::ScopedResourceSelectorRequirement
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.
    property operator : String

    # The name of the scope that the selector applies to.
    @[::JSON::Field(key: "scopeName")]
    @[::YAML::Field(key: "scopeName")]
    property scope_name : String

    # An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
    property values : Array(String) | Nil

    def initialize(*, @operator : String, @scope_name : String, @values : Array | Nil = nil)
    end
  end
end
