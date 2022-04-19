# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./metric_spec"
require "./cross_version_object_reference"

::K8S::Kubernetes::Resource.define_object("HorizontalPodAutoscalerSpec",
  namespace: "::K8S::Api::Autoscaling::V2beta1",
  properties: [

    {name: "max_replicas", kind: Int32, key: "maxReplicas", nilable: false, read_only: false, description: "maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas."},
    {name: "metrics", kind: ::Array(::K8S::Api::Autoscaling::V2beta1::MetricSpec), key: "metrics", nilable: true, read_only: false, description: "metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond."},
    {name: "min_replicas", kind: Int32, key: "minReplicas", nilable: true, read_only: false, description: "minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down. It defaults to 1 pod."},
    {name: "scale_target_ref", kind: ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference, key: "scaleTargetRef", nilable: false, read_only: false, description: "scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count."},

  ]
)
