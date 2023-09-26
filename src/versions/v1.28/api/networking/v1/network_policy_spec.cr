# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./network_policy_egress_rule"
require "./network_policy_ingress_rule"
require "../../../apimachinery/apis/meta/v1/label_selector"

::K8S::Kubernetes::Resource.define_object("NetworkPolicySpec",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "egress", kind: ::Array(::K8S::Api::Networking::V1::NetworkPolicyEgressRule), key: "egress", nilable: true, read_only: false, description: "egress is a list of egress rules to be applied to the selected pods. Outgoing traffic is allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic matches at least one egress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it selects are isolated by default). This field is beta-level in 1.8"},
    {name: "ingress", kind: ::Array(::K8S::Api::Networking::V1::NetworkPolicyIngressRule), key: "ingress", nilable: true, read_only: false, description: "ingress is a list of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default)"},
    {name: "pod_selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "podSelector", nilable: false, read_only: false, description: "podSelector selects the pods to which this NetworkPolicy object applies. The array of ingress rules is applied to any pods selected by this field. Multiple network policies can select the same set of pods. In this case, the ingress rules for each are combined additively. This field is NOT optional and follows standard label selector semantics. An empty podSelector matches all pods in this namespace."},
    {name: "policy_types", kind: ::Array(String), key: "policyTypes", nilable: true, read_only: false, description: "policyTypes is a list of rule types that the NetworkPolicy relates to. Valid options are [\"Ingress\"], [\"Egress\"], or [\"Ingress\", \"Egress\"]. If this field is not specified, it will default based on the existence of ingress or egress rules; policies that contain an egress section are assumed to affect egress, and all policies (whether or not they contain an ingress section) are assumed to affect ingress. If you want to write an egress-only policy, you must explicitly specify policyTypes [ \"Egress\" ]. Likewise, if you want to write a policy that specifies that no egress is allowed, you must specify a policyTypes value that include \"Egress\" (since such a policy would not include an egress section and would otherwise default to just [ \"Ingress\" ]). This field is beta-level in 1.8"},

  ]
)
