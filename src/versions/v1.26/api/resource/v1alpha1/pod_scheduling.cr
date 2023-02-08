# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./pod_scheduling_spec"
require "./pod_scheduling_status"

::K8S::Kubernetes::Resource.define_resource("resource.k8s.io", "v1alpha1", "PodScheduling",
  namespace: "::K8S::Api::Resource::V1alpha1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Resource::V1alpha1::PodSchedulingSpec, key: "spec", nilable: false, read_only: false, description: "Spec describes where resources for the Pod are needed."},
    {name: "status", kind: ::K8S::Api::Resource::V1alpha1::PodSchedulingStatus, key: "status", nilable: true, read_only: false, description: "Status describes where resources for the Pod can be allocated."},

  ],
  description: "PodScheduling objects hold information that is needed to schedule a Pod with ResourceClaims that use \"WaitForFirstConsumer\" allocation mode.\n\nThis is an alpha type and requires enabling the DynamicResourceAllocation feature gate.",
  versions: [{group: "resource.k8s.io", kind: "PodScheduling", version: "v1alpha1"}],
)
