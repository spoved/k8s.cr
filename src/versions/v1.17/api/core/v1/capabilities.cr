# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Adds and removes POSIX capabilities from running containers.
  @[::K8S::Properties(
    add: {type: Array(String), nilable: true, key: "add", getter: false, setter: false},
    drop: {type: Array(String), nilable: true, key: "drop", getter: false, setter: false},
  )]
  class Api::Core::V1::Capabilities
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Added capabilities
    @[::JSON::Field(key: "add", emit_null: false)]
    @[::YAML::Field(key: "add", emit_null: false)]
    property add : Array(String) | Nil

    # Removed capabilities
    @[::JSON::Field(key: "drop", emit_null: false)]
    @[::YAML::Field(key: "drop", emit_null: false)]
    property drop : Array(String) | Nil

    def initialize(*, @add : Array(String) | Nil = nil, @drop : Array(String) | Nil = nil)
    end
  end
end
