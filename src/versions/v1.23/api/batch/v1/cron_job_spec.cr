# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Batch::V1::CronJobSpec; end

require "./job_template_spec"

module K8S
  # Namespace holding the types for `Api::Batch::V1::CronJobSpec`.
  module Types::Api::Batch::V1::CronJobSpec
    # Specifies how to treat concurrent executions of a Job. Valid values are: - "Allow" (default): allows CronJobs to run concurrently; - "Forbid": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - "Replace": cancels currently running job and replaces it with a new one
    #
    # Possible enum values:
    #  - `"Allow"` allows CronJobs to run concurrently.
    #  - `"Forbid"` forbids concurrent runs, skipping next run if previous hasn't finished yet.
    #  - `"Replace"` cancels currently running job and replaces it with a new one.
    abstract def concurrency_policy : String?
    # :ditto:
    abstract def concurrency_policy! : String
    # :ditto:
    abstract def concurrency_policy? : String?
    # :ditto:
    abstract def concurrency_policy=(value : String?)
    # The number of failed finished jobs to retain. Value must be non-negative integer. Defaults to 1.
    abstract def failed_jobs_history_limit : Int32?
    # :ditto:
    abstract def failed_jobs_history_limit! : Int32
    # :ditto:
    abstract def failed_jobs_history_limit? : Int32?
    # :ditto:
    abstract def failed_jobs_history_limit=(value : Int32?)
    # Specifies the job that will be created when executing a CronJob.
    abstract def job_template : ::K8S::Api::Batch::V1::JobTemplateSpec
    # :ditto:
    abstract def job_template! : ::K8S::Api::Batch::V1::JobTemplateSpec
    # :ditto:
    abstract def job_template? : ::K8S::Api::Batch::V1::JobTemplateSpec?
    # :ditto:
    abstract def job_template=(value : ::K8S::Api::Batch::V1::JobTemplateSpec)
    # The schedule in Cron format, see [[https://en.wikipedia.org/wiki/Cron.](https://en.wikipedia.org/wiki/Cron.)](https://en.wikipedia.org/wiki/Cron.](https://en.wikipedia.org/wiki/Cron.))
    abstract def schedule : String
    # :ditto:
    abstract def schedule! : String
    # :ditto:
    abstract def schedule? : String?
    # :ditto:
    abstract def schedule=(value : String)
    # Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
    abstract def starting_deadline_seconds : Int32?
    # :ditto:
    abstract def starting_deadline_seconds! : Int32
    # :ditto:
    abstract def starting_deadline_seconds? : Int32?
    # :ditto:
    abstract def starting_deadline_seconds=(value : Int32?)
    # The number of successful finished jobs to retain. Value must be non-negative integer. Defaults to 3.
    abstract def successful_jobs_history_limit : Int32?
    # :ditto:
    abstract def successful_jobs_history_limit! : Int32
    # :ditto:
    abstract def successful_jobs_history_limit? : Int32?
    # :ditto:
    abstract def successful_jobs_history_limit=(value : Int32?)
    # This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
    abstract def suspend : ::Bool?
    # :ditto:
    abstract def suspend! : ::Bool
    # :ditto:
    abstract def suspend? : ::Bool?
    # :ditto:
    abstract def suspend=(value : ::Bool?)
  end

  # CronJobSpec describes how the job execution will look like and when it will actually run.
  @[::K8S::Properties(
    concurrency_policy: {key: "concurrencyPolicy", accessor: "concurrency_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "Specifies how to treat concurrent executions of a Job. Valid values are: - \"Allow\" (default): allows CronJobs to run concurrently; - \"Forbid\": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - \"Replace\": cancels currently running job and replaces it with a new one\n\nPossible enum values:\n - `\"Allow\"` allows CronJobs to run concurrently.\n - `\"Forbid\"` forbids concurrent runs, skipping next run if previous hasn't finished yet.\n - `\"Replace\"` cancels currently running job and replaces it with a new one.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    failed_jobs_history_limit: {key: "failedJobsHistoryLimit", accessor: "failed_jobs_history_limit", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of failed finished jobs to retain. Value must be non-negative integer. Defaults to 1.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    job_template: {key: "jobTemplate", accessor: "job_template", kind: "::K8S::Api::Batch::V1::JobTemplateSpec", nilable: false, default: nil, read_only: false, description: "Specifies the job that will be created when executing a CronJob.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    schedule: {key: "schedule", accessor: "schedule", kind: "String", nilable: false, default: nil, read_only: false, description: "The schedule in Cron format, see [https://en.wikipedia.org/wiki/Cron.](https://en.wikipedia.org/wiki/Cron.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    starting_deadline_seconds: {key: "startingDeadlineSeconds", accessor: "starting_deadline_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    successful_jobs_history_limit: {key: "successfulJobsHistoryLimit", accessor: "successful_jobs_history_limit", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The number of successful finished jobs to retain. Value must be non-negative integer. Defaults to 3.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    suspend: {key: "suspend", accessor: "suspend", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Batch::V1::CronJobSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Batch::V1::CronJobSpec

    # Specifies how to treat concurrent executions of a Job. Valid values are: - "Allow" (default): allows CronJobs to run concurrently; - "Forbid": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - "Replace": cancels currently running job and replaces it with a new one
    #
    # Possible enum values:
    #  - `"Allow"` allows CronJobs to run concurrently.
    #  - `"Forbid"` forbids concurrent runs, skipping next run if previous hasn't finished yet.
    #  - `"Replace"` cancels currently running job and replaces it with a new one.
    def concurrency_policy : String?
      self.["concurrencyPolicy"].as(String?)
    end

    # :ditto:
    def concurrency_policy! : String
      self.["concurrencyPolicy"].as(String?).not_nil!
    end

    # :ditto:
    def concurrency_policy? : String?
      self.["concurrencyPolicy"]?.as(String?)
    end

    # :ditto:
    def concurrency_policy=(value : String?)
      self.["concurrencyPolicy"] = value
    end

    # The number of failed finished jobs to retain. Value must be non-negative integer. Defaults to 1.
    def failed_jobs_history_limit : Int32?
      self.["failedJobsHistoryLimit"].as(Int32?)
    end

    # :ditto:
    def failed_jobs_history_limit! : Int32
      self.["failedJobsHistoryLimit"].as(Int32?).not_nil!
    end

    # :ditto:
    def failed_jobs_history_limit? : Int32?
      self.["failedJobsHistoryLimit"]?.as(Int32?)
    end

    # :ditto:
    def failed_jobs_history_limit=(value : Int32?)
      self.["failedJobsHistoryLimit"] = value
    end

    # Specifies the job that will be created when executing a CronJob.
    def job_template : ::K8S::Api::Batch::V1::JobTemplateSpec
      self.["jobTemplate"].as(::K8S::Api::Batch::V1::JobTemplateSpec)
    end

    # :ditto:
    def job_template! : ::K8S::Api::Batch::V1::JobTemplateSpec
      self.["jobTemplate"].as(::K8S::Api::Batch::V1::JobTemplateSpec).not_nil!
    end

    # :ditto:
    def job_template? : ::K8S::Api::Batch::V1::JobTemplateSpec?
      self.["jobTemplate"]?.as(::K8S::Api::Batch::V1::JobTemplateSpec?)
    end

    # :ditto:
    def job_template=(value : ::K8S::Api::Batch::V1::JobTemplateSpec)
      self.["jobTemplate"] = value
    end

    # The schedule in Cron format, see [[https://en.wikipedia.org/wiki/Cron.](https://en.wikipedia.org/wiki/Cron.)](https://en.wikipedia.org/wiki/Cron.](https://en.wikipedia.org/wiki/Cron.))
    def schedule : String
      self.["schedule"].as(String)
    end

    # :ditto:
    def schedule! : String
      self.["schedule"].as(String).not_nil!
    end

    # :ditto:
    def schedule? : String?
      self.["schedule"]?.as(String?)
    end

    # :ditto:
    def schedule=(value : String)
      self.["schedule"] = value
    end

    # Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
    def starting_deadline_seconds : Int32?
      self.["startingDeadlineSeconds"].as(Int32?)
    end

    # :ditto:
    def starting_deadline_seconds! : Int32
      self.["startingDeadlineSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def starting_deadline_seconds? : Int32?
      self.["startingDeadlineSeconds"]?.as(Int32?)
    end

    # :ditto:
    def starting_deadline_seconds=(value : Int32?)
      self.["startingDeadlineSeconds"] = value
    end

    # The number of successful finished jobs to retain. Value must be non-negative integer. Defaults to 3.
    def successful_jobs_history_limit : Int32?
      self.["successfulJobsHistoryLimit"].as(Int32?)
    end

    # :ditto:
    def successful_jobs_history_limit! : Int32
      self.["successfulJobsHistoryLimit"].as(Int32?).not_nil!
    end

    # :ditto:
    def successful_jobs_history_limit? : Int32?
      self.["successfulJobsHistoryLimit"]?.as(Int32?)
    end

    # :ditto:
    def successful_jobs_history_limit=(value : Int32?)
      self.["successfulJobsHistoryLimit"] = value
    end

    # This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
    def suspend : ::Bool?
      self.["suspend"].as(::Bool?)
    end

    # :ditto:
    def suspend! : ::Bool
      self.["suspend"].as(::Bool?).not_nil!
    end

    # :ditto:
    def suspend? : ::Bool?
      self.["suspend"]?.as(::Bool?)
    end

    # :ditto:
    def suspend=(value : ::Bool?)
      self.["suspend"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "concurrencyPolicy", accessor: "concurrency_policy", nilable: true, read_only: false, default: nil, kind: String },
        { key: "failedJobsHistoryLimit", accessor: "failed_jobs_history_limit", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "jobTemplate", accessor: "job_template", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Batch::V1::JobTemplateSpec },
        { key: "schedule", accessor: "schedule", nilable: false, read_only: false, default: nil, kind: String },
        { key: "startingDeadlineSeconds", accessor: "starting_deadline_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "successfulJobsHistoryLimit", accessor: "successful_jobs_history_limit", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "suspend", accessor: "suspend", nilable: true, read_only: false, default: nil, kind: ::Bool },
      ])
end
  end
end
