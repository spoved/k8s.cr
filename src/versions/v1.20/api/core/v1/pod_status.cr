# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PodStatus; end

require "./pod_condition"
require "./container_status"
require "./pod_ip"

module K8S
  # Namespace holding the types for `Api::Core::V1::PodStatus`.
  module Types::Api::Core::V1::PodStatus
    alias ValueType = ::Array(::K8S::Api::Core::V1::PodCondition) | ::Array(::K8S::Api::Core::V1::ContainerStatus) | String | ::Array(::K8S::Api::Core::V1::PodIP) | ::Time | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Current service state of pod. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions))
    abstract def conditions : ::Array(::K8S::Api::Core::V1::PodCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Core::V1::PodCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Core::V1::PodCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Core::V1::PodCondition)?)
    # The list has one entry per container in the manifest. Each entry is currently the output of `docker inspect`. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status))
    abstract def container_statuses : ::Array(::K8S::Api::Core::V1::ContainerStatus)?
    # :ditto:
    abstract def container_statuses! : ::Array(::K8S::Api::Core::V1::ContainerStatus)
    # :ditto:
    abstract def container_statuses? : ::Array(::K8S::Api::Core::V1::ContainerStatus)?
    # :ditto:
    abstract def container_statuses=(value : ::Array(::K8S::Api::Core::V1::ContainerStatus)?)
    # Status for any ephemeral containers that have run in this pod. This field is alpha-level and is only populated by servers that enable the EphemeralContainers feature.
    abstract def ephemeral_container_statuses : ::Array(::K8S::Api::Core::V1::ContainerStatus)?
    # :ditto:
    abstract def ephemeral_container_statuses! : ::Array(::K8S::Api::Core::V1::ContainerStatus)
    # :ditto:
    abstract def ephemeral_container_statuses? : ::Array(::K8S::Api::Core::V1::ContainerStatus)?
    # :ditto:
    abstract def ephemeral_container_statuses=(value : ::Array(::K8S::Api::Core::V1::ContainerStatus)?)
    # IP address of the host to which the pod is assigned. Empty if not yet scheduled.
    abstract def host_ip : String?
    # :ditto:
    abstract def host_ip! : String
    # :ditto:
    abstract def host_ip? : String?
    # :ditto:
    abstract def host_ip=(value : String?)
    # The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status))
    abstract def init_container_statuses : ::Array(::K8S::Api::Core::V1::ContainerStatus)?
    # :ditto:
    abstract def init_container_statuses! : ::Array(::K8S::Api::Core::V1::ContainerStatus)
    # :ditto:
    abstract def init_container_statuses? : ::Array(::K8S::Api::Core::V1::ContainerStatus)?
    # :ditto:
    abstract def init_container_statuses=(value : ::Array(::K8S::Api::Core::V1::ContainerStatus)?)
    # A human readable message indicating details about why the pod is in this condition.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String?)
    # nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.
    abstract def nominated_node_name : String?
    # :ditto:
    abstract def nominated_node_name! : String
    # :ditto:
    abstract def nominated_node_name? : String?
    # :ditto:
    abstract def nominated_node_name=(value : String?)
    # The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:
    #
    # Pending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.
    #
    # More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase))
    abstract def phase : String?
    # :ditto:
    abstract def phase! : String
    # :ditto:
    abstract def phase? : String?
    # :ditto:
    abstract def phase=(value : String?)
    # IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
    abstract def pod_ip : String?
    # :ditto:
    abstract def pod_ip! : String
    # :ditto:
    abstract def pod_ip? : String?
    # :ditto:
    abstract def pod_ip=(value : String?)
    # podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet.
    abstract def pod_ips : ::Array(::K8S::Api::Core::V1::PodIP)?
    # :ditto:
    abstract def pod_ips! : ::Array(::K8S::Api::Core::V1::PodIP)
    # :ditto:
    abstract def pod_ips? : ::Array(::K8S::Api::Core::V1::PodIP)?
    # :ditto:
    abstract def pod_ips=(value : ::Array(::K8S::Api::Core::V1::PodIP)?)
    # The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: [[https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md](https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md)](https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md](https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md))
    abstract def qos_class : String?
    # :ditto:
    abstract def qos_class! : String
    # :ditto:
    abstract def qos_class? : String?
    # :ditto:
    abstract def qos_class=(value : String?)
    # A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String?)
    # RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod.
    abstract def start_time : ::Time?
    # :ditto:
    abstract def start_time! : ::Time
    # :ditto:
    abstract def start_time? : ::Time?
    # :ditto:
    abstract def start_time=(value : ::Time?)
  end

  # PodStatus represents information about the status of a pod. Status may trail the actual state of a system, especially if the node that hosts the pod cannot contact the control plane.
  @[::K8S::Properties(
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Core::V1::PodCondition)", nilable: true, default: nil, read_only: false, description: "Current service state of pod. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions)"},
    container_statuses: {key: "containerStatuses", accessor: "container_statuses", kind: "::Array(::K8S::Api::Core::V1::ContainerStatus)", nilable: true, default: nil, read_only: false, description: "The list has one entry per container in the manifest. Each entry is currently the output of `docker inspect`. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status)"},
    ephemeral_container_statuses: {key: "ephemeralContainerStatuses", accessor: "ephemeral_container_statuses", kind: "::Array(::K8S::Api::Core::V1::ContainerStatus)", nilable: true, default: nil, read_only: false, description: "Status for any ephemeral containers that have run in this pod. This field is alpha-level and is only populated by servers that enable the EphemeralContainers feature."},
    host_ip: {key: "hostIP", accessor: "host_ip", kind: "String", nilable: true, default: nil, read_only: false, description: "IP address of the host to which the pod is assigned. Empty if not yet scheduled."},
    init_container_statuses: {key: "initContainerStatuses", accessor: "init_container_statuses", kind: "::Array(::K8S::Api::Core::V1::ContainerStatus)", nilable: true, default: nil, read_only: false, description: "The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status)"},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "A human readable message indicating details about why the pod is in this condition."},
    nominated_node_name: {key: "nominatedNodeName", accessor: "nominated_node_name", kind: "String", nilable: true, default: nil, read_only: false, description: "nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled."},
    phase: {key: "phase", accessor: "phase", kind: "String", nilable: true, default: nil, read_only: false, description: "The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:\n\nPending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.\n\nMore info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase)"},
    pod_ip: {key: "podIP", accessor: "pod_ip", kind: "String", nilable: true, default: nil, read_only: false, description: "IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated."},
    pod_ips: {key: "podIPs", accessor: "pod_ips", kind: "::Array(::K8S::Api::Core::V1::PodIP)", nilable: true, default: nil, read_only: false, description: "podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet."},
    qos_class: {key: "qosClass", accessor: "qos_class", kind: "String", nilable: true, default: nil, read_only: false, description: "The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: [https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md](https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md)"},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'"},
    start_time: {key: "startTime", accessor: "start_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod."},
  )]
  class Api::Core::V1::PodStatus < ::K8S::Types::Api::Core::V1::PodStatus::Instance
    include ::K8S::Types::Api::Core::V1::PodStatus
    include ::K8S::Kubernetes::Object

    # Current service state of pod. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions))
    def conditions : ::Array(::K8S::Api::Core::V1::PodCondition)?
      self.["conditions"].as(::Array(::K8S::Api::Core::V1::PodCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Api::Core::V1::PodCondition)
      self.["conditions"].as(::Array(::K8S::Api::Core::V1::PodCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Api::Core::V1::PodCondition)?
      self.["conditions"]?.as(::Array(::K8S::Api::Core::V1::PodCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Api::Core::V1::PodCondition)?)
      self.["conditions"] = value
    end

    # The list has one entry per container in the manifest. Each entry is currently the output of `docker inspect`. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status))
    def container_statuses : ::Array(::K8S::Api::Core::V1::ContainerStatus)?
      self.["containerStatuses"].as(::Array(::K8S::Api::Core::V1::ContainerStatus)?)
    end

    # :ditto:
    def container_statuses! : ::Array(::K8S::Api::Core::V1::ContainerStatus)
      self.["containerStatuses"].as(::Array(::K8S::Api::Core::V1::ContainerStatus)?).not_nil!
    end

    # :ditto:
    def container_statuses? : ::Array(::K8S::Api::Core::V1::ContainerStatus)?
      self.["containerStatuses"]?.as(::Array(::K8S::Api::Core::V1::ContainerStatus)?)
    end

    # :ditto:
    def container_statuses=(value : ::Array(::K8S::Api::Core::V1::ContainerStatus)?)
      self.["containerStatuses"] = value
    end

    # Status for any ephemeral containers that have run in this pod. This field is alpha-level and is only populated by servers that enable the EphemeralContainers feature.
    def ephemeral_container_statuses : ::Array(::K8S::Api::Core::V1::ContainerStatus)?
      self.["ephemeralContainerStatuses"].as(::Array(::K8S::Api::Core::V1::ContainerStatus)?)
    end

    # :ditto:
    def ephemeral_container_statuses! : ::Array(::K8S::Api::Core::V1::ContainerStatus)
      self.["ephemeralContainerStatuses"].as(::Array(::K8S::Api::Core::V1::ContainerStatus)?).not_nil!
    end

    # :ditto:
    def ephemeral_container_statuses? : ::Array(::K8S::Api::Core::V1::ContainerStatus)?
      self.["ephemeralContainerStatuses"]?.as(::Array(::K8S::Api::Core::V1::ContainerStatus)?)
    end

    # :ditto:
    def ephemeral_container_statuses=(value : ::Array(::K8S::Api::Core::V1::ContainerStatus)?)
      self.["ephemeralContainerStatuses"] = value
    end

    # IP address of the host to which the pod is assigned. Empty if not yet scheduled.
    def host_ip : String?
      self.["hostIP"].as(String?)
    end

    # :ditto:
    def host_ip! : String
      self.["hostIP"].as(String?).not_nil!
    end

    # :ditto:
    def host_ip? : String?
      self.["hostIP"]?.as(String?)
    end

    # :ditto:
    def host_ip=(value : String?)
      self.["hostIP"] = value
    end

    # The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status))
    def init_container_statuses : ::Array(::K8S::Api::Core::V1::ContainerStatus)?
      self.["initContainerStatuses"].as(::Array(::K8S::Api::Core::V1::ContainerStatus)?)
    end

    # :ditto:
    def init_container_statuses! : ::Array(::K8S::Api::Core::V1::ContainerStatus)
      self.["initContainerStatuses"].as(::Array(::K8S::Api::Core::V1::ContainerStatus)?).not_nil!
    end

    # :ditto:
    def init_container_statuses? : ::Array(::K8S::Api::Core::V1::ContainerStatus)?
      self.["initContainerStatuses"]?.as(::Array(::K8S::Api::Core::V1::ContainerStatus)?)
    end

    # :ditto:
    def init_container_statuses=(value : ::Array(::K8S::Api::Core::V1::ContainerStatus)?)
      self.["initContainerStatuses"] = value
    end

    # A human readable message indicating details about why the pod is in this condition.
    def message : String?
      self.["message"].as(String?)
    end

    # :ditto:
    def message! : String
      self.["message"].as(String?).not_nil!
    end

    # :ditto:
    def message? : String?
      self.["message"]?.as(String?)
    end

    # :ditto:
    def message=(value : String?)
      self.["message"] = value
    end

    # nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.
    def nominated_node_name : String?
      self.["nominatedNodeName"].as(String?)
    end

    # :ditto:
    def nominated_node_name! : String
      self.["nominatedNodeName"].as(String?).not_nil!
    end

    # :ditto:
    def nominated_node_name? : String?
      self.["nominatedNodeName"]?.as(String?)
    end

    # :ditto:
    def nominated_node_name=(value : String?)
      self.["nominatedNodeName"] = value
    end

    # The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:
    #
    # Pending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.
    #
    # More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase))
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

    # IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
    def pod_ip : String?
      self.["podIP"].as(String?)
    end

    # :ditto:
    def pod_ip! : String
      self.["podIP"].as(String?).not_nil!
    end

    # :ditto:
    def pod_ip? : String?
      self.["podIP"]?.as(String?)
    end

    # :ditto:
    def pod_ip=(value : String?)
      self.["podIP"] = value
    end

    # podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet.
    def pod_ips : ::Array(::K8S::Api::Core::V1::PodIP)?
      self.["podIPs"].as(::Array(::K8S::Api::Core::V1::PodIP)?)
    end

    # :ditto:
    def pod_ips! : ::Array(::K8S::Api::Core::V1::PodIP)
      self.["podIPs"].as(::Array(::K8S::Api::Core::V1::PodIP)?).not_nil!
    end

    # :ditto:
    def pod_ips? : ::Array(::K8S::Api::Core::V1::PodIP)?
      self.["podIPs"]?.as(::Array(::K8S::Api::Core::V1::PodIP)?)
    end

    # :ditto:
    def pod_ips=(value : ::Array(::K8S::Api::Core::V1::PodIP)?)
      self.["podIPs"] = value
    end

    # The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: [[https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md](https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md)](https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md](https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md))
    def qos_class : String?
      self.["qosClass"].as(String?)
    end

    # :ditto:
    def qos_class! : String
      self.["qosClass"].as(String?).not_nil!
    end

    # :ditto:
    def qos_class? : String?
      self.["qosClass"]?.as(String?)
    end

    # :ditto:
    def qos_class=(value : String?)
      self.["qosClass"] = value
    end

    # A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'
    def reason : String?
      self.["reason"].as(String?)
    end

    # :ditto:
    def reason! : String
      self.["reason"].as(String?).not_nil!
    end

    # :ditto:
    def reason? : String?
      self.["reason"]?.as(String?)
    end

    # :ditto:
    def reason=(value : String?)
      self.["reason"] = value
    end

    # RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod.
    def start_time : ::Time?
      self.["startTime"].as(::Time?)
    end

    # :ditto:
    def start_time! : ::Time
      self.["startTime"].as(::Time?).not_nil!
    end

    # :ditto:
    def start_time? : ::Time?
      self.["startTime"]?.as(::Time?)
    end

    # :ditto:
    def start_time=(value : ::Time?)
      self.["startTime"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::PodCondition) },
        { key: "containerStatuses", accessor: "container_statuses", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ContainerStatus) },
        { key: "ephemeralContainerStatuses", accessor: "ephemeral_container_statuses", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ContainerStatus) },
        { key: "hostIP", accessor: "host_ip", nilable: true, read_only: false, default: nil, kind: String },
        { key: "initContainerStatuses", accessor: "init_container_statuses", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ContainerStatus) },
        { key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String },
        { key: "nominatedNodeName", accessor: "nominated_node_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "phase", accessor: "phase", nilable: true, read_only: false, default: nil, kind: String },
        { key: "podIP", accessor: "pod_ip", nilable: true, read_only: false, default: nil, kind: String },
        { key: "podIPs", accessor: "pod_ips", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::PodIP) },
        { key: "qosClass", accessor: "qos_class", nilable: true, read_only: false, default: nil, kind: String },
        { key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String },
        { key: "startTime", accessor: "start_time", nilable: true, read_only: false, default: nil, kind: ::Time },
      ])
end
  end
end
