# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Batch::V1::JobStatus; end

require "./job_condition"

module K8S
  # Namespace holding the types for `Api::Batch::V1::JobStatus`.
  module Types::Api::Batch::V1::JobStatus
    alias ValueType = Int32 | ::Time | ::Array(::K8S::Api::Batch::V1::JobCondition) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The number of actively running pods.
    abstract def active : Int32?
    # :ditto:
    abstract def active! : Int32
    # :ditto:
    abstract def active? : Int32?
    # :ditto:
    abstract def active=(value : Int32?)
    # Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. The completion time is only set when the job finishes successfully.
    abstract def completion_time : ::Time?
    # :ditto:
    abstract def completion_time! : ::Time
    # :ditto:
    abstract def completion_time? : ::Time?
    # :ditto:
    abstract def completion_time=(value : ::Time?)
    # The latest available observations of an object's current state. When a job fails, one of the conditions will have type == "Failed". More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/))
    abstract def conditions : ::Array(::K8S::Api::Batch::V1::JobCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Batch::V1::JobCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Batch::V1::JobCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Batch::V1::JobCondition)?)
    # The number of pods which reached phase Failed.
    abstract def failed : Int32?
    # :ditto:
    abstract def failed! : Int32
    # :ditto:
    abstract def failed? : Int32?
    # :ditto:
    abstract def failed=(value : Int32?)
    # Represents time when the job was acknowledged by the job controller. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.
    abstract def start_time : ::Time?
    # :ditto:
    abstract def start_time! : ::Time
    # :ditto:
    abstract def start_time? : ::Time?
    # :ditto:
    abstract def start_time=(value : ::Time?)
    # The number of pods which reached phase Succeeded.
    abstract def succeeded : Int32?
    # :ditto:
    abstract def succeeded! : Int32
    # :ditto:
    abstract def succeeded? : Int32?
    # :ditto:
    abstract def succeeded=(value : Int32?)
  end

  # JobStatus represents the current state of a Job.
  @[::K8S::Properties(
    active: {key: "active", accessor: "active", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of actively running pods.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    completion_time: {key: "completionTime", accessor: "completion_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. The completion time is only set when the job finishes successfully.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Batch::V1::JobCondition)", nilable: true, default: nil, read_only: false, description: "The latest available observations of an object's current state. When a job fails, one of the conditions will have type == \"Failed\". More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    failed: {key: "failed", accessor: "failed", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of pods which reached phase Failed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    start_time: {key: "startTime", accessor: "start_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Represents time when the job was acknowledged by the job controller. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    succeeded: {key: "succeeded", accessor: "succeeded", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of pods which reached phase Succeeded.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Batch::V1::JobStatus < ::K8S::Types::Api::Batch::V1::JobStatus::Instance
    include ::K8S::Types::Api::Batch::V1::JobStatus
    include ::K8S::Kubernetes::Object

    # The number of actively running pods.
    def active : Int32?
      self.["active"].as(Int32?)
    end

    # :ditto:
    def active! : Int32
      self.["active"].as(Int32?).not_nil!
    end

    # :ditto:
    def active? : Int32?
      self.["active"]?.as(Int32?)
    end

    # :ditto:
    def active=(value : Int32?)
      self.["active"] = value
    end

    # Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. The completion time is only set when the job finishes successfully.
    def completion_time : ::Time?
      self.["completionTime"].as(::Time?)
    end

    # :ditto:
    def completion_time! : ::Time
      self.["completionTime"].as(::Time?).not_nil!
    end

    # :ditto:
    def completion_time? : ::Time?
      self.["completionTime"]?.as(::Time?)
    end

    # :ditto:
    def completion_time=(value : ::Time?)
      self.["completionTime"] = value
    end

    # The latest available observations of an object's current state. When a job fails, one of the conditions will have type == "Failed". More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/))
    def conditions : ::Array(::K8S::Api::Batch::V1::JobCondition)?
      self.["conditions"].as(::Array(::K8S::Api::Batch::V1::JobCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Api::Batch::V1::JobCondition)
      self.["conditions"].as(::Array(::K8S::Api::Batch::V1::JobCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Api::Batch::V1::JobCondition)?
      self.["conditions"]?.as(::Array(::K8S::Api::Batch::V1::JobCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Api::Batch::V1::JobCondition)?)
      self.["conditions"] = value
    end

    # The number of pods which reached phase Failed.
    def failed : Int32?
      self.["failed"].as(Int32?)
    end

    # :ditto:
    def failed! : Int32
      self.["failed"].as(Int32?).not_nil!
    end

    # :ditto:
    def failed? : Int32?
      self.["failed"]?.as(Int32?)
    end

    # :ditto:
    def failed=(value : Int32?)
      self.["failed"] = value
    end

    # Represents time when the job was acknowledged by the job controller. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.
    def start_time : ::Time?
      self.["startTime"].as(::Time?)
    end

    # :ditto:
    def start_time! : ::Time
      self.["startTime"].as(::Time?).not_nil!
    end

    # :ditto:
    def start_time? : ::Time?
      self.["startTime"]?.as(::Time?)
    end

    # :ditto:
    def start_time=(value : ::Time?)
      self.["startTime"] = value
    end

    # The number of pods which reached phase Succeeded.
    def succeeded : Int32?
      self.["succeeded"].as(Int32?)
    end

    # :ditto:
    def succeeded! : Int32
      self.["succeeded"].as(Int32?).not_nil!
    end

    # :ditto:
    def succeeded? : Int32?
      self.["succeeded"]?.as(Int32?)
    end

    # :ditto:
    def succeeded=(value : Int32?)
      self.["succeeded"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "active", accessor: "active", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "completionTime", accessor: "completion_time", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Batch::V1::JobCondition) },
        { key: "failed", accessor: "failed", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "startTime", accessor: "start_time", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "succeeded", accessor: "succeeded", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
