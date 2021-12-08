# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Sysctl defines a kernel parameter to be set
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    value: {type: String, nilable: false, key: "value", getter: false, setter: false},
  )]
  class Api::Core::V1::Sysctl
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name of a property to set
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # Value of a property to set
    @[::JSON::Field(key: "value", emit_null: true)]
    @[::YAML::Field(key: "value", emit_null: true)]
    property value : String

    def initialize(*, @name : String, @value : String)
    end
  end
end
