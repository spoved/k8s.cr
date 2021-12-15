# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Overhead structure represents the resource overhead associated with running a pod.
  @[::K8S::Properties(
    pod_fixed: {type: Hash(String, Int32 | String), nilable: true, key: "podFixed", getter: false, setter: false},
  )]
  class Api::Node::V1::Overhead
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # PodFixed represents the fixed resource overhead associated with running a pod.
    @[::JSON::Field(key: "podFixed", emit_null: false)]
    @[::YAML::Field(key: "podFixed", emit_null: false)]
    property pod_fixed : Hash(String, Int32 | String) | Nil

    def initialize(*, @pod_fixed : Hash(String, String) | Nil = nil)
    end
  end
end
