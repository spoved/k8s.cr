# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::NetworkPolicyEgressRule; end

require "./network_policy_port"
require "./network_policy_peer"

module K8S
  # Namespace holding the types for `Api::Networking::V1::NetworkPolicyEgressRule`.
  module Types::Api::Networking::V1::NetworkPolicyEgressRule
    # List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
    abstract def ports : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)?
    # :ditto:
    abstract def ports! : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)
    # :ditto:
    abstract def ports? : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)?
    # :ditto:
    abstract def ports=(value : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)?)
    # List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.
    abstract def to : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?
    # :ditto:
    abstract def to! : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)
    # :ditto:
    abstract def to? : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?
    # :ditto:
    abstract def to=(value : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?)
  end

  # NetworkPolicyEgressRule describes a particular set of traffic that is allowed out of pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and to. This type is beta-level in 1.8
  @[::K8S::Properties(
    ports: {key: "ports", accessor: "ports", kind: "::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)", nilable: true, default: nil, read_only: false, description: "List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    to: {key: "to", accessor: "to", kind: "::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)", nilable: true, default: nil, read_only: false, description: "List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Networking::V1::NetworkPolicyEgressRule < ::K8S::GenericObject
    include ::K8S::Types::Api::Networking::V1::NetworkPolicyEgressRule

    # List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
    def ports : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)?
      self.["ports"].as(::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)?)
    end

    # :ditto:
    def ports! : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)
      self.["ports"].as(::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)?).not_nil!
    end

    # :ditto:
    def ports? : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)?
      self.["ports"]?.as(::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)?)
    end

    # :ditto:
    def ports=(value : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)?)
      self.["ports"] = value
    end

    # List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.
    def to : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?
      self.["to"].as(::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?)
    end

    # :ditto:
    def to! : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)
      self.["to"].as(::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?).not_nil!
    end

    # :ditto:
    def to? : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?
      self.["to"]?.as(::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?)
    end

    # :ditto:
    def to=(value : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?)
      self.["to"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "ports", accessor: "ports", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Networking::V1::NetworkPolicyPort) },
        { key: "to", accessor: "to", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer) },
      ])
end
  end
end
