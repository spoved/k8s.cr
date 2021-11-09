# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # JobSpec describes how the job execution will look like.
  class Api::Batch::V1::JobSpec
    # Specifies the duration in seconds relative to the startTime that the job may be continuously active before the system tries to terminate it; value must be positive integer. If a Job is suspended (at creation or through an update), this timer will effectively be stopped and reset when the Job is resumed again.
    property active_deadline_seconds : Int32 | Nil

    # Specifies the number of retries before marking this job failed. Defaults to 6
    property backoff_limit : Int32 | Nil

    # CompletionMode specifies how Pod completions are tracked. It can be `NonIndexed` (default) or `Indexed`.
    #
    # `NonIndexed` means that the Job is considered complete when there have been .spec.completions successfully completed Pods. Each Pod completion is homologous to each other.
    #
    # `Indexed` means that the Pods of a Job get an associated completion index from 0 to (.spec.completions - 1), available in the annotation [batch.kubernetes.io/job-completion-index. The Job is considered complete when there is one successfully completed Pod for each index. When value is `Indexed`, .spec.completions must be specified and `.spec.parallelism` must be less than or equal to 10^5. In addition, The Pod name takes the form `$(job-name)-$(index)-$(random-string)`, the Pod hostname takes the form `$(job-name)-$(index)`.](batch.kubernetes.io/job-completion-index. The Job is considered complete when there is one successfully completed Pod for each index. When value is `Indexed`, .spec.completions must be specified and `.spec.parallelism` must be less than or equal to 10^5. In addition, The Pod name takes the form `$(job-name)-$(index)-$(random-string)`, the Pod hostname takes the form `$(job-name)-$(index)`.)
    #
    # This field is beta-level. More completion modes can be added in the future. If the Job controller observes a mode that it doesn't recognize, the controller skips updates for the Job.
    property completion_mode : String | Nil

    # Specifies the desired number of successfully finished pods the job should be run with.  Setting to nil means that the success of any pod signals the success of all pods, and allows parallelism to have any positive value.  Setting to 1 means that parallelism is limited to 1 and the success of that pod signals the success of the job. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)
    property completions : Int32 | Nil

    # manualSelector controls generation of pod labels and pod selectors. Leave `manualSelector` unset unless you are certain what you are doing. When false or unset, the system pick labels unique to this job and appends those labels to the pod template.  When true, the user is responsible for picking unique labels and specifying the selector.  Failure to pick a unique label may cause this and other jobs to not function correctly.  However, You may see `manualSelector=true` in jobs that were created with the old [`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector](`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector)
    property manual_selector : Bool | Nil

    # Specifies the maximum desired number of pods the job should run at any given time. The actual number of pods running in steady state will be less than this number when ((.spec.completions - .status.successful) < .spec.parallelism), i.e. when the work left to do is less than max parallelism. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)
    property parallelism : Int32 | Nil

    # A label query over pods that should match the pod count. Normally, the system sets this field for you. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # Suspend specifies whether the Job controller should create Pods or not. If a Job is created with suspend set to true, no Pods are created by the Job controller. If a Job is suspended after creation (i.e. the flag goes from false to true), the Job controller will delete all active Pods associated with this Job. Users must design their workload to gracefully handle this. Suspending a Job will reset the StartTime field of the Job, effectively resetting the ActiveDeadlineSeconds timer too. Defaults to false.
    #
    # This field is beta-level, gated by SuspendJob feature flag (enabled by default).
    property suspend : Bool | Nil

    # Describes the pod that will be created when executing a job. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)
    property template : Api::Core::V1::PodTemplateSpec

    # ttlSecondsAfterFinished limits the lifetime of a Job that has finished execution (either Complete or Failed). If this field is set, ttlSecondsAfterFinished after the Job finishes, it is eligible to be automatically deleted. When the Job is being deleted, its lifecycle guarantees (e.g. finalizers) will be honored. If this field is unset, the Job won't be automatically deleted. If this field is set to zero, the Job becomes eligible to be deleted immediately after it finishes. This field is alpha-level and is only honored by servers that enable the TTLAfterFinished feature.
    property ttl_seconds_after_finished : Int32 | Nil

    ::YAML.mapping({
      active_deadline_seconds:    {type: Int32, nilable: true, key: "activeDeadlineSeconds", getter: false, setter: false},
      backoff_limit:              {type: Int32, nilable: true, key: "backoffLimit", getter: false, setter: false},
      completion_mode:            {type: String, nilable: true, key: "completionMode", getter: false, setter: false},
      completions:                {type: Int32, nilable: true, key: "completions", getter: false, setter: false},
      manual_selector:            {type: Bool, nilable: true, key: "manualSelector", getter: false, setter: false},
      parallelism:                {type: Int32, nilable: true, key: "parallelism", getter: false, setter: false},
      selector:                   {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
      suspend:                    {type: Bool, nilable: true, key: "suspend", getter: false, setter: false},
      template:                   {type: Api::Core::V1::PodTemplateSpec, nilable: false, key: "template", getter: false, setter: false},
      ttl_seconds_after_finished: {type: Int32, nilable: true, key: "ttlSecondsAfterFinished", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      active_deadline_seconds:    {type: Int32, nilable: true, key: "activeDeadlineSeconds", getter: false, setter: false},
      backoff_limit:              {type: Int32, nilable: true, key: "backoffLimit", getter: false, setter: false},
      completion_mode:            {type: String, nilable: true, key: "completionMode", getter: false, setter: false},
      completions:                {type: Int32, nilable: true, key: "completions", getter: false, setter: false},
      manual_selector:            {type: Bool, nilable: true, key: "manualSelector", getter: false, setter: false},
      parallelism:                {type: Int32, nilable: true, key: "parallelism", getter: false, setter: false},
      selector:                   {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
      suspend:                    {type: Bool, nilable: true, key: "suspend", getter: false, setter: false},
      template:                   {type: Api::Core::V1::PodTemplateSpec, nilable: false, key: "template", getter: false, setter: false},
      ttl_seconds_after_finished: {type: Int32, nilable: true, key: "ttlSecondsAfterFinished", getter: false, setter: false},
    }, true)

    def initialize(*, @template : Api::Core::V1::PodTemplateSpec, @active_deadline_seconds : Int32 | Nil = nil, @backoff_limit : Int32 | Nil = nil, @completion_mode : String | Nil = nil, @completions : Int32 | Nil = nil, @manual_selector : Bool | Nil = nil, @parallelism : Int32 | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @suspend : Bool | Nil = nil, @ttl_seconds_after_finished : Int32 | Nil = nil)
    end
  end
end
