# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./priority_class"

::K8S::Kubernetes::Resource.define_resource("scheduling.k8s.io", "v1beta1", "PriorityClassList",
  namespace: "::K8S::Api::Scheduling::V1beta1",
  list: true,
  list_kind: K8S::Api::Scheduling::V1beta1::PriorityClass,
  description: "PriorityClassList is a collection of priority classes.",
)
