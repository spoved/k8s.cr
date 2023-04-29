# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./node_config_source"
require "./taint"

::K8S::Kubernetes::Resource.define_object("NodeSpec",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "config_source", kind: ::K8S::Api::Core::V1::NodeConfigSource, key: "configSource", nilable: true, read_only: false, description: "Deprecated: Previously used to specify the source of the node's configuration for the DynamicKubeletConfig feature. This feature is removed."},
    {name: "external_id", kind: String, key: "externalID", nilable: true, read_only: false, description: "Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: [https://issues.k8s.io/61966](https://issues.k8s.io/61966)"},
    {name: "pod_cidr", kind: String, key: "podCIDR", nilable: true, read_only: false, description: "PodCIDR represents the pod IP range assigned to the node."},
    {name: "pod_cidrs", kind: ::Array(String), key: "podCIDRs", nilable: true, read_only: false, description: "podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If this field is specified, the 0th entry must match the podCIDR field. It may contain at most 1 value for each of IPv4 and IPv6."},
    {name: "provider_id", kind: String, key: "providerID", nilable: true, read_only: false, description: "ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>"},
    {name: "taints", kind: ::Array(::K8S::Api::Core::V1::Taint), key: "taints", nilable: true, read_only: false, description: "If specified, the node's taints."},
    {name: "unschedulable", kind: ::Bool, key: "unschedulable", nilable: true, read_only: false, description: "Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: [https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration](https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration)"},

  ]
)
