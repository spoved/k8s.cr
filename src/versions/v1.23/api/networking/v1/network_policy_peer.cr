# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::NetworkPolicyPeer; end

require "./ip_block"
require "../../../apimachinery/apis/meta/v1/label_selector"

module K8S
  # Namespace holding the types for `Api::Networking::V1::NetworkPolicyPeer`.
  module Types::Api::Networking::V1::NetworkPolicyPeer
    # IPBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
    abstract def ip_block : ::K8S::Api::Networking::V1::IPBlock?
    # :ditto:
    abstract def ip_block! : ::K8S::Api::Networking::V1::IPBlock
    # :ditto:
    abstract def ip_block? : ::K8S::Api::Networking::V1::IPBlock?
    # :ditto:
    abstract def ip_block=(value : ::K8S::Api::Networking::V1::IPBlock?)
    # Selects Namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
    #
    # If PodSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects all Pods in the Namespaces selected by NamespaceSelector.
    abstract def namespace_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def namespace_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def namespace_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def namespace_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    # This is a label selector which selects Pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
    #
    # If NamespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the Pods matching PodSelector in the policy's own Namespace.
    abstract def pod_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def pod_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def pod_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def pod_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
  end

  # NetworkPolicyPeer describes a peer to allow traffic [to/from. Only certain combinations of fields are allowed](to/from. Only certain combinations of fields are allowed)
  @[::K8S::Properties(
    ip_block: {key: "ipBlock", accessor: "ip_block", kind: "::K8S::Api::Networking::V1::IPBlock", nilable: true, default: nil, read_only: false, description: "IPBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespace_selector: {key: "namespaceSelector", accessor: "namespace_selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "Selects Namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.\n\nIf PodSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects all Pods in the Namespaces selected by NamespaceSelector.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pod_selector: {key: "podSelector", accessor: "pod_selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "This is a label selector which selects Pods. This field follows standard label selector semantics; if present but empty, it selects all pods.\n\nIf NamespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the Pods matching PodSelector in the policy's own Namespace.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Networking::V1::NetworkPolicyPeer < ::K8S::GenericObject
    include ::K8S::Types::Api::Networking::V1::NetworkPolicyPeer

    # IPBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
    def ip_block : ::K8S::Api::Networking::V1::IPBlock?
      self.["ipBlock"].as(::K8S::Api::Networking::V1::IPBlock?)
    end

    # :ditto:
    def ip_block! : ::K8S::Api::Networking::V1::IPBlock
      self.["ipBlock"].as(::K8S::Api::Networking::V1::IPBlock?).not_nil!
    end

    # :ditto:
    def ip_block? : ::K8S::Api::Networking::V1::IPBlock?
      self.["ipBlock"]?.as(::K8S::Api::Networking::V1::IPBlock?)
    end

    # :ditto:
    def ip_block=(value : ::K8S::Api::Networking::V1::IPBlock?)
      self.["ipBlock"] = value
    end

    # Selects Namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
    #
    # If PodSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects all Pods in the Namespaces selected by NamespaceSelector.
    def namespace_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["namespaceSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def namespace_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["namespaceSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?).not_nil!
    end

    # :ditto:
    def namespace_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["namespaceSelector"]?.as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def namespace_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
      self.["namespaceSelector"] = value
    end

    # This is a label selector which selects Pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
    #
    # If NamespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the Pods matching PodSelector in the policy's own Namespace.
    def pod_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["podSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def pod_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["podSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?).not_nil!
    end

    # :ditto:
    def pod_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["podSelector"]?.as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def pod_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
      self.["podSelector"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "ipBlock", accessor: "ip_block", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Networking::V1::IPBlock },
        { key: "namespaceSelector", accessor: "namespace_selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
        { key: "podSelector", accessor: "pod_selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
      ])
end
  end
end
