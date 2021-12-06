# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NetworkPolicyPeer describes a peer to allow traffic [to/from. Only certain combinations of fields are allowed](to/from. Only certain combinations of fields are allowed)
  @[::K8S::Properties(
    ip_block: {type: Api::Networking::V1::IPBlock, nilable: true, key: "ipBlock", getter: false, setter: false},
    namespace_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "namespaceSelector", getter: false, setter: false},
    pod_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "podSelector", getter: false, setter: false},
  )]
  class Api::Networking::V1::NetworkPolicyPeer
    include ::JSON::Serializable
    include ::YAML::Serializable

    # IPBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
    @[::JSON::Field(key: "ipBlock", emit_null: false)]
    @[::YAML::Field(key: "ipBlock", emit_null: false)]
    property ip_block : Api::Networking::V1::IPBlock | Nil

    # Selects Namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
    #
    # If PodSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects all Pods in the Namespaces selected by NamespaceSelector.
    @[::JSON::Field(key: "namespaceSelector", emit_null: false)]
    @[::YAML::Field(key: "namespaceSelector", emit_null: false)]
    property namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # This is a label selector which selects Pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
    #
    # If NamespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the Pods matching PodSelector in the policy's own Namespace.
    @[::JSON::Field(key: "podSelector", emit_null: false)]
    @[::YAML::Field(key: "podSelector", emit_null: false)]
    property pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    def initialize(*, @ip_block : Api::Networking::V1::IPBlock | Nil = nil, @namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @pod_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
