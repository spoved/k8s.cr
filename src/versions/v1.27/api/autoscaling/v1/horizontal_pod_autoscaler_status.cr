# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("HorizontalPodAutoscalerStatus",
  namespace: "::K8S::Api::Autoscaling::V1",
  properties: [

    {name: "current_cpu_utilization_percentage", kind: Int32, key: "currentCPUUtilizationPercentage", nilable: true, read_only: false, description: "currentCPUUtilizationPercentage is the current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU."},
    {name: "current_replicas", kind: Int32, key: "currentReplicas", nilable: false, read_only: false, description: "currentReplicas is the current number of replicas of pods managed by this autoscaler."},
    {name: "desired_replicas", kind: Int32, key: "desiredReplicas", nilable: false, read_only: false, description: "desiredReplicas is the  desired number of replicas of pods managed by this autoscaler."},
    {name: "last_scale_time", kind: ::Time, key: "lastScaleTime", nilable: true, read_only: false, description: "lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed."},
    {name: "observed_generation", kind: Int32, key: "observedGeneration", nilable: true, read_only: false, description: "observedGeneration is the most recent generation observed by this autoscaler."},

  ]
)
