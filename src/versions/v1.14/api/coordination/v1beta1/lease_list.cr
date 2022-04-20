# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./lease"

::K8S::Kubernetes::Resource.define_resource("coordination.k8s.io", "v1beta1", "LeaseList",
  namespace: "::K8S::Api::Coordination::V1beta1",
  list: true,
  list_kind: K8S::Api::Coordination::V1beta1::Lease,
  description: "LeaseList is a list of Lease objects.",
)
