# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1beta1::CSINodeDriver; end

module K8S
  # Namespace holding the types for `Api::Storage::V1beta1::CSINodeDriver`.
  module Types::Api::Storage::V1beta1::CSINodeDriver
    # This is the name of the CSI driver that this object refers to. This MUST be the same name returned by the CSI GetPluginName() call for that driver.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # nodeID of the node from the driver point of view. This field enables Kubernetes to communicate with storage systems that do not share the same nomenclature for nodes. For example, Kubernetes may refer to a given node as "node1", but the storage system may refer to the same node as "nodeA". When Kubernetes issues a command to the storage system to attach a volume to a specific node, it can use this field to refer to the node name using the ID that the storage system will understand, e.g. "nodeA" instead of "node1". This field is required.
    abstract def node_id : String?
    # :ditto:
    abstract def node_id! : String
    # :ditto:
    abstract def node_id? : String?
    # :ditto:
    abstract def node_id=(value : String)
    # topologyKeys is the list of keys supported by the driver. When a driver is initialized on a cluster, it provides a set of topology keys that it understands (e.g. [["company.com/zone", "company.com/region"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.]("company.com/zone", "company.com/region"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.)](["company.com/zone", "company.com/region"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.]("company.com/zone", "company.com/region"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.))
    abstract def topology_keys : ::Array(String)?
    # :ditto:
    abstract def topology_keys! : ::Array(String)
    # :ditto:
    abstract def topology_keys? : ::Array(String)?
    # :ditto:
    abstract def topology_keys=(value : ::Array(String))
  end

  # CSINodeDriver holds information about the specification of one CSI driver installed on a node
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "This is the name of the CSI driver that this object refers to. This MUST be the same name returned by the CSI GetPluginName() call for that driver.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    node_id: {key: "nodeID", accessor: "node_id", kind: "String", nilable: false, default: nil, read_only: false, description: "nodeID of the node from the driver point of view. This field enables Kubernetes to communicate with storage systems that do not share the same nomenclature for nodes. For example, Kubernetes may refer to a given node as \"node1\", but the storage system may refer to the same node as \"nodeA\". When Kubernetes issues a command to the storage system to attach a volume to a specific node, it can use this field to refer to the node name using the ID that the storage system will understand, e.g. \"nodeA\" instead of \"node1\". This field is required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    topology_keys: {key: "topologyKeys", accessor: "topology_keys", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "topologyKeys is the list of keys supported by the driver. When a driver is initialized on a cluster, it provides a set of topology keys that it understands (e.g. [\"company.com/zone\", \"company.com/region\"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.](\"company.com/zone\", \"company.com/region\"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Storage::V1beta1::CSINodeDriver < ::K8S::GenericObject
    include ::K8S::Types::Api::Storage::V1beta1::CSINodeDriver
    k8s_object_accessor("name", name : String, false, false, "This is the name of the CSI driver that this object refers to. This MUST be the same name returned by the CSI GetPluginName() call for that driver.")
    k8s_object_accessor("nodeID", node_id : String, false, false, "nodeID of the node from the driver point of view. This field enables Kubernetes to communicate with storage systems that do not share the same nomenclature for nodes. For example, Kubernetes may refer to a given node as \"node1\", but the storage system may refer to the same node as \"nodeA\". When Kubernetes issues a command to the storage system to attach a volume to a specific node, it can use this field to refer to the node name using the ID that the storage system will understand, e.g. \"nodeA\" instead of \"node1\". This field is required.")
    k8s_object_accessor("topologyKeys", topology_keys : ::Array(String), true, false, "topologyKeys is the list of keys supported by the driver. When a driver is initialized on a cluster, it provides a set of topology keys that it understands (e.g. [\"company.com/zone\", \"company.com/region\"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.](\"company.com/zone\", \"company.com/region\"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.)")

    def initialize(*, name : String? = nil, node_id : String? = nil, topology_keys : ::Array(String)? = nil)
      super()
      self.["name"] = name
      self.["nodeID"] = node_id
      self.["topologyKeys"] = topology_keys
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "nodeID", accessor: "node_id", nilable: false, read_only: false, default: nil, kind: String},
      {key: "topologyKeys", accessor: "topology_keys", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
    ])
  end
end
