# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
  @[::K8S::Properties(
    behavior: {type: Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior, nilable: true, key: "behavior", getter: false, setter: false},
    max_replicas: {type: Int32, nilable: false, key: "maxReplicas", getter: false, setter: false},
    metrics: {type: Array(Api::Autoscaling::V2::MetricSpec), nilable: true, key: "metrics", getter: false, setter: false},
    min_replicas: {type: Int32, nilable: true, key: "minReplicas", getter: false, setter: false},
    scale_target_ref: {type: Api::Autoscaling::V2::CrossVersionObjectReference, nilable: false, key: "scaleTargetRef", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2::HorizontalPodAutoscalerSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # behavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for scale up and scale down are used.
    @[::JSON::Field(key: "behavior", emit_null: false)]
    @[::YAML::Field(key: "behavior", emit_null: false)]
    property behavior : Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior | Nil

    # maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
    @[::JSON::Field(key: "maxReplicas", emit_null: true)]
    @[::YAML::Field(key: "maxReplicas", emit_null: true)]
    property max_replicas : Int32

    # metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.
    @[::JSON::Field(key: "metrics", emit_null: false)]
    @[::YAML::Field(key: "metrics", emit_null: false)]
    property metrics : Array(Api::Autoscaling::V2::MetricSpec) | Nil

    # minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
    @[::JSON::Field(key: "minReplicas", emit_null: false)]
    @[::YAML::Field(key: "minReplicas", emit_null: false)]
    property min_replicas : Int32 | Nil

    # scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
    @[::JSON::Field(key: "scaleTargetRef", emit_null: true)]
    @[::YAML::Field(key: "scaleTargetRef", emit_null: true)]
    property scale_target_ref : Api::Autoscaling::V2::CrossVersionObjectReference

    def initialize(*, @max_replicas : Int32, @scale_target_ref : Api::Autoscaling::V2::CrossVersionObjectReference, @behavior : Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior | Nil = nil, @metrics : Array | Nil = nil, @min_replicas : Int32 | Nil = nil)
    end
  end
end
