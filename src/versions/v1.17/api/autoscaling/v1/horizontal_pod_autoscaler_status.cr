# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # current status of a horizontal pod autoscaler
  @[::K8S::Properties(
    current_cpu_utilization_percentage: {type: Int32, nilable: true, key: "currentCPUUtilizationPercentage", getter: false, setter: false},
    current_replicas: {type: Int32, nilable: false, key: "currentReplicas", getter: false, setter: false},
    desired_replicas: {type: Int32, nilable: false, key: "desiredReplicas", getter: false, setter: false},
    last_scale_time: {type: Time, nilable: true, key: "lastScaleTime", getter: false, setter: false},
    observed_generation: {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
  )]
  class Api::Autoscaling::V1::HorizontalPodAutoscalerStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
    @[::JSON::Field(key: "currentCPUUtilizationPercentage", emit_null: false)]
    @[::YAML::Field(key: "currentCPUUtilizationPercentage", emit_null: false)]
    property current_cpu_utilization_percentage : Int32 | Nil

    # current number of replicas of pods managed by this autoscaler.
    @[::JSON::Field(key: "currentReplicas", emit_null: true)]
    @[::YAML::Field(key: "currentReplicas", emit_null: true)]
    property current_replicas : Int32

    # desired number of replicas of pods managed by this autoscaler.
    @[::JSON::Field(key: "desiredReplicas", emit_null: true)]
    @[::YAML::Field(key: "desiredReplicas", emit_null: true)]
    property desired_replicas : Int32

    # last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.
    @[::JSON::Field(key: "lastScaleTime", emit_null: false, converter: Time::Format.new("%Y-%m-%dT%TZ"))]
    @[::YAML::Field(key: "lastScaleTime", emit_null: false, converter: Time::Format.new("%Y-%m-%dT%TZ"))]
    property last_scale_time : Time | Nil

    # most recent generation observed by this autoscaler.
    @[::JSON::Field(key: "observedGeneration", emit_null: false)]
    @[::YAML::Field(key: "observedGeneration", emit_null: false)]
    property observed_generation : Int32 | Nil

    def initialize(*, @current_replicas : Int32, @desired_replicas : Int32, @current_cpu_utilization_percentage : Int32 | Nil = nil, @last_scale_time : Time | Nil = nil, @observed_generation : Int32 | Nil = nil)
    end
  end
end
