# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Batch::V1::JobSpec; end

require "../../../apimachinery/apis/meta/v1/label_selector"
require "../../core/v1/pod_template_spec"

module K8S
  # Namespace holding the types for `Api::Batch::V1::JobSpec`.
  module Types::Api::Batch::V1::JobSpec
    alias ValueType = Int32 | ::Bool | ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector | ::K8S::Api::Core::V1::PodTemplateSpec | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Specifies the duration in seconds relative to the startTime that the job may be active before the system tries to terminate it; value must be positive integer
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
    # Describes the pod that will be created when executing a job. More info: [[https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/))
    abstract def template : ::K8S::Api::Core::V1::PodTemplateSpec
    # :ditto:
    abstract def template! : ::K8S::Api::Core::V1::PodTemplateSpec
    # :ditto:
    abstract def template? : ::K8S::Api::Core::V1::PodTemplateSpec?
    # :ditto:
    abstract def template=(value : ::K8S::Api::Core::V1::PodTemplateSpec)
  end

  # JobSpec describes how the job execution will look like.
  @[::K8S::Properties(
    active_deadline_seconds: {key: "activeDeadlineSeconds", accessor: "active_deadline_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Specifies the duration in seconds relative to the startTime that the job may be active before the system tries to terminate it; value must be positive integer"},
    backoff_limit: {key: "backoffLimit", accessor: "backoff_limit", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Specifies the number of retries before marking this job failed. Defaults to 6"},
    completions: {key: "completions", accessor: "completions", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Specifies the desired number of successfully finished pods the job should be run with.  Setting to nil means that the success of any pod signals the success of all pods, and allows parallelism to have any positive value.  Setting to 1 means that parallelism is limited to 1 and the success of that pod signals the success of the job. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)"},
    manual_selector: {key: "manualSelector", accessor: "manual_selector", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "manualSelector controls generation of pod labels and pod selectors. Leave `manualSelector` unset unless you are certain what you are doing. When false or unset, the system pick labels unique to this job and appends those labels to the pod template.  When true, the user is responsible for picking unique labels and specifying the selector.  Failure to pick a unique label may cause this and other jobs to not function correctly.  However, You may see `manualSelector=true` in jobs that were created with the old [`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector](`extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector)"},
    parallelism: {key: "parallelism", accessor: "parallelism", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Specifies the maximum desired number of pods the job should run at any given time. The actual number of pods running in steady state will be less than this number when ((.spec.completions - .status.successful) < .spec.parallelism), i.e. when the work left to do is less than max parallelism. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)"},
    selector: {key: "selector", accessor: "selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "A label query over pods that should match the pod count. Normally, the system sets this field for you. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors)"},
    template: {key: "template", accessor: "template", kind: "::K8S::Api::Core::V1::PodTemplateSpec", nilable: false, default: nil, read_only: false, description: "Describes the pod that will be created when executing a job. More info: [https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/](https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/)"},
  )]
  class Api::Batch::V1::JobSpec < ::K8S::Types::Api::Batch::V1::JobSpec::Instance
    include ::K8S::Types::Api::Batch::V1::JobSpec
    include ::K8S::Kubernetes::Object

    # Specifies the duration in seconds relative to the startTime that the job may be active before the system tries to terminate it; value must be positive integer
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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "activeDeadlineSeconds", accessor: "active_deadline_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "backoffLimit", accessor: "backoff_limit", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "completions", accessor: "completions", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "manualSelector", accessor: "manual_selector", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "parallelism", accessor: "parallelism", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
        { key: "template", accessor: "template", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodTemplateSpec },
      ])
end
  end
end
