# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NodeStatus; end

require "./node_address"
require "./node_condition"
require "./node_config_status"
require "./node_daemon_endpoints"
require "./container_image"
require "./node_system_info"
require "./attached_volume"

module K8S
  # Namespace holding the types for `Api::Core::V1::NodeStatus`.
  module Types::Api::Core::V1::NodeStatus
    alias ValueType = ::Array(::K8S::Api::Core::V1::NodeAddress) | ::Hash(String, ::Int32 | ::String) | ::Array(::K8S::Api::Core::V1::NodeCondition) | ::K8S::Api::Core::V1::NodeConfigStatus | ::K8S::Api::Core::V1::NodeDaemonEndpoints | ::Array(::K8S::Api::Core::V1::ContainerImage) | ::K8S::Api::Core::V1::NodeSystemInfo | String | ::Array(::K8S::Api::Core::V1::AttachedVolume) | ::Array(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # List of addresses reachable to the node. Queried from cloud provider, if available. More info: [[https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.](https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.)](https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.](https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.))
    abstract def addresses : ::Array(::K8S::Api::Core::V1::NodeAddress)?
    # :ditto:
    abstract def addresses! : ::Array(::K8S::Api::Core::V1::NodeAddress)
    # :ditto:
    abstract def addresses? : ::Array(::K8S::Api::Core::V1::NodeAddress)?
    # :ditto:
    abstract def addresses=(value : ::Array(::K8S::Api::Core::V1::NodeAddress)?)
    # Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
    abstract def allocatable : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def allocatable! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def allocatable? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def allocatable=(value : ::Hash(String, ::Int32 | ::String)?)
    # Capacity represents the total resources of a node. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity))
    abstract def capacity : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def capacity! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def capacity? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def capacity=(value : ::Hash(String, ::Int32 | ::String)?)
    # Conditions is an array of current observed node conditions. More info: [[https://kubernetes.io/docs/concepts/nodes/node/#condition](https://kubernetes.io/docs/concepts/nodes/node/#condition)](https://kubernetes.io/docs/concepts/nodes/node/#condition](https://kubernetes.io/docs/concepts/nodes/node/#condition))
    abstract def conditions : ::Array(::K8S::Api::Core::V1::NodeCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Core::V1::NodeCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Core::V1::NodeCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Core::V1::NodeCondition)?)
    # Status of the config assigned to the node via the dynamic Kubelet config feature.
    abstract def config : ::K8S::Api::Core::V1::NodeConfigStatus?
    # :ditto:
    abstract def config! : ::K8S::Api::Core::V1::NodeConfigStatus
    # :ditto:
    abstract def config? : ::K8S::Api::Core::V1::NodeConfigStatus?
    # :ditto:
    abstract def config=(value : ::K8S::Api::Core::V1::NodeConfigStatus?)
    # Endpoints of daemons running on the Node.
    abstract def daemon_endpoints : ::K8S::Api::Core::V1::NodeDaemonEndpoints?
    # :ditto:
    abstract def daemon_endpoints! : ::K8S::Api::Core::V1::NodeDaemonEndpoints
    # :ditto:
    abstract def daemon_endpoints? : ::K8S::Api::Core::V1::NodeDaemonEndpoints?
    # :ditto:
    abstract def daemon_endpoints=(value : ::K8S::Api::Core::V1::NodeDaemonEndpoints?)
    # List of container images on this node
    abstract def images : ::Array(::K8S::Api::Core::V1::ContainerImage)?
    # :ditto:
    abstract def images! : ::Array(::K8S::Api::Core::V1::ContainerImage)
    # :ditto:
    abstract def images? : ::Array(::K8S::Api::Core::V1::ContainerImage)?
    # :ditto:
    abstract def images=(value : ::Array(::K8S::Api::Core::V1::ContainerImage)?)
    # Set of [[ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info](ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info)]([ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info](ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info))
    abstract def node_info : ::K8S::Api::Core::V1::NodeSystemInfo?
    # :ditto:
    abstract def node_info! : ::K8S::Api::Core::V1::NodeSystemInfo
    # :ditto:
    abstract def node_info? : ::K8S::Api::Core::V1::NodeSystemInfo?
    # :ditto:
    abstract def node_info=(value : ::K8S::Api::Core::V1::NodeSystemInfo?)
    # NodePhase is the recently observed lifecycle phase of the node. More info: [[https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.)](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.))
    abstract def phase : String?
    # :ditto:
    abstract def phase! : String
    # :ditto:
    abstract def phase? : String?
    # :ditto:
    abstract def phase=(value : String?)
    # List of volumes that are attached to the node.
    abstract def volumes_attached : ::Array(::K8S::Api::Core::V1::AttachedVolume)?
    # :ditto:
    abstract def volumes_attached! : ::Array(::K8S::Api::Core::V1::AttachedVolume)
    # :ditto:
    abstract def volumes_attached? : ::Array(::K8S::Api::Core::V1::AttachedVolume)?
    # :ditto:
    abstract def volumes_attached=(value : ::Array(::K8S::Api::Core::V1::AttachedVolume)?)
    # List of attachable volumes in use (mounted) by the node.
    abstract def volumes_in_use : ::Array(String)?
    # :ditto:
    abstract def volumes_in_use! : ::Array(String)
    # :ditto:
    abstract def volumes_in_use? : ::Array(String)?
    # :ditto:
    abstract def volumes_in_use=(value : ::Array(String)?)
  end

  # NodeStatus is information about the current status of a node.
  @[::K8S::Properties(
    addresses: {key: "addresses", accessor: "addresses", kind: "::Array(::K8S::Api::Core::V1::NodeAddress)", nilable: true, default: nil, read_only: false, description: "List of addresses reachable to the node. Queried from cloud provider, if available. More info: [https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.](https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.)"},
    allocatable: {key: "allocatable", accessor: "allocatable", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity."},
    capacity: {key: "capacity", accessor: "capacity", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "Capacity represents the total resources of a node. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)"},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Core::V1::NodeCondition)", nilable: true, default: nil, read_only: false, description: "Conditions is an array of current observed node conditions. More info: [https://kubernetes.io/docs/concepts/nodes/node/#condition](https://kubernetes.io/docs/concepts/nodes/node/#condition)"},
    config: {key: "config", accessor: "config", kind: "::K8S::Api::Core::V1::NodeConfigStatus", nilable: true, default: nil, read_only: false, description: "Status of the config assigned to the node via the dynamic Kubelet config feature."},
    daemon_endpoints: {key: "daemonEndpoints", accessor: "daemon_endpoints", kind: "::K8S::Api::Core::V1::NodeDaemonEndpoints", nilable: true, default: nil, read_only: false, description: "Endpoints of daemons running on the Node."},
    images: {key: "images", accessor: "images", kind: "::Array(::K8S::Api::Core::V1::ContainerImage)", nilable: true, default: nil, read_only: false, description: "List of container images on this node"},
    node_info: {key: "nodeInfo", accessor: "node_info", kind: "::K8S::Api::Core::V1::NodeSystemInfo", nilable: true, default: nil, read_only: false, description: "Set of [ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info](ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info)"},
    phase: {key: "phase", accessor: "phase", kind: "String", nilable: true, default: nil, read_only: false, description: "NodePhase is the recently observed lifecycle phase of the node. More info: [https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.)"},
    volumes_attached: {key: "volumesAttached", accessor: "volumes_attached", kind: "::Array(::K8S::Api::Core::V1::AttachedVolume)", nilable: true, default: nil, read_only: false, description: "List of volumes that are attached to the node."},
    volumes_in_use: {key: "volumesInUse", accessor: "volumes_in_use", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "List of attachable volumes in use (mounted) by the node."},
  )]
  class Api::Core::V1::NodeStatus < ::K8S::Types::Api::Core::V1::NodeStatus::Instance
    include ::K8S::Types::Api::Core::V1::NodeStatus
    include ::K8S::Kubernetes::Object

    # List of addresses reachable to the node. Queried from cloud provider, if available. More info: [[https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.](https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.)](https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.](https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.))
    def addresses : ::Array(::K8S::Api::Core::V1::NodeAddress)?
      self.["addresses"].as(::Array(::K8S::Api::Core::V1::NodeAddress)?)
    end

    # :ditto:
    def addresses! : ::Array(::K8S::Api::Core::V1::NodeAddress)
      self.["addresses"].as(::Array(::K8S::Api::Core::V1::NodeAddress)?).not_nil!
    end

    # :ditto:
    def addresses? : ::Array(::K8S::Api::Core::V1::NodeAddress)?
      self.["addresses"]?.as(::Array(::K8S::Api::Core::V1::NodeAddress)?)
    end

    # :ditto:
    def addresses=(value : ::Array(::K8S::Api::Core::V1::NodeAddress)?)
      self.["addresses"] = value
    end

    # Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
    def allocatable : ::Hash(String, ::Int32 | ::String)?
      self.["allocatable"].as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def allocatable! : ::Hash(String, ::Int32 | ::String)
      self.["allocatable"].as(::Hash(String, ::Int32 | ::String)?).not_nil!
    end

    # :ditto:
    def allocatable? : ::Hash(String, ::Int32 | ::String)?
      self.["allocatable"]?.as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def allocatable=(value : ::Hash(String, ::Int32 | ::String)?)
      self.["allocatable"] = value
    end

    # Capacity represents the total resources of a node. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity))
    def capacity : ::Hash(String, ::Int32 | ::String)?
      self.["capacity"].as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def capacity! : ::Hash(String, ::Int32 | ::String)
      self.["capacity"].as(::Hash(String, ::Int32 | ::String)?).not_nil!
    end

    # :ditto:
    def capacity? : ::Hash(String, ::Int32 | ::String)?
      self.["capacity"]?.as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def capacity=(value : ::Hash(String, ::Int32 | ::String)?)
      self.["capacity"] = value
    end

    # Conditions is an array of current observed node conditions. More info: [[https://kubernetes.io/docs/concepts/nodes/node/#condition](https://kubernetes.io/docs/concepts/nodes/node/#condition)](https://kubernetes.io/docs/concepts/nodes/node/#condition](https://kubernetes.io/docs/concepts/nodes/node/#condition))
    def conditions : ::Array(::K8S::Api::Core::V1::NodeCondition)?
      self.["conditions"].as(::Array(::K8S::Api::Core::V1::NodeCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Api::Core::V1::NodeCondition)
      self.["conditions"].as(::Array(::K8S::Api::Core::V1::NodeCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Api::Core::V1::NodeCondition)?
      self.["conditions"]?.as(::Array(::K8S::Api::Core::V1::NodeCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Api::Core::V1::NodeCondition)?)
      self.["conditions"] = value
    end

    # Status of the config assigned to the node via the dynamic Kubelet config feature.
    def config : ::K8S::Api::Core::V1::NodeConfigStatus?
      self.["config"].as(::K8S::Api::Core::V1::NodeConfigStatus?)
    end

    # :ditto:
    def config! : ::K8S::Api::Core::V1::NodeConfigStatus
      self.["config"].as(::K8S::Api::Core::V1::NodeConfigStatus?).not_nil!
    end

    # :ditto:
    def config? : ::K8S::Api::Core::V1::NodeConfigStatus?
      self.["config"]?.as(::K8S::Api::Core::V1::NodeConfigStatus?)
    end

    # :ditto:
    def config=(value : ::K8S::Api::Core::V1::NodeConfigStatus?)
      self.["config"] = value
    end

    # Endpoints of daemons running on the Node.
    def daemon_endpoints : ::K8S::Api::Core::V1::NodeDaemonEndpoints?
      self.["daemonEndpoints"].as(::K8S::Api::Core::V1::NodeDaemonEndpoints?)
    end

    # :ditto:
    def daemon_endpoints! : ::K8S::Api::Core::V1::NodeDaemonEndpoints
      self.["daemonEndpoints"].as(::K8S::Api::Core::V1::NodeDaemonEndpoints?).not_nil!
    end

    # :ditto:
    def daemon_endpoints? : ::K8S::Api::Core::V1::NodeDaemonEndpoints?
      self.["daemonEndpoints"]?.as(::K8S::Api::Core::V1::NodeDaemonEndpoints?)
    end

    # :ditto:
    def daemon_endpoints=(value : ::K8S::Api::Core::V1::NodeDaemonEndpoints?)
      self.["daemonEndpoints"] = value
    end

    # List of container images on this node
    def images : ::Array(::K8S::Api::Core::V1::ContainerImage)?
      self.["images"].as(::Array(::K8S::Api::Core::V1::ContainerImage)?)
    end

    # :ditto:
    def images! : ::Array(::K8S::Api::Core::V1::ContainerImage)
      self.["images"].as(::Array(::K8S::Api::Core::V1::ContainerImage)?).not_nil!
    end

    # :ditto:
    def images? : ::Array(::K8S::Api::Core::V1::ContainerImage)?
      self.["images"]?.as(::Array(::K8S::Api::Core::V1::ContainerImage)?)
    end

    # :ditto:
    def images=(value : ::Array(::K8S::Api::Core::V1::ContainerImage)?)
      self.["images"] = value
    end

    # Set of [[ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info](ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info)]([ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info](ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info))
    def node_info : ::K8S::Api::Core::V1::NodeSystemInfo?
      self.["nodeInfo"].as(::K8S::Api::Core::V1::NodeSystemInfo?)
    end

    # :ditto:
    def node_info! : ::K8S::Api::Core::V1::NodeSystemInfo
      self.["nodeInfo"].as(::K8S::Api::Core::V1::NodeSystemInfo?).not_nil!
    end

    # :ditto:
    def node_info? : ::K8S::Api::Core::V1::NodeSystemInfo?
      self.["nodeInfo"]?.as(::K8S::Api::Core::V1::NodeSystemInfo?)
    end

    # :ditto:
    def node_info=(value : ::K8S::Api::Core::V1::NodeSystemInfo?)
      self.["nodeInfo"] = value
    end

    # NodePhase is the recently observed lifecycle phase of the node. More info: [[https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.)](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.))
    def phase : String?
      self.["phase"].as(String?)
    end

    # :ditto:
    def phase! : String
      self.["phase"].as(String?).not_nil!
    end

    # :ditto:
    def phase? : String?
      self.["phase"]?.as(String?)
    end

    # :ditto:
    def phase=(value : String?)
      self.["phase"] = value
    end

    # List of volumes that are attached to the node.
    def volumes_attached : ::Array(::K8S::Api::Core::V1::AttachedVolume)?
      self.["volumesAttached"].as(::Array(::K8S::Api::Core::V1::AttachedVolume)?)
    end

    # :ditto:
    def volumes_attached! : ::Array(::K8S::Api::Core::V1::AttachedVolume)
      self.["volumesAttached"].as(::Array(::K8S::Api::Core::V1::AttachedVolume)?).not_nil!
    end

    # :ditto:
    def volumes_attached? : ::Array(::K8S::Api::Core::V1::AttachedVolume)?
      self.["volumesAttached"]?.as(::Array(::K8S::Api::Core::V1::AttachedVolume)?)
    end

    # :ditto:
    def volumes_attached=(value : ::Array(::K8S::Api::Core::V1::AttachedVolume)?)
      self.["volumesAttached"] = value
    end

    # List of attachable volumes in use (mounted) by the node.
    def volumes_in_use : ::Array(String)?
      self.["volumesInUse"].as(::Array(String)?)
    end

    # :ditto:
    def volumes_in_use! : ::Array(String)
      self.["volumesInUse"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def volumes_in_use? : ::Array(String)?
      self.["volumesInUse"]?.as(::Array(String)?)
    end

    # :ditto:
    def volumes_in_use=(value : ::Array(String)?)
      self.["volumesInUse"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "addresses", accessor: "addresses", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::NodeAddress) },
        { key: "allocatable", accessor: "allocatable", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
        { key: "capacity", accessor: "capacity", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::NodeCondition) },
        { key: "config", accessor: "config", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NodeConfigStatus },
        { key: "daemonEndpoints", accessor: "daemon_endpoints", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NodeDaemonEndpoints },
        { key: "images", accessor: "images", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ContainerImage) },
        { key: "nodeInfo", accessor: "node_info", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NodeSystemInfo },
        { key: "phase", accessor: "phase", nilable: true, read_only: false, default: nil, kind: String },
        { key: "volumesAttached", accessor: "volumes_attached", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::AttachedVolume) },
        { key: "volumesInUse", accessor: "volumes_in_use", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
