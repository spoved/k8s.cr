# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CronJobSpec describes how the job execution will look like and when it will actually run.
  @[::K8S::Properties(
    concurrency_policy: {type: String, nilable: true, key: "concurrencyPolicy", getter: false, setter: false},
    failed_jobs_history_limit: {type: Int32, nilable: true, key: "failedJobsHistoryLimit", getter: false, setter: false},
    job_template: {type: Api::Batch::V1beta1::JobTemplateSpec, nilable: false, key: "jobTemplate", getter: false, setter: false},
    schedule: {type: String, nilable: false, key: "schedule", getter: false, setter: false},
    starting_deadline_seconds: {type: Int32, nilable: true, key: "startingDeadlineSeconds", getter: false, setter: false},
    successful_jobs_history_limit: {type: Int32, nilable: true, key: "successfulJobsHistoryLimit", getter: false, setter: false},
    suspend: {type: Bool, nilable: true, key: "suspend", getter: false, setter: false},
  )]
  class Api::Batch::V1beta1::CronJobSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Specifies how to treat concurrent executions of a Job. Valid values are: - "Allow" (default): allows CronJobs to run concurrently; - "Forbid": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - "Replace": cancels currently running job and replaces it with a new one
    @[::JSON::Field(key: "concurrencyPolicy")]
    @[::YAML::Field(key: "concurrencyPolicy")]
    property concurrency_policy : String | Nil

    # The number of failed finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
    @[::JSON::Field(key: "failedJobsHistoryLimit")]
    @[::YAML::Field(key: "failedJobsHistoryLimit")]
    property failed_jobs_history_limit : Int32 | Nil

    # Specifies the job that will be created when executing a CronJob.
    @[::JSON::Field(key: "jobTemplate")]
    @[::YAML::Field(key: "jobTemplate")]
    property job_template : Api::Batch::V1beta1::JobTemplateSpec

    # The schedule in Cron format, see [https://en.wikipedia.org/wiki/Cron.](https://en.wikipedia.org/wiki/Cron.)
    property schedule : String

    # Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
    @[::JSON::Field(key: "startingDeadlineSeconds")]
    @[::YAML::Field(key: "startingDeadlineSeconds")]
    property starting_deadline_seconds : Int32 | Nil

    # The number of successful finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified. Defaults to 3.
    @[::JSON::Field(key: "successfulJobsHistoryLimit")]
    @[::YAML::Field(key: "successfulJobsHistoryLimit")]
    property successful_jobs_history_limit : Int32 | Nil

    # This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
    property suspend : Bool | Nil

    def initialize(*, @job_template : Api::Batch::V1beta1::JobTemplateSpec, @schedule : String, @concurrency_policy : String | Nil = nil, @failed_jobs_history_limit : Int32 | Nil = nil, @starting_deadline_seconds : Int32 | Nil = nil, @successful_jobs_history_limit : Int32 | Nil = nil, @suspend : Bool | Nil = nil)
    end
  end
end
