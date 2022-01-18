# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::Api::Batch::V1::JobSpec; end

require "../../../apimachinery/apis/meta/v1/label_selector"
require "../../core/v1/pod_template_spec"

module K8S
  # Namespace holding the types for `Api::Batch::V1::JobSpec`.
  #
  # NOTE: Module auto-generated by `AnyHash.define_new`.
  module Types::Api::Batch::V1::JobSpec
    alias Key = String
    alias ValueType = Int32 | String | ::Bool | ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector | ::K8S::Api::Core::V1::PodTemplateSpec | Nil
    # alias Value = ValueType | Array(Value) | Set(Value) | Hash(Key, Value)
    alias Instance = ::AnyHash(Key, ValueType)

    # Specifies the duration in seconds relative to the startTime that the job may be continuously active before the system tries to terminate it; value must be positive integer. If a Job is suspended (at creation or through an update), this timer will effectively be stopped and reset when the Job is resumed again.
    abstract def active_deadline_seconds : Int32?
    # :ditto:
    abstract def active_deadline_seconds! : Int32
    # :ditto:
    abstract def active_deadline_seconds? : Int32?
    # :ditto:
    abstract def active_deadline_seconds=(value : Int32?)
    # Specifies the number of retries before marking this job failed. Defaults to 6
    abstract def backoff_limit : Int32?
    # :ditto:
    abstract def backoff_limit! : Int32
    # :ditto:
    abstract def backoff_limit? : Int32?
    # :ditto:
    abstract def backoff_limit=(value : Int32?)
    # CompletionMode specifies how Pod completions are tracked. It can be `NonIndexed` (default) or `Indexed`.
    #
    # `NonIndexed` means that the Job is considered complete when there have been .spec.completions successfully completed Pods. Each Pod completion is homologous to each other.
    #
    # `Indexed` means that the Pods of a Job get an associated completion index from 0 to (.spec.completions - 1), available in the annotation [[batch.kubernetes.io/job-completion-index. The Job is considered complete when there is one successfully completed Pod for each index. When value is `Indexed`, .spec.completions must be specified and `.spec.parallelism` must be less than or equal to 10^5.](batch.kubernetes.io/job-completion-index. The Job is considered complete when there is one successfully completed Pod for each index. When value is `Indexed`, .spec.completions must be specified and `.spec.parallelism` must be less than or equal to 10^5.)]([batch.kubernetes.io/job-completion-index. The Job is considered complete when there is one successfully completed Pod for each index. When value is `Indexed`, .spec.completions must be specified and `.spec.parallelism` must be less than or equal to 10^5.](batch.kubernetes.io/job-completion-index. The Job is considered complete when there is one successfully completed Pod for each index. When value is `Indexed`, .spec.completions must be specified and `.spec.parallelism` must be less than or equal to 10^5.))
    #
    # This field is alpha-level and is only honored by servers that enable the IndexedJob feature gate. More completion modes can be added in the future. If the Job controller observes a mode that it doesn't recognize, the controller skips updates for the Job.
    abstract def completion_mode : String?
    # :ditto:
    abstract def completion_mode! : String
    # :ditto:
    abstract def completion_mode? : String?
    # :ditto:
    abstract def completion_mode=(value : String?)
    # Specifies the desired number of successfully finished pods the job should be run with.  Setting to nil means that the success of any pod signals the success of all pods, and allows parallelism to have any positive value.  Setting to 1 means that parallelism is limited to 1 and the success of that pod signals the success of the job. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/))
    abstract def completions : Int32?
    # :ditto:
    abstract def completions! : Int32
    # :ditto:
    abstract def completions? : Int32?
    # :ditto:
    abstract def completions=(value : Int32?)
    # manualSelector controls generation of pod labels and pod selectors. Leave `manualSelector` unset unless you are certain what you are doing. When false or unset, the system pick labels unique to this job and appends those labels to the pod template.  When true, the user is responsible for picking unique labels and specifying the selector.  Failure to pick a unique label may cause this and other jobs to not function correctly.  However, You may see `manualSelector=true` in jobs that were created with the old [[`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector](`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector)]([`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector](`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector))
    abstract def manual_selector : ::Bool?
    # :ditto:
    abstract def manual_selector! : ::Bool
    # :ditto:
    abstract def manual_selector? : ::Bool?
    # :ditto:
    abstract def manual_selector=(value : ::Bool?)
    # Specifies the maximum desired number of pods the job should run at any given time. The actual number of pods running in steady state will be less than this number when ((.spec.completions - .status.successful) < .spec.parallelism), i.e. when the work left to do is less than max parallelism. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/))
    abstract def parallelism : Int32?
    # :ditto:
    abstract def parallelism! : Int32
    # :ditto:
    abstract def parallelism? : Int32?
    # :ditto:
    abstract def parallelism=(value : Int32?)
    # A label query over pods that should match the pod count. Normally, the system sets this field for you. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors))
    abstract def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    # Suspend specifies whether the Job controller should create Pods or not. If a Job is created with suspend set to true, no Pods are created by the Job controller. If a Job is suspended after creation (i.e. the flag goes from false to true), the Job controller will delete all active Pods associated with this Job. Users must design their workload to gracefully handle this. Suspending a Job will reset the StartTime field of the Job, effectively resetting the ActiveDeadlineSeconds timer too. This is an alpha field and requires the SuspendJob feature gate to be enabled; otherwise this field may not be set to true. Defaults to false.
    abstract def suspend : ::Bool?
    # :ditto:
    abstract def suspend! : ::Bool
    # :ditto:
    abstract def suspend? : ::Bool?
    # :ditto:
    abstract def suspend=(value : ::Bool?)
    # Describes the pod that will be created when executing a job. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/))
    abstract def template : ::K8S::Api::Core::V1::PodTemplateSpec
    # :ditto:
    abstract def template! : ::K8S::Api::Core::V1::PodTemplateSpec
    # :ditto:
    abstract def template? : ::K8S::Api::Core::V1::PodTemplateSpec?
    # :ditto:
    abstract def template=(value : ::K8S::Api::Core::V1::PodTemplateSpec)
    # ttlSecondsAfterFinished limits the lifetime of a Job that has finished execution (either Complete or Failed). If this field is set, ttlSecondsAfterFinished after the Job finishes, it is eligible to be automatically deleted. When the Job is being deleted, its lifecycle guarantees (e.g. finalizers) will be honored. If this field is unset, the Job won't be automatically deleted. If this field is set to zero, the Job becomes eligible to be deleted immediately after it finishes. This field is alpha-level and is only honored by servers that enable the TTLAfterFinished feature.
    abstract def ttl_seconds_after_finished : Int32?
    # :ditto:
    abstract def ttl_seconds_after_finished! : Int32
    # :ditto:
    abstract def ttl_seconds_after_finished? : Int32?
    # :ditto:
    abstract def ttl_seconds_after_finished=(value : Int32?)
  end

  # JobSpec describes how the job execution will look like.
  @[::K8S::Properties(
    active_deadline_seconds: {key: "activeDeadlineSeconds", accessor: "active_deadline_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Specifies the duration in seconds relative to the startTime that the job may be continuously active before the system tries to terminate it; value must be positive integer. If a Job is suspended (at creation or through an update), this timer will effectively be stopped and reset when the Job is resumed again."},
    backoff_limit: {key: "backoffLimit", accessor: "backoff_limit", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Specifies the number of retries before marking this job failed. Defaults to 6"},
    completion_mode: {key: "completionMode", accessor: "completion_mode", kind: "String", nilable: true, default: nil, read_only: false, description: "CompletionMode specifies how Pod completions are tracked. It can be `NonIndexed` (default) or `Indexed`.\n\n`NonIndexed` means that the Job is considered complete when there have been .spec.completions successfully completed Pods. Each Pod completion is homologous to each other.\n\n`Indexed` means that the Pods of a Job get an associated completion index from 0 to (.spec.completions - 1), available in the annotation [batch.kubernetes.io/job-completion-index. The Job is considered complete when there is one successfully completed Pod for each index. When value is `Indexed`, .spec.completions must be specified and `.spec.parallelism` must be less than or equal to 10^5.](batch.kubernetes.io/job-completion-index. The Job is considered complete when there is one successfully completed Pod for each index. When value is `Indexed`, .spec.completions must be specified and `.spec.parallelism` must be less than or equal to 10^5.)\n\nThis field is alpha-level and is only honored by servers that enable the IndexedJob feature gate. More completion modes can be added in the future. If the Job controller observes a mode that it doesn't recognize, the controller skips updates for the Job."},
    completions: {key: "completions", accessor: "completions", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Specifies the desired number of successfully finished pods the job should be run with.  Setting to nil means that the success of any pod signals the success of all pods, and allows parallelism to have any positive value.  Setting to 1 means that parallelism is limited to 1 and the success of that pod signals the success of the job. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)"},
    manual_selector: {key: "manualSelector", accessor: "manual_selector", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "manualSelector controls generation of pod labels and pod selectors. Leave `manualSelector` unset unless you are certain what you are doing. When false or unset, the system pick labels unique to this job and appends those labels to the pod template.  When true, the user is responsible for picking unique labels and specifying the selector.  Failure to pick a unique label may cause this and other jobs to not function correctly.  However, You may see `manualSelector=true` in jobs that were created with the old [`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector](`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector)"},
    parallelism: {key: "parallelism", accessor: "parallelism", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Specifies the maximum desired number of pods the job should run at any given time. The actual number of pods running in steady state will be less than this number when ((.spec.completions - .status.successful) < .spec.parallelism), i.e. when the work left to do is less than max parallelism. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)"},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "A label query over pods that should match the pod count. Normally, the system sets this field for you. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)"},
    suspend: {key: "suspend", accessor: "suspend", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Suspend specifies whether the Job controller should create Pods or not. If a Job is created with suspend set to true, no Pods are created by the Job controller. If a Job is suspended after creation (i.e. the flag goes from false to true), the Job controller will delete all active Pods associated with this Job. Users must design their workload to gracefully handle this. Suspending a Job will reset the StartTime field of the Job, effectively resetting the ActiveDeadlineSeconds timer too. This is an alpha field and requires the SuspendJob feature gate to be enabled; otherwise this field may not be set to true. Defaults to false."},
    template: {key: "template", accessor: "template", kind: "::K8S::Api::Core::V1::PodTemplateSpec", nilable: false, default: nil, read_only: false, description: "Describes the pod that will be created when executing a job. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)"},
    ttl_seconds_after_finished: {key: "ttlSecondsAfterFinished", accessor: "ttl_seconds_after_finished", kind: "Int32", nilable: true, default: nil, read_only: false, description: "ttlSecondsAfterFinished limits the lifetime of a Job that has finished execution (either Complete or Failed). If this field is set, ttlSecondsAfterFinished after the Job finishes, it is eligible to be automatically deleted. When the Job is being deleted, its lifecycle guarantees (e.g. finalizers) will be honored. If this field is unset, the Job won't be automatically deleted. If this field is set to zero, the Job becomes eligible to be deleted immediately after it finishes. This field is alpha-level and is only honored by servers that enable the TTLAfterFinished feature."},
  )]
  class Api::Batch::V1::JobSpec < ::K8S::Types::Api::Batch::V1::JobSpec::Instance
    include ::K8S::Types::Api::Batch::V1::JobSpec
    include ::K8S::Kubernetes::Object

    # Specifies the duration in seconds relative to the startTime that the job may be continuously active before the system tries to terminate it; value must be positive integer. If a Job is suspended (at creation or through an update), this timer will effectively be stopped and reset when the Job is resumed again.
    def active_deadline_seconds : Int32?
      self.["activeDeadlineSeconds"].as(Int32?)
    end

    # :ditto:
    def active_deadline_seconds! : Int32
      self.["activeDeadlineSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def active_deadline_seconds? : Int32?
      self.["activeDeadlineSeconds"]?.as(Int32?)
    end

    # :ditto:
    def active_deadline_seconds=(value : Int32?)
      self.["activeDeadlineSeconds"] = value
    end

    # Specifies the number of retries before marking this job failed. Defaults to 6
    def backoff_limit : Int32?
      self.["backoffLimit"].as(Int32?)
    end

    # :ditto:
    def backoff_limit! : Int32
      self.["backoffLimit"].as(Int32?).not_nil!
    end

    # :ditto:
    def backoff_limit? : Int32?
      self.["backoffLimit"]?.as(Int32?)
    end

    # :ditto:
    def backoff_limit=(value : Int32?)
      self.["backoffLimit"] = value
    end

    # CompletionMode specifies how Pod completions are tracked. It can be `NonIndexed` (default) or `Indexed`.
    #
    # `NonIndexed` means that the Job is considered complete when there have been .spec.completions successfully completed Pods. Each Pod completion is homologous to each other.
    #
    # `Indexed` means that the Pods of a Job get an associated completion index from 0 to (.spec.completions - 1), available in the annotation [[batch.kubernetes.io/job-completion-index. The Job is considered complete when there is one successfully completed Pod for each index. When value is `Indexed`, .spec.completions must be specified and `.spec.parallelism` must be less than or equal to 10^5.](batch.kubernetes.io/job-completion-index. The Job is considered complete when there is one successfully completed Pod for each index. When value is `Indexed`, .spec.completions must be specified and `.spec.parallelism` must be less than or equal to 10^5.)]([batch.kubernetes.io/job-completion-index. The Job is considered complete when there is one successfully completed Pod for each index. When value is `Indexed`, .spec.completions must be specified and `.spec.parallelism` must be less than or equal to 10^5.](batch.kubernetes.io/job-completion-index. The Job is considered complete when there is one successfully completed Pod for each index. When value is `Indexed`, .spec.completions must be specified and `.spec.parallelism` must be less than or equal to 10^5.))
    #
    # This field is alpha-level and is only honored by servers that enable the IndexedJob feature gate. More completion modes can be added in the future. If the Job controller observes a mode that it doesn't recognize, the controller skips updates for the Job.
    def completion_mode : String?
      self.["completionMode"].as(String?)
    end

    # :ditto:
    def completion_mode! : String
      self.["completionMode"].as(String?).not_nil!
    end

    # :ditto:
    def completion_mode? : String?
      self.["completionMode"]?.as(String?)
    end

    # :ditto:
    def completion_mode=(value : String?)
      self.["completionMode"] = value
    end

    # Specifies the desired number of successfully finished pods the job should be run with.  Setting to nil means that the success of any pod signals the success of all pods, and allows parallelism to have any positive value.  Setting to 1 means that parallelism is limited to 1 and the success of that pod signals the success of the job. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/))
    def completions : Int32?
      self.["completions"].as(Int32?)
    end

    # :ditto:
    def completions! : Int32
      self.["completions"].as(Int32?).not_nil!
    end

    # :ditto:
    def completions? : Int32?
      self.["completions"]?.as(Int32?)
    end

    # :ditto:
    def completions=(value : Int32?)
      self.["completions"] = value
    end

    # manualSelector controls generation of pod labels and pod selectors. Leave `manualSelector` unset unless you are certain what you are doing. When false or unset, the system pick labels unique to this job and appends those labels to the pod template.  When true, the user is responsible for picking unique labels and specifying the selector.  Failure to pick a unique label may cause this and other jobs to not function correctly.  However, You may see `manualSelector=true` in jobs that were created with the old [[`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector](`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector)]([`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector](`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector))
    def manual_selector : ::Bool?
      self.["manualSelector"].as(::Bool?)
    end

    # :ditto:
    def manual_selector! : ::Bool
      self.["manualSelector"].as(::Bool?).not_nil!
    end

    # :ditto:
    def manual_selector? : ::Bool?
      self.["manualSelector"]?.as(::Bool?)
    end

    # :ditto:
    def manual_selector=(value : ::Bool?)
      self.["manualSelector"] = value
    end

    # Specifies the maximum desired number of pods the job should run at any given time. The actual number of pods running in steady state will be less than this number when ((.spec.completions - .status.successful) < .spec.parallelism), i.e. when the work left to do is less than max parallelism. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/))
    def parallelism : Int32?
      self.["parallelism"].as(Int32?)
    end

    # :ditto:
    def parallelism! : Int32
      self.["parallelism"].as(Int32?).not_nil!
    end

    # :ditto:
    def parallelism? : Int32?
      self.["parallelism"]?.as(Int32?)
    end

    # :ditto:
    def parallelism=(value : Int32?)
      self.["parallelism"] = value
    end

    # A label query over pods that should match the pod count. Normally, the system sets this field for you. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors))
    def selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["selector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["selector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?).not_nil!
    end

    # :ditto:
    def selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["selector"]?.as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
      self.["selector"] = value
    end

    # Suspend specifies whether the Job controller should create Pods or not. If a Job is created with suspend set to true, no Pods are created by the Job controller. If a Job is suspended after creation (i.e. the flag goes from false to true), the Job controller will delete all active Pods associated with this Job. Users must design their workload to gracefully handle this. Suspending a Job will reset the StartTime field of the Job, effectively resetting the ActiveDeadlineSeconds timer too. This is an alpha field and requires the SuspendJob feature gate to be enabled; otherwise this field may not be set to true. Defaults to false.
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

    # Describes the pod that will be created when executing a job. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/))
    def template : ::K8S::Api::Core::V1::PodTemplateSpec
      self.["template"].as(::K8S::Api::Core::V1::PodTemplateSpec)
    end

    # :ditto:
    def template! : ::K8S::Api::Core::V1::PodTemplateSpec
      self.["template"].as(::K8S::Api::Core::V1::PodTemplateSpec).not_nil!
    end

    # :ditto:
    def template? : ::K8S::Api::Core::V1::PodTemplateSpec?
      self.["template"]?.as(::K8S::Api::Core::V1::PodTemplateSpec?)
    end

    # :ditto:
    def template=(value : ::K8S::Api::Core::V1::PodTemplateSpec)
      self.["template"] = value
    end

    # ttlSecondsAfterFinished limits the lifetime of a Job that has finished execution (either Complete or Failed). If this field is set, ttlSecondsAfterFinished after the Job finishes, it is eligible to be automatically deleted. When the Job is being deleted, its lifecycle guarantees (e.g. finalizers) will be honored. If this field is unset, the Job won't be automatically deleted. If this field is set to zero, the Job becomes eligible to be deleted immediately after it finishes. This field is alpha-level and is only honored by servers that enable the TTLAfterFinished feature.
    def ttl_seconds_after_finished : Int32?
      self.["ttlSecondsAfterFinished"].as(Int32?)
    end

    # :ditto:
    def ttl_seconds_after_finished! : Int32
      self.["ttlSecondsAfterFinished"].as(Int32?).not_nil!
    end

    # :ditto:
    def ttl_seconds_after_finished? : Int32?
      self.["ttlSecondsAfterFinished"]?.as(Int32?)
    end

    # :ditto:
    def ttl_seconds_after_finished=(value : Int32?)
      self.["ttlSecondsAfterFinished"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "activeDeadlineSeconds", accessor: "active_deadline_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "backoffLimit", accessor: "backoff_limit", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "completionMode", accessor: "completion_mode", nilable: true, read_only: false, default: nil, kind: String },
        { key: "completions", accessor: "completions", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "manualSelector", accessor: "manual_selector", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "parallelism", accessor: "parallelism", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
        { key: "suspend", accessor: "suspend", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "template", accessor: "template", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodTemplateSpec },
        { key: "ttlSecondsAfterFinished", accessor: "ttl_seconds_after_finished", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
