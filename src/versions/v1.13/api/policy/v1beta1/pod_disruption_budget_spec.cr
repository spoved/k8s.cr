# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
  @[::K8S::Properties(
    max_unavailable: {type: Int32 | String, nilable: true, key: "maxUnavailable", getter: false, setter: false},
    min_available: {type: Int32 | String, nilable: true, key: "minAvailable", getter: false, setter: false},
    selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
  )]
  class Api::Policy::V1beta1::PodDisruptionBudgetSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # An eviction is allowed if at most "maxUnavailable" pods selected by "selector" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with "minAvailable".
    @[::JSON::Field(key: "maxUnavailable", emit_null: false)]
    @[::YAML::Field(key: "maxUnavailable", emit_null: false)]
    property max_unavailable : Int32 | String | Nil

    # An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying "100%".
    @[::JSON::Field(key: "minAvailable", emit_null: false)]
    @[::YAML::Field(key: "minAvailable", emit_null: false)]
    property min_available : Int32 | String | Nil

    # Label query over pods whose evictions are managed by the disruption budget.
    @[::JSON::Field(key: "selector", emit_null: false)]
    @[::YAML::Field(key: "selector", emit_null: false)]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    def initialize(*, @max_unavailable : Int32 | String | Nil = nil, @min_available : Int32 | String | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
