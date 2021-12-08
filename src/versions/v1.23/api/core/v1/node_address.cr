# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NodeAddress contains information for the node's address.
  @[::K8S::Properties(
    address: {type: String, nilable: false, key: "address", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Api::Core::V1::NodeAddress
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The node address.
    @[::JSON::Field(key: "address", emit_null: true)]
    @[::YAML::Field(key: "address", emit_null: true)]
    property address : String

    # Node address type, one of Hostname, ExternalIP or InternalIP.
    #
    # Possible enum values:
    #  - `"ExternalDNS"` identifies a DNS name which resolves to an IP address which has the characteristics of a NodeExternalIP. The IP it resolves to may or may not be a listed NodeExternalIP address.
    #  - `"ExternalIP"` identifies an IP address which is, in some way, intended to be more usable from outside the cluster then an internal IP, though no specific semantics are defined. It may be a globally routable IP, though it is not required to be. External IPs may be assigned directly to an interface on the node, like a NodeInternalIP, or alternatively, packets sent to the external IP may be NAT'ed to an internal node IP rather than being delivered directly (making the IP less efficient for node-to-node traffic than a NodeInternalIP).
    #  - `"Hostname"` identifies a name of the node. Although every node can be assumed to have a NodeAddress of this type, its exact syntax and semantics are not defined, and are not consistent between different clusters.
    #  - `"InternalDNS"` identifies a DNS name which resolves to an IP address which has the characteristics of a NodeInternalIP. The IP it resolves to may or may not be a listed NodeInternalIP address.
    #  - `"InternalIP"` identifies an IP address which is assigned to one of the node's network interfaces. Every node should have at least one address of this type. An internal IP is normally expected to be reachable from every other node, but may not be visible to hosts outside the cluster. By default it is assumed that kube-apiserver can reach node internal IPs, though it is possible to configure clusters where this is not the case. NodeInternalIP is the default type of node IP, and does not necessarily imply that the IP is ONLY reachable internally. If a node has multiple internal IPs, no specific semantics are assigned to the additional IPs.
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    def initialize(*, @address : String, @type : String)
    end
  end
end
