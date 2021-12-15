# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
  @[::K8S::Properties(
    metric_name: {type: String, nilable: false, key: "metricName", getter: false, setter: false},
    target_average_value: {type: Int32 | String, nilable: false, key: "targetAverageValue", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2beta1::PodsMetricSource
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # metricName is the name of the metric in question
    @[::JSON::Field(key: "metricName", emit_null: true)]
    @[::YAML::Field(key: "metricName", emit_null: true)]
    property metric_name : String

    # targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity)
    @[::JSON::Field(key: "targetAverageValue", emit_null: true)]
    @[::YAML::Field(key: "targetAverageValue", emit_null: true)]
    property target_average_value : Int32 | String

    def initialize(*, @metric_name : String, @target_average_value : Int32 | String)
    end
  end
end
