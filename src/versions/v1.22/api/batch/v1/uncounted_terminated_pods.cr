# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't been accounted in Job status counters.
  class Api::Batch::V1::UncountedTerminatedPods
    # Failed holds UIDs of failed Pods.
    property failed : Array(String) | Nil

    # Succeeded holds UIDs of succeeded Pods.
    property succeeded : Array(String) | Nil

    ::YAML.mapping({
      failed:    {type: Array(String), nilable: true, key: "failed", getter: false, setter: false},
      succeeded: {type: Array(String), nilable: true, key: "succeeded", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      failed:    {type: Array(String), nilable: true, key: "failed", getter: false, setter: false},
      succeeded: {type: Array(String), nilable: true, key: "succeeded", getter: false, setter: false},
    }, true)

    def initialize(*, @failed : Array | Nil = nil, @succeeded : Array | Nil = nil)
    end
  end
end
