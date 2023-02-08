# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./pod_scheduling"

::K8S::Kubernetes::Resource.define_resource("resource.k8s.io", "v1alpha1", "PodSchedulingList",
  namespace: "::K8S::Api::Resource::V1alpha1",
  list: true,
  list_kind: K8S::Api::Resource::V1alpha1::PodScheduling,
  description: "PodSchedulingList is a collection of Pod scheduling objects.",
)
