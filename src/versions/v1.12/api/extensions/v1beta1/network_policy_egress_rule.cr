# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # DEPRECATED 1.9 - This group version of NetworkPolicyEgressRule is deprecated by [networking/v1/NetworkPolicyEgressRule. NetworkPolicyEgressRule describes a particular set of traffic that is allowed out of pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and to. This type is beta-level in 1.8](networking/v1/NetworkPolicyEgressRule. NetworkPolicyEgressRule describes a particular set of traffic that is allowed out of pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and to. This type is beta-level in 1.8)
  @[::K8S::Properties(
    ports: {type: Array(Api::Extensions::V1beta1::NetworkPolicyPort), nilable: true, key: "ports", getter: false, setter: false},
    to: {type: Array(Api::Extensions::V1beta1::NetworkPolicyPeer), nilable: true, key: "to", getter: false, setter: false},
  )]
  class Api::Extensions::V1beta1::NetworkPolicyEgressRule
    include ::JSON::Serializable
    include ::YAML::Serializable

    # List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
    @[::JSON::Field(key: "ports", emit_null: false)]
    @[::YAML::Field(key: "ports", emit_null: false)]
    property ports : Array(Api::Extensions::V1beta1::NetworkPolicyPort) | Nil

    # List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.
    @[::JSON::Field(key: "to", emit_null: false)]
    @[::YAML::Field(key: "to", emit_null: false)]
    property to : Array(Api::Extensions::V1beta1::NetworkPolicyPeer) | Nil

    def initialize(*, @ports : Array | Nil = nil, @to : Array | Nil = nil)
    end
  end
end