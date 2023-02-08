# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../core/v1/node_selector"

::K8S::Kubernetes::Resource.define_object("ClusterCIDRSpec",
  namespace: "::K8S::Api::Networking::V1alpha1",
  properties: [

    {name: "ipv4", kind: String, key: "ipv4", nilable: true, read_only: false, description: "IPv4 defines an IPv4 IP block in CIDR notation(e.g. [\"10.0.0.0/8\"). At least one of IPv4 and IPv6 must be specified. This field is immutable.](\"10.0.0.0/8\"). At least one of IPv4 and IPv6 must be specified. This field is immutable.)"},
    {name: "ipv6", kind: String, key: "ipv6", nilable: true, read_only: false, description: "IPv6 defines an IPv6 IP block in CIDR notation(e.g. \"fd12:3456:789a:1::/64\"). At least one of IPv4 and IPv6 must be specified. This field is immutable."},
    {name: "node_selector", kind: ::K8S::Api::Core::V1::NodeSelector, key: "nodeSelector", nilable: true, read_only: false, description: "NodeSelector defines which nodes the config is applicable to. An empty or nil NodeSelector selects all nodes. This field is immutable."},
    {name: "per_node_host_bits", kind: Int32, key: "perNodeHostBits", nilable: false, read_only: false, description: "PerNodeHostBits defines the number of host bits to be configured per node. A subnet mask determines how much of the address is used for network bits and host bits. For example an IPv4 address of [192.168.0.0/24, splits the address into 24 bits for the network portion and 8 bits for the host portion. To allocate 256 IPs, set this field to 8 (a /24 mask for IPv4 or a /120 for IPv6). Minimum value is 4 (16 IPs). This field is immutable.](192.168.0.0/24, splits the address into 24 bits for the network portion and 8 bits for the host portion. To allocate 256 IPs, set this field to 8 (a /24 mask for IPv4 or a /120 for IPv6). Minimum value is 4 (16 IPs). This field is immutable.)"},

  ]
)
