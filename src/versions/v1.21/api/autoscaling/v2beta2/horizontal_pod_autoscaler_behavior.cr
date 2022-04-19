# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./hpa_scaling_rules"

::K8S::Kubernetes::Resource.define_object("HorizontalPodAutoscalerBehavior",
  namespace: "::K8S::Api::Autoscaling::V2beta2",
  properties: [

    {name: "scale_down", kind: ::K8S::Api::Autoscaling::V2beta2::HPAScalingRules, key: "scaleDown", nilable: true, read_only: false, description: "scaleDown is scaling policy for scaling Down. If not set, the default value is to allow to scale down to minReplicas pods, with a 300 second stabilization window (i.e., the highest recommendation for the last 300sec is used)."},
    {name: "scale_up", kind: ::K8S::Api::Autoscaling::V2beta2::HPAScalingRules, key: "scaleUp", nilable: true, read_only: false, description: "scaleUp is scaling policy for scaling Up. If not set, the default value is the higher of:\n  * increase no more than 4 pods per 60 seconds\n  * double the number of pods per 60 seconds\nNo stabilization is used."},

  ]
)
