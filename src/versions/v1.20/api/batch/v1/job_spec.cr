# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # JobSpec describes how the job execution will look like.
  @[::K8S::Properties(
    active_deadline_seconds: {type: Int32, nilable: true, key: "activeDeadlineSeconds", getter: false, setter: false},
    backoff_limit: {type: Int32, nilable: true, key: "backoffLimit", getter: false, setter: false},
    completions: {type: Int32, nilable: true, key: "completions", getter: false, setter: false},
    manual_selector: {type: Bool, nilable: true, key: "manualSelector", getter: false, setter: false},
    parallelism: {type: Int32, nilable: true, key: "parallelism", getter: false, setter: false},
    selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
    template: {type: Api::Core::V1::PodTemplateSpec, nilable: false, key: "template", getter: false, setter: false},
    ttl_seconds_after_finished: {type: Int32, nilable: true, key: "ttlSecondsAfterFinished", getter: false, setter: false},
  )]
  class Api::Batch::V1::JobSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Specifies the duration in seconds relative to the startTime that the job may be active before the system tries to terminate it; value must be positive integer
    @[::JSON::Field(key: "activeDeadlineSeconds", emit_null: false)]
    @[::YAML::Field(key: "activeDeadlineSeconds", emit_null: false)]
    property active_deadline_seconds : Int32 | Nil

    # Specifies the number of retries before marking this job failed. Defaults to 6
    @[::JSON::Field(key: "backoffLimit", emit_null: false)]
    @[::YAML::Field(key: "backoffLimit", emit_null: false)]
    property backoff_limit : Int32 | Nil

    # Specifies the desired number of successfully finished pods the job should be run with.  Setting to nil means that the success of any pod signals the success of all pods, and allows parallelism to have any positive value.  Setting to 1 means that parallelism is limited to 1 and the success of that pod signals the success of the job. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)
    @[::JSON::Field(key: "completions", emit_null: false)]
    @[::YAML::Field(key: "completions", emit_null: false)]
    property completions : Int32 | Nil

    # manualSelector controls generation of pod labels and pod selectors. Leave `manualSelector` unset unless you are certain what you are doing. When false or unset, the system pick labels unique to this job and appends those labels to the pod template.  When true, the user is responsible for picking unique labels and specifying the selector.  Failure to pick a unique label may cause this and other jobs to not function correctly.  However, You may see `manualSelector=true` in jobs that were created with the old [`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector](`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector)
    @[::JSON::Field(key: "manualSelector", emit_null: false)]
    @[::YAML::Field(key: "manualSelector", emit_null: false)]
    property manual_selector : Bool | Nil

    # Specifies the maximum desired number of pods the job should run at any given time. The actual number of pods running in steady state will be less than this number when ((.spec.completions - .status.successful) < .spec.parallelism), i.e. when the work left to do is less than max parallelism. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)
    @[::JSON::Field(key: "parallelism", emit_null: false)]
    @[::YAML::Field(key: "parallelism", emit_null: false)]
    property parallelism : Int32 | Nil

    # A label query over pods that should match the pod count. Normally, the system sets this field for you. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)
    @[::JSON::Field(key: "selector", emit_null: false)]
    @[::YAML::Field(key: "selector", emit_null: false)]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # Describes the pod that will be created when executing a job. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)
    @[::JSON::Field(key: "template", emit_null: true)]
    @[::YAML::Field(key: "template", emit_null: true)]
    property template : Api::Core::V1::PodTemplateSpec

    # ttlSecondsAfterFinished limits the lifetime of a Job that has finished execution (either Complete or Failed). If this field is set, ttlSecondsAfterFinished after the Job finishes, it is eligible to be automatically deleted. When the Job is being deleted, its lifecycle guarantees (e.g. finalizers) will be honored. If this field is unset, the Job won't be automatically deleted. If this field is set to zero, the Job becomes eligible to be deleted immediately after it finishes. This field is alpha-level and is only honored by servers that enable the TTLAfterFinished feature.
    @[::JSON::Field(key: "ttlSecondsAfterFinished", emit_null: false)]
    @[::YAML::Field(key: "ttlSecondsAfterFinished", emit_null: false)]
    property ttl_seconds_after_finished : Int32 | Nil

    def initialize(*, @template : Api::Core::V1::PodTemplateSpec, @active_deadline_seconds : Int32 | Nil = nil, @backoff_limit : Int32 | Nil = nil, @completions : Int32 | Nil = nil, @manual_selector : Bool | Nil = nil, @parallelism : Int32 | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @ttl_seconds_after_finished : Int32 | Nil = nil)
    end
  end
end
