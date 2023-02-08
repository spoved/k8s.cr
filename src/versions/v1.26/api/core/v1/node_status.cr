# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./node_address"
require "./node_condition"
require "./node_config_status"
require "./node_daemon_endpoints"
require "./container_image"
require "./node_system_info"
require "./attached_volume"

::K8S::Kubernetes::Resource.define_object("NodeStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "addresses", kind: ::Array(::K8S::Api::Core::V1::NodeAddress), key: "addresses", nilable: true, read_only: false, description: "List of addresses reachable to the node. Queried from cloud provider, if available. More info: [https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See https://pr.k8s.io/79391 for an example.](https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See https://pr.k8s.io/79391 for an example.)"},
    {name: "allocatable", kind: Union(::Hash(String, ::Int32 | ::String)), key: "allocatable", nilable: true, read_only: false, description: "Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity."},
    {name: "capacity", kind: Union(::Hash(String, ::Int32 | ::String)), key: "capacity", nilable: true, read_only: false, description: "Capacity represents the total resources of a node. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)"},
    {name: "conditions", kind: ::Array(::K8S::Api::Core::V1::NodeCondition), key: "conditions", nilable: true, read_only: false, description: "Conditions is an array of current observed node conditions. More info: [https://kubernetes.io/docs/concepts/nodes/node/#condition](https://kubernetes.io/docs/concepts/nodes/node/#condition)"},
    {name: "config", kind: ::K8S::Api::Core::V1::NodeConfigStatus, key: "config", nilable: true, read_only: false, description: "Status of the config assigned to the node via the dynamic Kubelet config feature."},
    {name: "daemon_endpoints", kind: ::K8S::Api::Core::V1::NodeDaemonEndpoints, key: "daemonEndpoints", nilable: true, read_only: false, description: "Endpoints of daemons running on the Node."},
    {name: "images", kind: ::Array(::K8S::Api::Core::V1::ContainerImage), key: "images", nilable: true, read_only: false, description: "List of container images on this node"},
    {name: "node_info", kind: ::K8S::Api::Core::V1::NodeSystemInfo, key: "nodeInfo", nilable: true, read_only: false, description: "Set of [ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info](ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info)"},
    {name: "phase", kind: String, key: "phase", nilable: true, read_only: false, description: "NodePhase is the recently observed lifecycle phase of the node. More info: [https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.)\n\n"},
    {name: "volumes_attached", kind: ::Array(::K8S::Api::Core::V1::AttachedVolume), key: "volumesAttached", nilable: true, read_only: false, description: "List of volumes that are attached to the node."},
    {name: "volumes_in_use", kind: ::Array(String), key: "volumesInUse", nilable: true, read_only: false, description: "List of attachable volumes in use (mounted) by the node."},

  ]
)
