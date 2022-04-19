# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./network_policy_port"
require "./network_policy_peer"

::K8S::Kubernetes::Resource.define_object("NetworkPolicyEgressRule",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "ports", kind: ::Array(::K8S::Api::Networking::V1::NetworkPolicyPort), key: "ports", nilable: true, read_only: false, description: "List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list."},
    {name: "to", kind: ::Array(::K8S::Api::Networking::V1::NetworkPolicyPeer), key: "to", nilable: true, read_only: false, description: "List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list."},

  ]
)
