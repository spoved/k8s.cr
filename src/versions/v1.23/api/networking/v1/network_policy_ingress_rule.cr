# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::NetworkPolicyIngressRule; end

require "./network_policy_peer"
require "./network_policy_port"

module K8S
  # Namespace holding the types for `Api::Networking::V1::NetworkPolicyIngressRule`.
  module Types::Api::Networking::V1::NetworkPolicyIngressRule
    # List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
    abstract def from : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?
    # :ditto:
    abstract def from! : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)
    # :ditto:
    abstract def from? : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?
    # :ditto:
    abstract def from=(value : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?)
    # List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
    abstract def ports : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)?
    # :ditto:
    abstract def ports! : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)
    # :ditto:
    abstract def ports? : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)?
    # :ditto:
    abstract def ports=(value : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)?)
  end

  # NetworkPolicyIngressRule describes a particular set of traffic that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and from.
  @[::K8S::Properties(
    from: {key: "from", accessor: "from", kind: "::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)", nilable: true, default: nil, read_only: false, description: "List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ports: {key: "ports", accessor: "ports", kind: "::Array(::K8S::Api::Networking::V1::NetworkPolicyPort)", nilable: true, default: nil, read_only: false, description: "List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Networking::V1::NetworkPolicyIngressRule < ::K8S::GenericObject
    include ::K8S::Types::Api::Networking::V1::NetworkPolicyIngressRule

    # List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
    def from : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?
      self.["from"].as(::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?)
    end

    # :ditto:
    def from! : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)
      self.["from"].as(::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?).not_nil!
    end

    # :ditto:
    def from? : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?
      self.["from"]?.as(::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?)
    end

    # :ditto:
    def from=(value : ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer)?)
      self.["from"] = value
    end

    # List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "from", accessor: "from", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer) },
        { key: "ports", accessor: "ports", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Networking::V1::NetworkPolicyPort) },
      ])
end
  end
end
