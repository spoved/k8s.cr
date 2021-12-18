# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NetworkPolicyIngressRule describes a particular set of traffic that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and from.
  @[::K8S::Properties(
    from: {type: Array(Api::Networking::V1::NetworkPolicyPeer), nilable: true, key: "from", getter: false, setter: false},
    ports: {type: Array(Api::Networking::V1::NetworkPolicyPort), nilable: true, key: "ports", getter: false, setter: false},
  )]
  class Api::Networking::V1::NetworkPolicyIngressRule
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
    @[::JSON::Field(key: "from", emit_null: false)]
    @[::YAML::Field(key: "from", emit_null: false)]
    property from : Array(Api::Networking::V1::NetworkPolicyPeer) | Nil

    # List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
    @[::JSON::Field(key: "ports", emit_null: false)]
    @[::YAML::Field(key: "ports", emit_null: false)]
    property ports : Array(Api::Networking::V1::NetworkPolicyPort) | Nil

    def initialize(*, @from : Array(Api::Networking::V1::NetworkPolicyPeer) | Nil = nil, @ports : Array(Api::Networking::V1::NetworkPolicyPort) | Nil = nil)
    end
  end
end
