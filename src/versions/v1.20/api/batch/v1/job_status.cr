# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # JobStatus represents the current state of a Job.
  class Api::Batch::V1::JobStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The number of actively running pods.
    property active : Int32 | Nil

    # Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. The completion time is only set when the job finishes successfully.
    property completion_time : Time | Nil

    # The latest available observations of an object's current state. When a job fails, one of the conditions will have type == "Failed". More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)
    property conditions : Array(Api::Batch::V1::JobCondition) | Nil

    # The number of pods which reached phase Failed.
    property failed : Int32 | Nil

    # Represents time when the job was acknowledged by the job controller. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.
    property start_time : Time | Nil

    # The number of pods which reached phase Succeeded.
    property succeeded : Int32 | Nil

    ::YAML.mapping({
      active:          {type: Int32, nilable: true, key: "active", getter: false, setter: false},
      completion_time: {type: Time, nilable: true, key: "completionTime", getter: false, setter: false},
      conditions:      {type: Array(Api::Batch::V1::JobCondition), nilable: true, key: "conditions", getter: false, setter: false},
      failed:          {type: Int32, nilable: true, key: "failed", getter: false, setter: false},
      start_time:      {type: Time, nilable: true, key: "startTime", getter: false, setter: false},
      succeeded:       {type: Int32, nilable: true, key: "succeeded", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      active:          {type: Int32, nilable: true, key: "active", getter: false, setter: false},
      completion_time: {type: Time, nilable: true, key: "completionTime", getter: false, setter: false},
      conditions:      {type: Array(Api::Batch::V1::JobCondition), nilable: true, key: "conditions", getter: false, setter: false},
      failed:          {type: Int32, nilable: true, key: "failed", getter: false, setter: false},
      start_time:      {type: Time, nilable: true, key: "startTime", getter: false, setter: false},
      succeeded:       {type: Int32, nilable: true, key: "succeeded", getter: false, setter: false},
    }, true)

    def initialize(*, @active : Int32 | Nil = nil, @completion_time : Time | Nil = nil, @conditions : Array | Nil = nil, @failed : Int32 | Nil = nil, @start_time : Time | Nil = nil, @succeeded : Int32 | Nil = nil)
    end
  end
end
