# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NodeSpec describes the attributes that a node is created with.
  @[::K8S::Properties(
    config_source: {type: Api::Core::V1::NodeConfigSource, nilable: true, key: "configSource", getter: false, setter: false},
    external_id: {type: String, nilable: true, key: "externalID", getter: false, setter: false},
    pod_cidr: {type: String, nilable: true, key: "podCIDR", getter: false, setter: false},
    pod_cidrs: {type: Array(String), nilable: true, key: "podCIDRs", getter: false, setter: false},
    provider_id: {type: String, nilable: true, key: "providerID", getter: false, setter: false},
    taints: {type: Array(Api::Core::V1::Taint), nilable: true, key: "taints", getter: false, setter: false},
    unschedulable: {type: Bool, nilable: true, key: "unschedulable", getter: false, setter: false},
  )]
  class Api::Core::V1::NodeSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # If specified, the source to get node configuration from The DynamicKubeletConfig feature gate must be enabled for the Kubelet to use this field
    @[::JSON::Field(key: "configSource", emit_null: false)]
    @[::YAML::Field(key: "configSource", emit_null: false)]
    property config_source : Api::Core::V1::NodeConfigSource | Nil

    # Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: [https://issues.k8s.io/61966](https://issues.k8s.io/61966)
    @[::JSON::Field(key: "externalID", emit_null: false)]
    @[::YAML::Field(key: "externalID", emit_null: false)]
    property external_id : String | Nil

    # PodCIDR represents the pod IP range assigned to the node.
    @[::JSON::Field(key: "podCIDR", emit_null: false)]
    @[::YAML::Field(key: "podCIDR", emit_null: false)]
    property pod_cidr : String | Nil

    # podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If this field is specified, the 0th entry must match the podCIDR field. It may contain at most 1 value for each of IPv4 and IPv6.
    @[::JSON::Field(key: "podCIDRs", emit_null: false)]
    @[::YAML::Field(key: "podCIDRs", emit_null: false)]
    property pod_cidrs : Array(String) | Nil

    # ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
    @[::JSON::Field(key: "providerID", emit_null: false)]
    @[::YAML::Field(key: "providerID", emit_null: false)]
    property provider_id : String | Nil

    # If specified, the node's taints.
    @[::JSON::Field(key: "taints", emit_null: false)]
    @[::YAML::Field(key: "taints", emit_null: false)]
    property taints : Array(Api::Core::V1::Taint) | Nil

    # Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: [https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration](https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration)
    @[::JSON::Field(key: "unschedulable", emit_null: false)]
    @[::YAML::Field(key: "unschedulable", emit_null: false)]
    property unschedulable : Bool | Nil

    def initialize(*, @config_source : Api::Core::V1::NodeConfigSource | Nil = nil, @external_id : String | Nil = nil, @pod_cidr : String | Nil = nil, @pod_cidrs : Array(String) | Nil = nil, @provider_id : String | Nil = nil, @taints : Array(Api::Core::V1::Taint) | Nil = nil, @unschedulable : Bool | Nil = nil)
    end
  end
end
