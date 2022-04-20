# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./cross_version_object_reference"

::K8S::Kubernetes::Resource.define_object("HorizontalPodAutoscalerSpec",
  namespace: "::K8S::Api::Autoscaling::V1",
  properties: [

    {name: "max_replicas", kind: Int32, key: "maxReplicas", nilable: false, read_only: false, description: "upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas."},
    {name: "min_replicas", kind: Int32, key: "minReplicas", nilable: true, read_only: false, description: "minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available."},
    {name: "scale_target_ref", kind: ::K8S::Api::Autoscaling::V1::CrossVersionObjectReference, key: "scaleTargetRef", nilable: false, read_only: false, description: "reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource."},
    {name: "target_cpu_utilization_percentage", kind: Int32, key: "targetCPUUtilizationPercentage", nilable: true, read_only: false, description: "target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used."},

  ]
)
