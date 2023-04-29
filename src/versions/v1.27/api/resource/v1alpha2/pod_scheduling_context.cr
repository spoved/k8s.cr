# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./pod_scheduling_context_spec"
require "./pod_scheduling_context_status"

::K8S::Kubernetes::Resource.define_resource("resource.k8s.io", "v1alpha2", "PodSchedulingContext",
  namespace: "::K8S::Api::Resource::V1alpha2",
  properties: [

    {name: "spec", kind: ::K8S::Api::Resource::V1alpha2::PodSchedulingContextSpec, key: "spec", nilable: false, read_only: false, description: "Spec describes where resources for the Pod are needed."},
    {name: "status", kind: ::K8S::Api::Resource::V1alpha2::PodSchedulingContextStatus, key: "status", nilable: true, read_only: false, description: "Status describes where resources for the Pod can be allocated."},

  ],
  description: "PodSchedulingContext objects hold information that is needed to schedule a Pod with ResourceClaims that use \"WaitForFirstConsumer\" allocation mode.\n\nThis is an alpha type and requires enabling the DynamicResourceAllocation feature gate.",
  versions: [{group: "resource.k8s.io", kind: "PodSchedulingContext", version: "v1alpha2"}],
)
