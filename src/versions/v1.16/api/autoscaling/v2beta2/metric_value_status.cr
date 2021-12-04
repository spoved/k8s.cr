# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # MetricValueStatus holds the current value for a metric
  class Api::Autoscaling::V2beta2::MetricValueStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
    property average_utilization : Int32 | Nil

    # averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
    property average_value : Int32 | Nil

    # value is the current value of the metric (as a quantity).
    property value : Int32 | Nil

    ::YAML.mapping({
      average_utilization: {type: Int32, nilable: true, key: "averageUtilization", getter: false, setter: false},
      average_value:       {type: Int32, nilable: true, key: "averageValue", getter: false, setter: false},
      value:               {type: Int32, nilable: true, key: "value", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      average_utilization: {type: Int32, nilable: true, key: "averageUtilization", getter: false, setter: false},
      average_value:       {type: Int32, nilable: true, key: "averageValue", getter: false, setter: false},
      value:               {type: Int32, nilable: true, key: "value", getter: false, setter: false},
    }, true)

    def initialize(*, @average_utilization : Int32 | Nil = nil, @average_value : Int32 | Nil = nil, @value : Int32 | Nil = nil)
    end
  end
end
