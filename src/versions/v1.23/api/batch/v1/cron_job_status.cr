# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CronJobStatus represents the current state of a cron job.
  @[::K8S::Properties(
    active: {type: Array(Api::Core::V1::ObjectReference), nilable: true, key: "active", getter: false, setter: false},
    last_schedule_time: {type: Time, nilable: true, key: "lastScheduleTime", getter: false, setter: false},
    last_successful_time: {type: Time, nilable: true, key: "lastSuccessfulTime", getter: false, setter: false},
  )]
  class Api::Batch::V1::CronJobStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # A list of pointers to currently running jobs.
    @[::JSON::Field(key: "active", emit_null: false)]
    @[::YAML::Field(key: "active", emit_null: false)]
    property active : Array(Api::Core::V1::ObjectReference) | Nil

    # Information when was the last time the job was successfully scheduled.
    @[::JSON::Field(key: "lastScheduleTime", emit_null: false, converter: Time::Format.new("%Y-%m-%dT%TZ"))]
    @[::YAML::Field(key: "lastScheduleTime", emit_null: false, converter: Time::Format.new("%Y-%m-%dT%TZ"))]
    property last_schedule_time : Time | Nil

    # Information when was the last time the job successfully completed.
    @[::JSON::Field(key: "lastSuccessfulTime", emit_null: false, converter: Time::Format.new("%Y-%m-%dT%TZ"))]
    @[::YAML::Field(key: "lastSuccessfulTime", emit_null: false, converter: Time::Format.new("%Y-%m-%dT%TZ"))]
    property last_successful_time : Time | Nil

    def initialize(*, @active : Array | Nil = nil, @last_schedule_time : Time | Nil = nil, @last_successful_time : Time | Nil = nil)
    end
  end
end
