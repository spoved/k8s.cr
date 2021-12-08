# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # HPAScalingPolicy is a single policy which must hold true for a specified past interval.
  @[::K8S::Properties(
    period_seconds: {type: Int32, nilable: false, key: "periodSeconds", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
    value: {type: Int32, nilable: false, key: "value", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2::HPAScalingPolicy
    include ::JSON::Serializable
    include ::YAML::Serializable

    # PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
    @[::JSON::Field(key: "periodSeconds", emit_null: true)]
    @[::YAML::Field(key: "periodSeconds", emit_null: true)]
    property period_seconds : Int32

    # Type is used to specify the scaling policy.
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    # Value contains the amount of change which is permitted by the policy. It must be greater than zero
    @[::JSON::Field(key: "value", emit_null: true)]
    @[::YAML::Field(key: "value", emit_null: true)]
    property value : Int32

    def initialize(*, @period_seconds : Int32, @type : String, @value : Int32)
    end
  end
end
