# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't been accounted in Job status counters.
  @[::K8S::Properties(
    failed: {type: Array(String), nilable: true, key: "failed", getter: false, setter: false},
    succeeded: {type: Array(String), nilable: true, key: "succeeded", getter: false, setter: false},
  )]
  class Api::Batch::V1::UncountedTerminatedPods
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Failed holds UIDs of failed Pods.
    @[::JSON::Field(key: "failed", emit_null: false)]
    @[::YAML::Field(key: "failed", emit_null: false)]
    property failed : Array(String) | Nil

    # Succeeded holds UIDs of succeeded Pods.
    @[::JSON::Field(key: "succeeded", emit_null: false)]
    @[::YAML::Field(key: "succeeded", emit_null: false)]
    property succeeded : Array(String) | Nil

    def initialize(*, @failed : Array(String) | Nil = nil, @succeeded : Array(String) | Nil = nil)
    end
  end
end
