# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./csi_node_spec"

::K8S::Kubernetes::Resource.define_resource("storage.k8s.io", "v1", "CSINode",
  namespace: "::K8S::Api::Storage::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Storage::V1::CSINodeSpec, key: "spec", nilable: false, read_only: false, description: "spec is the specification of CSINode"},

  ],
  description: "CSINode holds information about all CSI drivers installed on a node. CSI drivers do not need to create the CSINode object directly. As long as they use the node-driver-registrar sidecar container, the kubelet will automatically populate the CSINode object for the CSI driver as part of kubelet plugin registration. CSINode has the same name as a node. If the object is missing, it means either there are no CSI Drivers available on the node, or the Kubelet version is low enough that it doesn't create this object. CSINode has an OwnerReference that points to the corresponding node object.",
  versions: [{group: "storage.k8s.io", kind: "CSINode", version: "v1"}],
)
