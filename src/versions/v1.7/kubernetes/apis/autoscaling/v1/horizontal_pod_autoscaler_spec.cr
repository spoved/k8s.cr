# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # specification of a horizontal pod autoscaler.
  class Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerSpec
    # upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
    property max_replicas : Int32

    # lower limit for the number of pods that can be set by the autoscaler, default 1.
    property min_replicas : Int32 | Nil

    # reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource.
    property scale_target_ref : Kubernetes::Apis::Autoscaling::V1::CrossVersionObjectReference

    # target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.
    property target_cpu_utilization_percentage : Int32 | Nil

    ::YAML.mapping({
      max_replicas:                      {type: Int32, nilable: false, key: "maxReplicas", getter: false, setter: false},
      min_replicas:                      {type: Int32, nilable: true, key: "minReplicas", getter: false, setter: false},
      scale_target_ref:                  {type: Kubernetes::Apis::Autoscaling::V1::CrossVersionObjectReference, nilable: false, key: "scaleTargetRef", getter: false, setter: false},
      target_cpu_utilization_percentage: {type: Int32, nilable: true, key: "targetCPUUtilizationPercentage", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      max_replicas:                      {type: Int32, nilable: false, key: "maxReplicas", getter: false, setter: false},
      min_replicas:                      {type: Int32, nilable: true, key: "minReplicas", getter: false, setter: false},
      scale_target_ref:                  {type: Kubernetes::Apis::Autoscaling::V1::CrossVersionObjectReference, nilable: false, key: "scaleTargetRef", getter: false, setter: false},
      target_cpu_utilization_percentage: {type: Int32, nilable: true, key: "targetCPUUtilizationPercentage", getter: false, setter: false},
    }, true)

    def initialize(*, @max_replicas : Int32, @scale_target_ref : Kubernetes::Apis::Autoscaling::V1::CrossVersionObjectReference, @min_replicas : Int32 | Nil = nil, @target_cpu_utilization_percentage : Int32 | Nil = nil)
    end
  end
end
