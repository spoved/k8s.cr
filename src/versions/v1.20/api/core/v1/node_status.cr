# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NodeStatus is information about the current status of a node.
  @[::K8S::Properties(
    addresses: {type: Array(Api::Core::V1::NodeAddress), nilable: true, key: "addresses", getter: false, setter: false},
    allocatable: {type: Hash(String, String), nilable: true, key: "allocatable", getter: false, setter: false},
    capacity: {type: Hash(String, String), nilable: true, key: "capacity", getter: false, setter: false},
    conditions: {type: Array(Api::Core::V1::NodeCondition), nilable: true, key: "conditions", getter: false, setter: false},
    config: {type: Api::Core::V1::NodeConfigStatus, nilable: true, key: "config", getter: false, setter: false},
    daemon_endpoints: {type: Api::Core::V1::NodeDaemonEndpoints, nilable: true, key: "daemonEndpoints", getter: false, setter: false},
    images: {type: Array(Api::Core::V1::ContainerImage), nilable: true, key: "images", getter: false, setter: false},
    node_info: {type: Api::Core::V1::NodeSystemInfo, nilable: true, key: "nodeInfo", getter: false, setter: false},
    phase: {type: String, nilable: true, key: "phase", getter: false, setter: false},
    volumes_attached: {type: Array(Api::Core::V1::AttachedVolume), nilable: true, key: "volumesAttached", getter: false, setter: false},
    volumes_in_use: {type: Array(String), nilable: true, key: "volumesInUse", getter: false, setter: false},
  )]
  class Api::Core::V1::NodeStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # List of addresses reachable to the node. Queried from cloud provider, if available. More info: [https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.](https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.)
    @[::JSON::Field(key: "addresses", emit_null: false)]
    @[::YAML::Field(key: "addresses", emit_null: false)]
    property addresses : Array(Api::Core::V1::NodeAddress) | Nil

    # Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
    @[::JSON::Field(key: "allocatable", emit_null: false)]
    @[::YAML::Field(key: "allocatable", emit_null: false)]
    property allocatable : Hash(String, String) | Nil

    # Capacity represents the total resources of a node. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)
    @[::JSON::Field(key: "capacity", emit_null: false)]
    @[::YAML::Field(key: "capacity", emit_null: false)]
    property capacity : Hash(String, String) | Nil

    # Conditions is an array of current observed node conditions. More info: [https://kubernetes.io/docs/concepts/nodes/node/#condition](https://kubernetes.io/docs/concepts/nodes/node/#condition)
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(Api::Core::V1::NodeCondition) | Nil

    # Status of the config assigned to the node via the dynamic Kubelet config feature.
    @[::JSON::Field(key: "config", emit_null: false)]
    @[::YAML::Field(key: "config", emit_null: false)]
    property config : Api::Core::V1::NodeConfigStatus | Nil

    # Endpoints of daemons running on the Node.
    @[::JSON::Field(key: "daemonEndpoints", emit_null: false)]
    @[::YAML::Field(key: "daemonEndpoints", emit_null: false)]
    property daemon_endpoints : Api::Core::V1::NodeDaemonEndpoints | Nil

    # List of container images on this node
    @[::JSON::Field(key: "images", emit_null: false)]
    @[::YAML::Field(key: "images", emit_null: false)]
    property images : Array(Api::Core::V1::ContainerImage) | Nil

    # Set of [ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info](ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info)
    @[::JSON::Field(key: "nodeInfo", emit_null: false)]
    @[::YAML::Field(key: "nodeInfo", emit_null: false)]
    property node_info : Api::Core::V1::NodeSystemInfo | Nil

    # NodePhase is the recently observed lifecycle phase of the node. More info: [https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.)
    @[::JSON::Field(key: "phase", emit_null: false)]
    @[::YAML::Field(key: "phase", emit_null: false)]
    property phase : String | Nil

    # List of volumes that are attached to the node.
    @[::JSON::Field(key: "volumesAttached", emit_null: false)]
    @[::YAML::Field(key: "volumesAttached", emit_null: false)]
    property volumes_attached : Array(Api::Core::V1::AttachedVolume) | Nil

    # List of attachable volumes in use (mounted) by the node.
    @[::JSON::Field(key: "volumesInUse", emit_null: false)]
    @[::YAML::Field(key: "volumesInUse", emit_null: false)]
    property volumes_in_use : Array(String) | Nil

    def initialize(*, @addresses : Array | Nil = nil, @allocatable : Hash(String, String) | Nil = nil, @capacity : Hash(String, String) | Nil = nil, @conditions : Array | Nil = nil, @config : Api::Core::V1::NodeConfigStatus | Nil = nil, @daemon_endpoints : Api::Core::V1::NodeDaemonEndpoints | Nil = nil, @images : Array | Nil = nil, @node_info : Api::Core::V1::NodeSystemInfo | Nil = nil, @phase : String | Nil = nil, @volumes_attached : Array | Nil = nil, @volumes_in_use : Array | Nil = nil)
    end
  end
end
