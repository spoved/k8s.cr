# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./ip_block"
require "../../../apimachinery/apis/meta/v1/label_selector"

::K8S::Kubernetes::Resource.define_object("NetworkPolicyPeer",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "ip_block", kind: ::K8S::Api::Extensions::V1beta1::IPBlock, key: "ipBlock", nilable: true, read_only: false, description: "IPBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be."},
    {name: "namespace_selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "namespaceSelector", nilable: true, read_only: false, description: "Selects Namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.\n\nIf PodSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects all Pods in the Namespaces selected by NamespaceSelector."},
    {name: "pod_selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "podSelector", nilable: true, read_only: false, description: "This is a label selector which selects Pods. This field follows standard label selector semantics; if present but empty, it selects all pods.\n\nIf NamespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the Pods matching PodSelector in the policy's own Namespace."},

  ]
)
