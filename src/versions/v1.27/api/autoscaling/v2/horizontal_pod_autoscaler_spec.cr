# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./horizontal_pod_autoscaler_behavior"
require "./metric_spec"
require "./cross_version_object_reference"

::K8S::Kubernetes::Resource.define_object("HorizontalPodAutoscalerSpec",
  namespace: "::K8S::Api::Autoscaling::V2",
  properties: [

    {name: "behavior", kind: ::K8S::Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior, key: "behavior", nilable: true, read_only: false, description: "behavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for scale up and scale down are used."},
    {name: "max_replicas", kind: Int32, key: "maxReplicas", nilable: false, read_only: false, description: "maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas."},
    {name: "metrics", kind: ::Array(::K8S::Api::Autoscaling::V2::MetricSpec), key: "metrics", nilable: true, read_only: false, description: "metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization."},
    {name: "min_replicas", kind: Int32, key: "minReplicas", nilable: true, read_only: false, description: "minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available."},
    {name: "scale_target_ref", kind: ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference, key: "scaleTargetRef", nilable: false, read_only: false, description: "scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count."},

  ]
)
