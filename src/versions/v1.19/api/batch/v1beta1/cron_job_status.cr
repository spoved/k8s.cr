# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Batch::V1beta1::CronJobStatus; end

require "../../core/v1/object_reference"

module K8S
  # Namespace holding the types for `Api::Batch::V1beta1::CronJobStatus`.
  module Types::Api::Batch::V1beta1::CronJobStatus
    alias ValueType = ::Array(::K8S::Api::Core::V1::ObjectReference) | ::Time | Nil
    alias Instance = ::K8S::Object(ValueType)

    # A list of pointers to currently running jobs.
    abstract def active : ::Array(::K8S::Api::Core::V1::ObjectReference)?
    # :ditto:
    abstract def active! : ::Array(::K8S::Api::Core::V1::ObjectReference)
    # :ditto:
    abstract def active? : ::Array(::K8S::Api::Core::V1::ObjectReference)?
    # :ditto:
    abstract def active=(value : ::Array(::K8S::Api::Core::V1::ObjectReference)?)
    # Information when was the last time the job was successfully scheduled.
    abstract def last_schedule_time : ::Time?
    # :ditto:
    abstract def last_schedule_time! : ::Time
    # :ditto:
    abstract def last_schedule_time? : ::Time?
    # :ditto:
    abstract def last_schedule_time=(value : ::Time?)
  end

  # CronJobStatus represents the current state of a cron job.
  @[::K8S::Properties(
    active: {key: "active", accessor: "active", kind: "::Array(::K8S::Api::Core::V1::ObjectReference)", nilable: true, default: nil, read_only: false, description: "A list of pointers to currently running jobs."},
    last_schedule_time: {key: "lastScheduleTime", accessor: "last_schedule_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Information when was the last time the job was successfully scheduled."},
  )]
  class Api::Batch::V1beta1::CronJobStatus < ::K8S::Types::Api::Batch::V1beta1::CronJobStatus::Instance
    include ::K8S::Types::Api::Batch::V1beta1::CronJobStatus
    include ::K8S::Kubernetes::Object

    # A list of pointers to currently running jobs.
    def active : ::Array(::K8S::Api::Core::V1::ObjectReference)?
      self.["active"].as(::Array(::K8S::Api::Core::V1::ObjectReference)?)
    end

    # :ditto:
    def active! : ::Array(::K8S::Api::Core::V1::ObjectReference)
      self.["active"].as(::Array(::K8S::Api::Core::V1::ObjectReference)?).not_nil!
    end

    # :ditto:
    def active? : ::Array(::K8S::Api::Core::V1::ObjectReference)?
      self.["active"]?.as(::Array(::K8S::Api::Core::V1::ObjectReference)?)
    end

    # :ditto:
    def active=(value : ::Array(::K8S::Api::Core::V1::ObjectReference)?)
      self.["active"] = value
    end

    # Information when was the last time the job was successfully scheduled.
    def last_schedule_time : ::Time?
      self.["lastScheduleTime"].as(::Time?)
    end

    # :ditto:
    def last_schedule_time! : ::Time
      self.["lastScheduleTime"].as(::Time?).not_nil!
    end

    # :ditto:
    def last_schedule_time? : ::Time?
      self.["lastScheduleTime"]?.as(::Time?)
    end

    # :ditto:
    def last_schedule_time=(value : ::Time?)
      self.["lastScheduleTime"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "active", accessor: "active", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ObjectReference) },
        { key: "lastScheduleTime", accessor: "last_schedule_time", nilable: true, read_only: false, default: nil, kind: ::Time },
      ])
end
  end
end
