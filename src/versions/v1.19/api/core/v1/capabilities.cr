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
    include ::YAML::Serializable

    # Added capabilities
    property add : Array(String) | Nil

    # Removed capabilities
    property drop : Array(String) | Nil

    def initialize(*, @add : Array | Nil = nil, @drop : Array | Nil = nil)
    end
  end
end
