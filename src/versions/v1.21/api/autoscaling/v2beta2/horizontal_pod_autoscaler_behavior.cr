# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # HorizontalPodAutoscalerBehavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively).
  @[::K8S::Properties(
    scale_down: {type: Api::Autoscaling::V2beta2::HPAScalingRules, nilable: true, key: "scaleDown", getter: false, setter: false},
    scale_up: {type: Api::Autoscaling::V2beta2::HPAScalingRules, nilable: true, key: "scaleUp", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2beta2::HorizontalPodAutoscalerBehavior
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # scaleDown is scaling policy for scaling Down. If not set, the default value is to allow to scale down to minReplicas pods, with a 300 second stabilization window (i.e., the highest recommendation for the last 300sec is used).
    @[::JSON::Field(key: "scaleDown", emit_null: false)]
    @[::YAML::Field(key: "scaleDown", emit_null: false)]
    property scale_down : Api::Autoscaling::V2beta2::HPAScalingRules | Nil

    # scaleUp is scaling policy for scaling Up. If not set, the default value is the higher of:
    #   * increase no more than 4 pods per 60 seconds
    #   * double the number of pods per 60 seconds
    # No stabilization is used.
    @[::JSON::Field(key: "scaleUp", emit_null: false)]
    @[::YAML::Field(key: "scaleUp", emit_null: false)]
    property scale_up : Api::Autoscaling::V2beta2::HPAScalingRules | Nil

    def initialize(*, @scale_down : Api::Autoscaling::V2beta2::HPAScalingRules | Nil = nil, @scale_up : Api::Autoscaling::V2beta2::HPAScalingRules | Nil = nil)
    end
  end
end
