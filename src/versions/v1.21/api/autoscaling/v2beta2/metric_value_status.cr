# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # MetricValueStatus holds the current value for a metric
  @[::K8S::Properties(
    average_utilization: {type: Int32, nilable: true, key: "averageUtilization", getter: false, setter: false},
    average_value: {type: Int32 | String, nilable: true, key: "averageValue", getter: false, setter: false},
    value: {type: Int32 | String, nilable: true, key: "value", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2beta2::MetricValueStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
    @[::JSON::Field(key: "averageUtilization", emit_null: false)]
    @[::YAML::Field(key: "averageUtilization", emit_null: false)]
    property average_utilization : Int32 | Nil

    # averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
    @[::JSON::Field(key: "averageValue", emit_null: false)]
    @[::YAML::Field(key: "averageValue", emit_null: false)]
    property average_value : Int32 | String | Nil

    # value is the current value of the metric (as a quantity).
    @[::JSON::Field(key: "value", emit_null: false)]
    @[::YAML::Field(key: "value", emit_null: false)]
    property value : Int32 | String | Nil

    def initialize(*, @average_utilization : Int32 | Nil = nil, @average_value : Int32 | String | Nil = nil, @value : Int32 | String | Nil = nil)
    end
  end
end
