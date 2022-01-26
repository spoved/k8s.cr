# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Batch::V1::CronJobStatus; end

require "../../core/v1/object_reference"

module K8S
  # Namespace holding the types for `Api::Batch::V1::CronJobStatus`.
  module Types::Api::Batch::V1::CronJobStatus
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
    # Information when was the last time the job successfully completed.
    abstract def last_successful_time : ::Time?
    # :ditto:
    abstract def last_successful_time! : ::Time
    # :ditto:
    abstract def last_successful_time? : ::Time?
    # :ditto:
    abstract def last_successful_time=(value : ::Time?)
  end

  # CronJobStatus represents the current state of a cron job.
  @[::K8S::Properties(
    active: {key: "active", accessor: "active", kind: "::Array(::K8S::Api::Core::V1::ObjectReference)", nilable: true, default: nil, read_only: false, description: "A list of pointers to currently running jobs.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    last_schedule_time: {key: "lastScheduleTime", accessor: "last_schedule_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Information when was the last time the job was successfully scheduled.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    last_successful_time: {key: "lastSuccessfulTime", accessor: "last_successful_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Information when was the last time the job successfully completed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Batch::V1::CronJobStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Batch::V1::CronJobStatus

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

    # Information when was the last time the job successfully completed.
    def last_successful_time : ::Time?
      self.["lastSuccessfulTime"].as(::Time?)
    end

    # :ditto:
    def last_successful_time! : ::Time
      self.["lastSuccessfulTime"].as(::Time?).not_nil!
    end

    # :ditto:
    def last_successful_time? : ::Time?
      self.["lastSuccessfulTime"]?.as(::Time?)
    end

    # :ditto:
    def last_successful_time=(value : ::Time?)
      self.["lastSuccessfulTime"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "active", accessor: "active", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ObjectReference) },
        { key: "lastScheduleTime", accessor: "last_schedule_time", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "lastSuccessfulTime", accessor: "last_successful_time", nilable: true, read_only: false, default: nil, kind: ::Time },
      ])
end
  end
end
