# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./horizontal_pod_autoscaler"

::K8S::Kubernetes::Resource.define_resource("autoscaling", "v1", "HorizontalPodAutoscalerList",
  namespace: "::K8S::Api::Autoscaling::V1",
  list: true,
  list_kind: K8S::Api::Autoscaling::V1::HorizontalPodAutoscaler,
  description: "list of horizontal pod autoscaler objects.",
)
