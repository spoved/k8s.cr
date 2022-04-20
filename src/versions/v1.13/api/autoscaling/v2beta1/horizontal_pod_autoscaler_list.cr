# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./horizontal_pod_autoscaler"

::K8S::Kubernetes::Resource.define_resource("autoscaling", "v2beta1", "HorizontalPodAutoscalerList",
  namespace: "::K8S::Api::Autoscaling::V2beta1",
  list: true,
  list_kind: K8S::Api::Autoscaling::V2beta1::HorizontalPodAutoscaler,
  description: "HorizontalPodAutoscaler is a list of horizontal pod autoscaler objects.",
)
