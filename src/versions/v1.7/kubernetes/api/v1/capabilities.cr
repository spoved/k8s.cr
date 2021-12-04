# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Adds and removes POSIX capabilities from running containers.
  class Kubernetes::Api::V1::Capabilities
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Added capabilities
    property add : Array(String) | Nil

    # Removed capabilities
    property drop : Array(String) | Nil

    ::YAML.mapping({
      add:  {type: Array(String), nilable: true, key: "add", getter: false, setter: false},
      drop: {type: Array(String), nilable: true, key: "drop", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      add:  {type: Array(String), nilable: true, key: "add", getter: false, setter: false},
      drop: {type: Array(String), nilable: true, key: "drop", getter: false, setter: false},
    }, true)

    def initialize(*, @add : Array | Nil = nil, @drop : Array | Nil = nil)
    end
  end
end
