# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./network_policy_peer"
require "./network_policy_port"

::K8S::Kubernetes::Resource.define_object("NetworkPolicyIngressRule",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "from", kind: ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPeer), key: "from", nilable: true, read_only: false, description: "List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list."},
    {name: "ports", kind: ::Array(::K8S::Api::Extensions::V1beta1::NetworkPolicyPort), key: "ports", nilable: true, read_only: false, description: "List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list."},

  ]
)
