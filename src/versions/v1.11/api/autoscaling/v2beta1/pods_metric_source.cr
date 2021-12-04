# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
  class Api::Autoscaling::V2beta1::PodsMetricSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # metricName is the name of the metric in question
    property metric_name : String

    # targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity)
    property target_average_value : Int32

    ::YAML.mapping({
      metric_name:          {type: String, nilable: false, key: "metricName", getter: false, setter: false},
      target_average_value: {type: Int32, nilable: false, key: "targetAverageValue", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      metric_name:          {type: String, nilable: false, key: "metricName", getter: false, setter: false},
      target_average_value: {type: Int32, nilable: false, key: "targetAverageValue", getter: false, setter: false},
    }, true)

    def initialize(*, @metric_name : String, @target_average_value : Int32)
    end
  end
end
