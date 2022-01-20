# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NodeSpec; end

require "./node_config_source"
require "./taint"

module K8S
  # Namespace holding the types for `Api::Core::V1::NodeSpec`.
  module Types::Api::Core::V1::NodeSpec
    alias ValueType = ::K8S::Api::Core::V1::NodeConfigSource | String | ::Array(::K8S::Api::Core::V1::Taint) | ::Bool | Nil
    alias Instance = ::K8S::Object(ValueType)

    # If specified, the source to get node configuration from The DynamicKubeletConfig feature gate must be enabled for the Kubelet to use this field
    abstract def config_source : ::K8S::Api::Core::V1::NodeConfigSource?
    # :ditto:
    abstract def config_source! : ::K8S::Api::Core::V1::NodeConfigSource
    # :ditto:
    abstract def config_source? : ::K8S::Api::Core::V1::NodeConfigSource?
    # :ditto:
    abstract def config_source=(value : ::K8S::Api::Core::V1::NodeConfigSource?)
    # Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: [[https://issues.k8s.io/61966](https://issues.k8s.io/61966)](https://issues.k8s.io/61966](https://issues.k8s.io/61966))
    abstract def external_id : String?
    # :ditto:
    abstract def external_id! : String
    # :ditto:
    abstract def external_id? : String?
    # :ditto:
    abstract def external_id=(value : String?)
    # PodCIDR represents the pod IP range assigned to the node.
    abstract def pod_cidr : String?
    # :ditto:
    abstract def pod_cidr! : String
    # :ditto:
    abstract def pod_cidr? : String?
    # :ditto:
    abstract def pod_cidr=(value : String?)
    # ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
    abstract def provider_id : String?
    # :ditto:
    abstract def provider_id! : String
    # :ditto:
    abstract def provider_id? : String?
    # :ditto:
    abstract def provider_id=(value : String?)
    # If specified, the node's taints.
    abstract def taints : ::Array(::K8S::Api::Core::V1::Taint)?
    # :ditto:
    abstract def taints! : ::Array(::K8S::Api::Core::V1::Taint)
    # :ditto:
    abstract def taints? : ::Array(::K8S::Api::Core::V1::Taint)?
    # :ditto:
    abstract def taints=(value : ::Array(::K8S::Api::Core::V1::Taint)?)
    # Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: [[https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration](https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration)](https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration](https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration))
    abstract def unschedulable : ::Bool?
    # :ditto:
    abstract def unschedulable! : ::Bool
    # :ditto:
    abstract def unschedulable? : ::Bool?
    # :ditto:
    abstract def unschedulable=(value : ::Bool?)
  end

  # NodeSpec describes the attributes that a node is created with.
  @[::K8S::Properties(
    config_source: {key: "configSource", accessor: "config_source", kind: "::K8S::Api::Core::V1::NodeConfigSource", nilable: true, default: nil, read_only: false, description: "If specified, the source to get node configuration from The DynamicKubeletConfig feature gate must be enabled for the Kubelet to use this field", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    external_id: {key: "externalID", accessor: "external_id", kind: "String", nilable: true, default: nil, read_only: false, description: "Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: [https://issues.k8s.io/61966](https://issues.k8s.io/61966)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pod_cidr: {key: "podCIDR", accessor: "pod_cidr", kind: "String", nilable: true, default: nil, read_only: false, description: "PodCIDR represents the pod IP range assigned to the node.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    provider_id: {key: "providerID", accessor: "provider_id", kind: "String", nilable: true, default: nil, read_only: false, description: "ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    taints: {key: "taints", accessor: "taints", kind: "::Array(::K8S::Api::Core::V1::Taint)", nilable: true, default: nil, read_only: false, description: "If specified, the node's taints.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    unschedulable: {key: "unschedulable", accessor: "unschedulable", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: [https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration](https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::NodeSpec < ::K8S::Types::Api::Core::V1::NodeSpec::Instance
    include ::K8S::Types::Api::Core::V1::NodeSpec
    include ::K8S::Kubernetes::Object

    # If specified, the source to get node configuration from The DynamicKubeletConfig feature gate must be enabled for the Kubelet to use this field
    def config_source : ::K8S::Api::Core::V1::NodeConfigSource?
      self.["configSource"].as(::K8S::Api::Core::V1::NodeConfigSource?)
    end

    # :ditto:
    def config_source! : ::K8S::Api::Core::V1::NodeConfigSource
      self.["configSource"].as(::K8S::Api::Core::V1::NodeConfigSource?).not_nil!
    end

    # :ditto:
    def config_source? : ::K8S::Api::Core::V1::NodeConfigSource?
      self.["configSource"]?.as(::K8S::Api::Core::V1::NodeConfigSource?)
    end

    # :ditto:
    def config_source=(value : ::K8S::Api::Core::V1::NodeConfigSource?)
      self.["configSource"] = value
    end

    # Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: [[https://issues.k8s.io/61966](https://issues.k8s.io/61966)](https://issues.k8s.io/61966](https://issues.k8s.io/61966))
    def external_id : String?
      self.["externalID"].as(String?)
    end

    # :ditto:
    def external_id! : String
      self.["externalID"].as(String?).not_nil!
    end

    # :ditto:
    def external_id? : String?
      self.["externalID"]?.as(String?)
    end

    # :ditto:
    def external_id=(value : String?)
      self.["externalID"] = value
    end

    # PodCIDR represents the pod IP range assigned to the node.
    def pod_cidr : String?
      self.["podCIDR"].as(String?)
    end

    # :ditto:
    def pod_cidr! : String
      self.["podCIDR"].as(String?).not_nil!
    end

    # :ditto:
    def pod_cidr? : String?
      self.["podCIDR"]?.as(String?)
    end

    # :ditto:
    def pod_cidr=(value : String?)
      self.["podCIDR"] = value
    end

    # ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
    def provider_id : String?
      self.["providerID"].as(String?)
    end

    # :ditto:
    def provider_id! : String
      self.["providerID"].as(String?).not_nil!
    end

    # :ditto:
    def provider_id? : String?
      self.["providerID"]?.as(String?)
    end

    # :ditto:
    def provider_id=(value : String?)
      self.["providerID"] = value
    end

    # If specified, the node's taints.
    def taints : ::Array(::K8S::Api::Core::V1::Taint)?
      self.["taints"].as(::Array(::K8S::Api::Core::V1::Taint)?)
    end

    # :ditto:
    def taints! : ::Array(::K8S::Api::Core::V1::Taint)
      self.["taints"].as(::Array(::K8S::Api::Core::V1::Taint)?).not_nil!
    end

    # :ditto:
    def taints? : ::Array(::K8S::Api::Core::V1::Taint)?
      self.["taints"]?.as(::Array(::K8S::Api::Core::V1::Taint)?)
    end

    # :ditto:
    def taints=(value : ::Array(::K8S::Api::Core::V1::Taint)?)
      self.["taints"] = value
    end

    # Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: [[https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration](https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration)](https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration](https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration))
    def unschedulable : ::Bool?
      self.["unschedulable"].as(::Bool?)
    end

    # :ditto:
    def unschedulable! : ::Bool
      self.["unschedulable"].as(::Bool?).not_nil!
    end

    # :ditto:
    def unschedulable? : ::Bool?
      self.["unschedulable"]?.as(::Bool?)
    end

    # :ditto:
    def unschedulable=(value : ::Bool?)
      self.["unschedulable"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "configSource", accessor: "config_source", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NodeConfigSource },
        { key: "externalID", accessor: "external_id", nilable: true, read_only: false, default: nil, kind: String },
        { key: "podCIDR", accessor: "pod_cidr", nilable: true, read_only: false, default: nil, kind: String },
        { key: "providerID", accessor: "provider_id", nilable: true, read_only: false, default: nil, kind: String },
        { key: "taints", accessor: "taints", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::Taint) },
        { key: "unschedulable", accessor: "unschedulable", nilable: true, read_only: false, default: nil, kind: ::Bool },
      ])
end
  end
end
