# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # MetricTarget defines the target value, average value, or average utilization of a specific metric
  @[::K8S::Properties(
    average_utilization: {type: Int32, nilable: true, key: "averageUtilization", getter: false, setter: false},
    average_value: {type: Int32 | String, nilable: true, key: "averageValue", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
    value: {type: Int32 | String, nilable: true, key: "value", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2beta2::MetricTarget
    include ::JSON::Serializable
    include ::YAML::Serializable

    # averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type
    @[::JSON::Field(key: "averageUtilization", emit_null: false)]
    @[::YAML::Field(key: "averageUtilization", emit_null: false)]
    property average_utilization : Int32 | Nil

    # averageValue is the target value of the average of the metric across all relevant pods (as a quantity)
    @[::JSON::Field(key: "averageValue", emit_null: false)]
    @[::YAML::Field(key: "averageValue", emit_null: false)]
    property average_value : Int32 | String | Nil

    # type represents whether the metric type is Utilization, Value, or AverageValue
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    # value is the target value of the metric (as a quantity).
    @[::JSON::Field(key: "value", emit_null: false)]
    @[::YAML::Field(key: "value", emit_null: false)]
    property value : Int32 | String | Nil

    def initialize(*, @type : String, @average_utilization : Int32 | Nil = nil, @average_value : Int32 | String | Nil = nil, @value : Int32 | String | Nil = nil)
    end
  end
end
