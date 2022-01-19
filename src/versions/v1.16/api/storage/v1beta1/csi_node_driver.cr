# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1beta1::CSINodeDriver; end

require "./volume_node_resources"

module K8S
  # Namespace holding the types for `Api::Storage::V1beta1::CSINodeDriver`.
  module Types::Api::Storage::V1beta1::CSINodeDriver
    alias ValueType = ::K8S::Api::Storage::V1beta1::VolumeNodeResources | String | ::Array(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # allocatable represents the volume resources of a node that are available for scheduling.
    abstract def allocatable : ::K8S::Api::Storage::V1beta1::VolumeNodeResources?
    # :ditto:
    abstract def allocatable! : ::K8S::Api::Storage::V1beta1::VolumeNodeResources
    # :ditto:
    abstract def allocatable? : ::K8S::Api::Storage::V1beta1::VolumeNodeResources?
    # :ditto:
    abstract def allocatable=(value : ::K8S::Api::Storage::V1beta1::VolumeNodeResources?)
    # This is the name of the CSI driver that this object refers to. This MUST be the same name returned by the CSI GetPluginName() call for that driver.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # nodeID of the node from the driver point of view. This field enables Kubernetes to communicate with storage systems that do not share the same nomenclature for nodes. For example, Kubernetes may refer to a given node as "node1", but the storage system may refer to the same node as "nodeA". When Kubernetes issues a command to the storage system to attach a volume to a specific node, it can use this field to refer to the node name using the ID that the storage system will understand, e.g. "nodeA" instead of "node1". This field is required.
    abstract def node_id : String
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
    abstract def topology_keys=(value : ::Array(String)?)
  end

  # CSINodeDriver holds information about the specification of one CSI driver installed on a node
  @[::K8S::Properties(
    allocatable: {key: "allocatable", accessor: "allocatable", kind: "::K8S::Api::Storage::V1beta1::VolumeNodeResources", nilable: true, default: nil, read_only: false, description: "allocatable represents the volume resources of a node that are available for scheduling."},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "This is the name of the CSI driver that this object refers to. This MUST be the same name returned by the CSI GetPluginName() call for that driver."},
    node_id: {key: "nodeID", accessor: "node_id", kind: "String", nilable: false, default: nil, read_only: false, description: "nodeID of the node from the driver point of view. This field enables Kubernetes to communicate with storage systems that do not share the same nomenclature for nodes. For example, Kubernetes may refer to a given node as \"node1\", but the storage system may refer to the same node as \"nodeA\". When Kubernetes issues a command to the storage system to attach a volume to a specific node, it can use this field to refer to the node name using the ID that the storage system will understand, e.g. \"nodeA\" instead of \"node1\". This field is required."},
    topology_keys: {key: "topologyKeys", accessor: "topology_keys", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "topologyKeys is the list of keys supported by the driver. When a driver is initialized on a cluster, it provides a set of topology keys that it understands (e.g. [\"company.com/zone\", \"company.com/region\"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.](\"company.com/zone\", \"company.com/region\"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.)"},
  )]
  class Api::Storage::V1beta1::CSINodeDriver < ::K8S::Types::Api::Storage::V1beta1::CSINodeDriver::Instance
    include ::K8S::Types::Api::Storage::V1beta1::CSINodeDriver
    include ::K8S::Kubernetes::Object

    # allocatable represents the volume resources of a node that are available for scheduling.
    def allocatable : ::K8S::Api::Storage::V1beta1::VolumeNodeResources?
      self.["allocatable"].as(::K8S::Api::Storage::V1beta1::VolumeNodeResources?)
    end

    # :ditto:
    def allocatable! : ::K8S::Api::Storage::V1beta1::VolumeNodeResources
      self.["allocatable"].as(::K8S::Api::Storage::V1beta1::VolumeNodeResources?).not_nil!
    end

    # :ditto:
    def allocatable? : ::K8S::Api::Storage::V1beta1::VolumeNodeResources?
      self.["allocatable"]?.as(::K8S::Api::Storage::V1beta1::VolumeNodeResources?)
    end

    # :ditto:
    def allocatable=(value : ::K8S::Api::Storage::V1beta1::VolumeNodeResources?)
      self.["allocatable"] = value
    end

    # This is the name of the CSI driver that this object refers to. This MUST be the same name returned by the CSI GetPluginName() call for that driver.
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    # nodeID of the node from the driver point of view. This field enables Kubernetes to communicate with storage systems that do not share the same nomenclature for nodes. For example, Kubernetes may refer to a given node as "node1", but the storage system may refer to the same node as "nodeA". When Kubernetes issues a command to the storage system to attach a volume to a specific node, it can use this field to refer to the node name using the ID that the storage system will understand, e.g. "nodeA" instead of "node1". This field is required.
    def node_id : String
      self.["nodeID"].as(String)
    end

    # :ditto:
    def node_id! : String
      self.["nodeID"].as(String).not_nil!
    end

    # :ditto:
    def node_id? : String?
      self.["nodeID"]?.as(String?)
    end

    # :ditto:
    def node_id=(value : String)
      self.["nodeID"] = value
    end

    # topologyKeys is the list of keys supported by the driver. When a driver is initialized on a cluster, it provides a set of topology keys that it understands (e.g. [["company.com/zone", "company.com/region"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.]("company.com/zone", "company.com/region"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.)](["company.com/zone", "company.com/region"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.]("company.com/zone", "company.com/region"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.))
    def topology_keys : ::Array(String)?
      self.["topologyKeys"].as(::Array(String)?)
    end

    # :ditto:
    def topology_keys! : ::Array(String)
      self.["topologyKeys"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def topology_keys? : ::Array(String)?
      self.["topologyKeys"]?.as(::Array(String)?)
    end

    # :ditto:
    def topology_keys=(value : ::Array(String)?)
      self.["topologyKeys"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "allocatable", accessor: "allocatable", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Storage::V1beta1::VolumeNodeResources },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "nodeID", accessor: "node_id", nilable: false, read_only: false, default: nil, kind: String },
        { key: "topologyKeys", accessor: "topology_keys", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
