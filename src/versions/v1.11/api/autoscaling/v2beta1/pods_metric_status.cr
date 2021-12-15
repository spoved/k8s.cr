# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
  @[::K8S::Properties(
    current_average_value: {type: Int32 | String, nilable: false, key: "currentAverageValue", getter: false, setter: false},
    metric_name: {type: String, nilable: false, key: "metricName", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2beta1::PodsMetricStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity)
    @[::JSON::Field(key: "currentAverageValue", emit_null: true)]
    @[::YAML::Field(key: "currentAverageValue", emit_null: true)]
    property current_average_value : Int32 | String

    # metricName is the name of the metric in question
    @[::JSON::Field(key: "metricName", emit_null: true)]
    @[::YAML::Field(key: "metricName", emit_null: true)]
    property metric_name : String

    def initialize(*, @current_average_value : Int32 | String, @metric_name : String)
    end
  end
end
