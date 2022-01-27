# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Extensions::V1beta1::NetworkPolicyEgressRule; end

require "./network_policy_port"
require "./network_policy_peer"

module K8S
  # Namespace holding the types for `Api::Extensions::V1beta1::NetworkPolicyEgressRule`.
  module Types::Api::Extensions::V1beta1::NetworkPolicyEgressRule
    # List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
    abstract def ports : ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPort)?
    # :ditto:
    abstract def ports! : ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPort)
    # :ditto:
    abstract def ports? : ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPort)?
    # :ditto:
    abstract def ports=(value : ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPort))
    # List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.
    abstract def to : ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPeer)?
    # :ditto:
    abstract def to! : ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPeer)
    # :ditto:
    abstract def to? : ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPeer)?
    # :ditto:
    abstract def to=(value : ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPeer))
  end

  # DEPRECATED 1.9 - This group version of NetworkPolicyEgressRule is deprecated by [networking/v1/NetworkPolicyEgressRule. NetworkPolicyEgressRule describes a particular set of traffic that is allowed out of pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and to. This type is beta-level in 1.8](networking/v1/NetworkPolicyEgressRule. NetworkPolicyEgressRule describes a particular set of traffic that is allowed out of pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and to. This type is beta-level in 1.8)
  @[::K8S::Properties(
    ports: {key: "ports", accessor: "ports", kind: "::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPort)", nilable: true, default: nil, read_only: false, description: "List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    to: {key: "to", accessor: "to", kind: "::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPeer)", nilable: true, default: nil, read_only: false, description: "List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Extensions::V1beta1::NetworkPolicyEgressRule < ::K8S::GenericObject
    include ::K8S::Types::Api::Extensions::V1beta1::NetworkPolicyEgressRule
    k8s_object_accessor("ports", ports : ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPort), true, false, "List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.")
    k8s_object_accessor("to", to : ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPeer), true, false, "List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.")

    def initialize(*, ports : ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPort)? = nil, to : ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPeer)? = nil)
      super()
      self.["ports"] = ports
      self.["to"] = to
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "ports", accessor: "ports", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPort)},
      {key: "to", accessor: "to", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPeer)},
    ])
  end
end
