# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
  @[::K8S::Properties(
    conditions: {type: Array(Api::Autoscaling::V2::HorizontalPodAutoscalerCondition), nilable: true, key: "conditions", getter: false, setter: false},
    current_metrics: {type: Array(Api::Autoscaling::V2::MetricStatus), nilable: true, key: "currentMetrics", getter: false, setter: false},
    current_replicas: {type: Int32, nilable: true, key: "currentReplicas", getter: false, setter: false},
    desired_replicas: {type: Int32, nilable: false, key: "desiredReplicas", getter: false, setter: false},
    last_scale_time: {type: Time, nilable: true, key: "lastScaleTime", getter: false, setter: false},
    observed_generation: {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2::HorizontalPodAutoscalerStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(Api::Autoscaling::V2::HorizontalPodAutoscalerCondition) | Nil

    # currentMetrics is the last read state of the metrics used by this autoscaler.
    @[::JSON::Field(key: "currentMetrics", emit_null: false)]
    @[::YAML::Field(key: "currentMetrics", emit_null: false)]
    property current_metrics : Array(Api::Autoscaling::V2::MetricStatus) | Nil

    # currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
    @[::JSON::Field(key: "currentReplicas", emit_null: false)]
    @[::YAML::Field(key: "currentReplicas", emit_null: false)]
    property current_replicas : Int32 | Nil

    # desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
    @[::JSON::Field(key: "desiredReplicas", emit_null: true)]
    @[::YAML::Field(key: "desiredReplicas", emit_null: true)]
    property desired_replicas : Int32

    # lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
    @[::JSON::Field(key: "lastScaleTime", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "lastScaleTime", emit_null: false, converter: K8S::TimeFormat.new)]
    property last_scale_time : Time | Nil

    # observedGeneration is the most recent generation observed by this autoscaler.
    @[::JSON::Field(key: "observedGeneration", emit_null: false)]
    @[::YAML::Field(key: "observedGeneration", emit_null: false)]
    property observed_generation : Int32 | Nil

    def initialize(*, @desired_replicas : Int32, @conditions : Array(Api::Autoscaling::V2::HorizontalPodAutoscalerCondition) | Nil = nil, @current_metrics : Array(Api::Autoscaling::V2::MetricStatus) | Nil = nil, @current_replicas : Int32 | Nil = nil, @last_scale_time : Time | Nil = nil, @observed_generation : Int32 | Nil = nil)
    end
  end
end
