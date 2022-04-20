# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./csi_node"

::K8S::Kubernetes::Resource.define_resource("storage.k8s.io", "v1", "CSINodeList",
  namespace: "::K8S::Api::Storage::V1",
  list: true,
  list_kind: K8S::Api::Storage::V1::CSINode,
  description: "CSINodeList is a collection of CSINode objects.",
)
