# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./ip_block"
require "../../../apimachinery/apis/meta/v1/label_selector"

::K8S::Kubernetes::Resource.define_object("NetworkPolicyPeer",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "ip_block", kind: ::K8S::Api::Networking::V1::IPBlock, key: "ipBlock", nilable: true, read_only: false, description: "ipBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be."},
    {name: "namespace_selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "namespaceSelector", nilable: true, read_only: false, description: "namespaceSelector selects namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.\n\nIf podSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the namespaces selected by namespaceSelector. Otherwise it selects all pods in the namespaces selected by namespaceSelector."},
    {name: "pod_selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "podSelector", nilable: true, read_only: false, description: "podSelector is a label selector which selects pods. This field follows standard label selector semantics; if present but empty, it selects all pods.\n\nIf namespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the pods matching podSelector in the policy's own namespace."},

  ]
)
