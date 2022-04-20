# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./endpoint_slice"

::K8S::Kubernetes::Resource.define_resource("discovery.k8s.io", "v1beta1", "EndpointSliceList",
  namespace: "::K8S::Api::Discovery::V1beta1",
  list: true,
  list_kind: K8S::Api::Discovery::V1beta1::EndpointSlice,
  description: "EndpointSliceList represents a list of endpoint slices",
)
