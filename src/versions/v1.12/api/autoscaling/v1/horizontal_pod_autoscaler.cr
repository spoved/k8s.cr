# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./horizontal_pod_autoscaler_spec"
require "./horizontal_pod_autoscaler_status"

::K8S::Kubernetes::Resource.define_resource("autoscaling", "v1", "HorizontalPodAutoscaler",
  namespace: "::K8S::Api::Autoscaling::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Autoscaling::V1::HorizontalPodAutoscalerSpec, key: "spec", nilable: true, read_only: false, description: "behaviour of autoscaler. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status.)"},
    {name: "status", kind: ::K8S::Api::Autoscaling::V1::HorizontalPodAutoscalerStatus, key: "status", nilable: true, read_only: false, description: "current information about the autoscaler."},

  ],
  description: "configuration of a horizontal pod autoscaler.",
)
