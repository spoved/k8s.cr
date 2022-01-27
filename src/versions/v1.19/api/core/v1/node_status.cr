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
    # List of addresses reachable to the node. Queried from cloud provider, if available. More info: [[https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.](https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.)](https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.](https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.))
    abstract def addresses : ::Array(::K8S::Api::Core::V1::NodeAddress)?
    # :ditto:
    abstract def addresses! : ::Array(::K8S::Api::Core::V1::NodeAddress)
    # :ditto:
    abstract def addresses? : ::Array(::K8S::Api::Core::V1::NodeAddress)?
    # :ditto:
    abstract def addresses=(value : ::Array(::K8S::Api::Core::V1::NodeAddress))
    # Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
    abstract def allocatable : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def allocatable! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def allocatable? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def allocatable=(value : ::Hash(String, ::Int32 | ::String))
    # Capacity represents the total resources of a node. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity))
    abstract def capacity : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def capacity! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def capacity? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def capacity=(value : ::Hash(String, ::Int32 | ::String))
    # Conditions is an array of current observed node conditions. More info: [[https://kubernetes.io/docs/concepts/nodes/node/#condition](https://kubernetes.io/docs/concepts/nodes/node/#condition)](https://kubernetes.io/docs/concepts/nodes/node/#condition](https://kubernetes.io/docs/concepts/nodes/node/#condition))
    abstract def conditions : ::Array(::K8S::Api::Core::V1::NodeCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Core::V1::NodeCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Core::V1::NodeCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Core::V1::NodeCondition))
    # Status of the config assigned to the node via the dynamic Kubelet config feature.
    abstract def config : ::K8S::Api::Core::V1::NodeConfigStatus?
    # :ditto:
    abstract def config! : ::K8S::Api::Core::V1::NodeConfigStatus
    # :ditto:
    abstract def config? : ::K8S::Api::Core::V1::NodeConfigStatus?
    # :ditto:
    abstract def config=(value : ::K8S::Api::Core::V1::NodeConfigStatus)
    # Endpoints of daemons running on the Node.
    abstract def daemon_endpoints : ::K8S::Api::Core::V1::NodeDaemonEndpoints?
    # :ditto:
    abstract def daemon_endpoints! : ::K8S::Api::Core::V1::NodeDaemonEndpoints
    # :ditto:
    abstract def daemon_endpoints? : ::K8S::Api::Core::V1::NodeDaemonEndpoints?
    # :ditto:
    abstract def daemon_endpoints=(value : ::K8S::Api::Core::V1::NodeDaemonEndpoints)
    # List of container images on this node
    abstract def images : ::Array(::K8S::Api::Core::V1::ContainerImage)?
    # :ditto:
    abstract def images! : ::Array(::K8S::Api::Core::V1::ContainerImage)
    # :ditto:
    abstract def images? : ::Array(::K8S::Api::Core::V1::ContainerImage)?
    # :ditto:
    abstract def images=(value : ::Array(::K8S::Api::Core::V1::ContainerImage))
    # Set of [[ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info](ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info)]([ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info](ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info))
    abstract def node_info : ::K8S::Api::Core::V1::NodeSystemInfo?
    # :ditto:
    abstract def node_info! : ::K8S::Api::Core::V1::NodeSystemInfo
    # :ditto:
    abstract def node_info? : ::K8S::Api::Core::V1::NodeSystemInfo?
    # :ditto:
    abstract def node_info=(value : ::K8S::Api::Core::V1::NodeSystemInfo)
    # NodePhase is the recently observed lifecycle phase of the node. More info: [[https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.)](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.))
    abstract def phase : String?
    # :ditto:
    abstract def phase! : String
    # :ditto:
    abstract def phase? : String?
    # :ditto:
    abstract def phase=(value : String)
    # List of volumes that are attached to the node.
    abstract def volumes_attached : ::Array(::K8S::Api::Core::V1::AttachedVolume)?
    # :ditto:
    abstract def volumes_attached! : ::Array(::K8S::Api::Core::V1::AttachedVolume)
    # :ditto:
    abstract def volumes_attached? : ::Array(::K8S::Api::Core::V1::AttachedVolume)?
    # :ditto:
    abstract def volumes_attached=(value : ::Array(::K8S::Api::Core::V1::AttachedVolume))
    # List of attachable volumes in use (mounted) by the node.
    abstract def volumes_in_use : ::Array(String)?
    # :ditto:
    abstract def volumes_in_use! : ::Array(String)
    # :ditto:
    abstract def volumes_in_use? : ::Array(String)?
    # :ditto:
    abstract def volumes_in_use=(value : ::Array(String))
  end

  # NodeStatus is information about the current status of a node.
  @[::K8S::Properties(
    addresses: {key: "addresses", accessor: "addresses", kind: "::Array(::K8S::Api::Core::V1::NodeAddress)", nilable: true, default: nil, read_only: false, description: "List of addresses reachable to the node. Queried from cloud provider, if available. More info: [https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.](https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    allocatable: {key: "allocatable", accessor: "allocatable", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    capacity: {key: "capacity", accessor: "capacity", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "Capacity represents the total resources of a node. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Core::V1::NodeCondition)", nilable: true, default: nil, read_only: false, description: "Conditions is an array of current observed node conditions. More info: [https://kubernetes.io/docs/concepts/nodes/node/#condition](https://kubernetes.io/docs/concepts/nodes/node/#condition)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    config: {key: "config", accessor: "config", kind: "::K8S::Api::Core::V1::NodeConfigStatus", nilable: true, default: nil, read_only: false, description: "Status of the config assigned to the node via the dynamic Kubelet config feature.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    daemon_endpoints: {key: "daemonEndpoints", accessor: "daemon_endpoints", kind: "::K8S::Api::Core::V1::NodeDaemonEndpoints", nilable: true, default: nil, read_only: false, description: "Endpoints of daemons running on the Node.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    images: {key: "images", accessor: "images", kind: "::Array(::K8S::Api::Core::V1::ContainerImage)", nilable: true, default: nil, read_only: false, description: "List of container images on this node", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    node_info: {key: "nodeInfo", accessor: "node_info", kind: "::K8S::Api::Core::V1::NodeSystemInfo", nilable: true, default: nil, read_only: false, description: "Set of [ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info](ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    phase: {key: "phase", accessor: "phase", kind: "String", nilable: true, default: nil, read_only: false, description: "NodePhase is the recently observed lifecycle phase of the node. More info: [https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volumes_attached: {key: "volumesAttached", accessor: "volumes_attached", kind: "::Array(::K8S::Api::Core::V1::AttachedVolume)", nilable: true, default: nil, read_only: false, description: "List of volumes that are attached to the node.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volumes_in_use: {key: "volumesInUse", accessor: "volumes_in_use", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "List of attachable volumes in use (mounted) by the node.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::NodeStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::NodeStatus
    k8s_object_accessor("addresses", addresses : ::Array(::K8S::Api::Core::V1::NodeAddress), true, false, "List of addresses reachable to the node. Queried from cloud provider, if available. More info: [https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.](https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See http://pr.k8s.io/79391 for an example.)")
    k8s_object_accessor("allocatable", allocatable : ::Hash(String, ::Int32 | ::String), true, false, "Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.")
    k8s_object_accessor("capacity", capacity : ::Hash(String, ::Int32 | ::String), true, false, "Capacity represents the total resources of a node. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)")
    k8s_object_accessor("conditions", conditions : ::Array(::K8S::Api::Core::V1::NodeCondition), true, false, "Conditions is an array of current observed node conditions. More info: [https://kubernetes.io/docs/concepts/nodes/node/#condition](https://kubernetes.io/docs/concepts/nodes/node/#condition)")
    k8s_object_accessor("config", config : ::K8S::Api::Core::V1::NodeConfigStatus, true, false, "Status of the config assigned to the node via the dynamic Kubelet config feature.")
    k8s_object_accessor("daemonEndpoints", daemon_endpoints : ::K8S::Api::Core::V1::NodeDaemonEndpoints, true, false, "Endpoints of daemons running on the Node.")
    k8s_object_accessor("images", images : ::Array(::K8S::Api::Core::V1::ContainerImage), true, false, "List of container images on this node")
    k8s_object_accessor("nodeInfo", node_info : ::K8S::Api::Core::V1::NodeSystemInfo, true, false, "Set of [ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info](ids/uuids to uniquely identify the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#info)")
    k8s_object_accessor("phase", phase : String, true, false, "NodePhase is the recently observed lifecycle phase of the node. More info: [https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.](https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.)")
    k8s_object_accessor("volumesAttached", volumes_attached : ::Array(::K8S::Api::Core::V1::AttachedVolume), true, false, "List of volumes that are attached to the node.")
    k8s_object_accessor("volumesInUse", volumes_in_use : ::Array(String), true, false, "List of attachable volumes in use (mounted) by the node.")

    def initialize(*, addresses : ::Array(::K8S::Api::Core::V1::NodeAddress)? = nil, allocatable : ::Hash(String, ::Int32 | ::String)? = nil, capacity : ::Hash(String, ::Int32 | ::String)? = nil, conditions : ::Array(::K8S::Api::Core::V1::NodeCondition)? = nil, config : ::K8S::Api::Core::V1::NodeConfigStatus? = nil, daemon_endpoints : ::K8S::Api::Core::V1::NodeDaemonEndpoints? = nil, images : ::Array(::K8S::Api::Core::V1::ContainerImage)? = nil, node_info : ::K8S::Api::Core::V1::NodeSystemInfo? = nil, phase : String? = nil, volumes_attached : ::Array(::K8S::Api::Core::V1::AttachedVolume)? = nil, volumes_in_use : ::Array(String)? = nil)
      super()
      self.["addresses"] = addresses
      self.["allocatable"] = allocatable
      self.["capacity"] = capacity
      self.["conditions"] = conditions
      self.["config"] = config
      self.["daemonEndpoints"] = daemon_endpoints
      self.["images"] = images
      self.["nodeInfo"] = node_info
      self.["phase"] = phase
      self.["volumesAttached"] = volumes_attached
      self.["volumesInUse"] = volumes_in_use
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "addresses", accessor: "addresses", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::NodeAddress)},
      {key: "allocatable", accessor: "allocatable", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String))},
      {key: "capacity", accessor: "capacity", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String))},
      {key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::NodeCondition)},
      {key: "config", accessor: "config", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NodeConfigStatus},
      {key: "daemonEndpoints", accessor: "daemon_endpoints", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NodeDaemonEndpoints},
      {key: "images", accessor: "images", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ContainerImage)},
      {key: "nodeInfo", accessor: "node_info", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NodeSystemInfo},
      {key: "phase", accessor: "phase", nilable: true, read_only: false, default: nil, kind: String},
      {key: "volumesAttached", accessor: "volumes_attached", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::AttachedVolume)},
      {key: "volumesInUse", accessor: "volumes_in_use", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
    ])
  end
end
