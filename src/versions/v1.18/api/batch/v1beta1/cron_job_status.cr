# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CronJobStatus represents the current state of a cron job.
  @[::K8S::Properties(
    active: {type: Array(Api::Core::V1::ObjectReference), nilable: true, key: "active", getter: false, setter: false},
    last_schedule_time: {type: Time, nilable: true, key: "lastScheduleTime", getter: false, setter: false},
  )]
  class Api::Batch::V1beta1::CronJobStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # A list of pointers to currently running jobs.
    property active : Array(Api::Core::V1::ObjectReference) | Nil

    # Information when was the last time the job was successfully scheduled.
    @[::JSON::Field(key: "lastScheduleTime")]
    @[::YAML::Field(key: "lastScheduleTime")]
    property last_schedule_time : Time | Nil

    def initialize(*, @active : Array | Nil = nil, @last_schedule_time : Time | Nil = nil)
    end
  end
end
