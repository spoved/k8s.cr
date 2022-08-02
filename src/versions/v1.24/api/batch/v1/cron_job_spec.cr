# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./job_template_spec"

::K8S::Kubernetes::Resource.define_object("CronJobSpec",
  namespace: "::K8S::Api::Batch::V1",
  properties: [

    {name: "concurrency_policy", kind: String, key: "concurrencyPolicy", nilable: true, read_only: false, description: "Specifies how to treat concurrent executions of a Job. Valid values are: - \"Allow\" (default): allows CronJobs to run concurrently; - \"Forbid\": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - \"Replace\": cancels currently running job and replaces it with a new one\n\n"},
    {name: "failed_jobs_history_limit", kind: Int32, key: "failedJobsHistoryLimit", nilable: true, read_only: false, description: "The number of failed finished jobs to retain. Value must be non-negative integer. Defaults to 1."},
    {name: "job_template", kind: ::K8S::Api::Batch::V1::JobTemplateSpec, key: "jobTemplate", nilable: false, read_only: false, description: "Specifies the job that will be created when executing a CronJob."},
    {name: "schedule", kind: String, key: "schedule", nilable: false, read_only: false, description: "The schedule in Cron format, see [https://en.wikipedia.org/wiki/Cron.](https://en.wikipedia.org/wiki/Cron.)"},
    {name: "starting_deadline_seconds", kind: Int32, key: "startingDeadlineSeconds", nilable: true, read_only: false, description: "Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones."},
    {name: "successful_jobs_history_limit", kind: Int32, key: "successfulJobsHistoryLimit", nilable: true, read_only: false, description: "The number of successful finished jobs to retain. Value must be non-negative integer. Defaults to 3."},
    {name: "suspend", kind: ::Bool, key: "suspend", nilable: true, read_only: false, description: "This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false."},
    {name: "time_zone", kind: String, key: "timeZone", nilable: true, read_only: false, description: "The time zone for the given schedule, see [https://en.wikipedia.org/wiki/List_of_tz_database_time_zones. If not specified, this will rely on the time zone of the kube-controller-manager process. ALPHA: This field is in alpha and must be enabled via the `CronJobTimeZone` feature gate.](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones. If not specified, this will rely on the time zone of the kube-controller-manager process. ALPHA: This field is in alpha and must be enabled via the `CronJobTimeZone` feature gate.)"},

  ]
)
