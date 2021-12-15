# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # EnvVar represents an environment variable present in a Container.
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    value: {type: String, nilable: true, key: "value", getter: false, setter: false},
    value_from: {type: Api::Core::V1::EnvVarSource, nilable: true, key: "valueFrom", getter: false, setter: false},
  )]
  class Api::Core::V1::EnvVar
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Name of the environment variable. Must be a C_IDENTIFIER.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "".
    @[::JSON::Field(key: "value", emit_null: false)]
    @[::YAML::Field(key: "value", emit_null: false)]
    property value : String | Nil

    # Source for the environment variable's value. Cannot be used if value is not empty.
    @[::JSON::Field(key: "valueFrom", emit_null: false)]
    @[::YAML::Field(key: "valueFrom", emit_null: false)]
    property value_from : Api::Core::V1::EnvVarSource | Nil

    def initialize(*, @name : String, @value : String | Nil = nil, @value_from : Api::Core::V1::EnvVarSource | Nil = nil)
    end
  end
end
