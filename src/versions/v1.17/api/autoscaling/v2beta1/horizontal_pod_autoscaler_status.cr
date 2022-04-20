# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./horizontal_pod_autoscaler_condition"
require "./metric_status"

::K8S::Kubernetes::Resource.define_object("HorizontalPodAutoscalerStatus",
  namespace: "::K8S::Api::Autoscaling::V2beta1",
  properties: [

    {name: "conditions", kind: ::Array(::K8S::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerCondition), key: "conditions", nilable: false, read_only: false, description: "conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met."},
    {name: "current_metrics", kind: ::Array(::K8S::Api::Autoscaling::V2beta1::MetricStatus), key: "currentMetrics", nilable: true, read_only: false, description: "currentMetrics is the last read state of the metrics used by this autoscaler."},
    {name: "current_replicas", kind: Int32, key: "currentReplicas", nilable: false, read_only: false, description: "currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler."},
    {name: "desired_replicas", kind: Int32, key: "desiredReplicas", nilable: false, read_only: false, description: "desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler."},
    {name: "last_scale_time", kind: ::Time, key: "lastScaleTime", nilable: true, read_only: false, description: "lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed."},
    {name: "observed_generation", kind: Int32, key: "observedGeneration", nilable: true, read_only: false, description: "observedGeneration is the most recent generation observed by this autoscaler."},

  ]
)
