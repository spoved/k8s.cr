# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # PodStatus represents information about the status of a pod. Status may trail the actual state of a system.
  class Api::Core::V1::PodStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Current service state of pod. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions)
    property conditions : Array(Api::Core::V1::PodCondition) | Nil

    # The list has one entry per container in the manifest. Each entry is currently the output of `docker inspect`. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status)
    property container_statuses : Array(Api::Core::V1::ContainerStatus) | Nil

    # IP address of the host to which the pod is assigned. Empty if not yet scheduled.
    property host_ip : String | Nil

    # The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status)
    property init_container_statuses : Array(Api::Core::V1::ContainerStatus) | Nil

    # A human readable message indicating details about why the pod is in this condition.
    property message : String | Nil

    # nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.
    property nominated_node_name : String | Nil

    # Current condition of the pod. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase)
    property phase : String | Nil

    # IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
    property pod_ip : String | Nil

    # The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: [https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md](https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md)
    property qos_class : String | Nil

    # A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'
    property reason : String | Nil

    # RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod.
    property start_time : Time | Nil

    ::YAML.mapping({
      conditions:              {type: Array(Api::Core::V1::PodCondition), nilable: true, key: "conditions", getter: false, setter: false},
      container_statuses:      {type: Array(Api::Core::V1::ContainerStatus), nilable: true, key: "containerStatuses", getter: false, setter: false},
      host_ip:                 {type: String, nilable: true, key: "hostIP", getter: false, setter: false},
      init_container_statuses: {type: Array(Api::Core::V1::ContainerStatus), nilable: true, key: "initContainerStatuses", getter: false, setter: false},
      message:                 {type: String, nilable: true, key: "message", getter: false, setter: false},
      nominated_node_name:     {type: String, nilable: true, key: "nominatedNodeName", getter: false, setter: false},
      phase:                   {type: String, nilable: true, key: "phase", getter: false, setter: false},
      pod_ip:                  {type: String, nilable: true, key: "podIP", getter: false, setter: false},
      qos_class:               {type: String, nilable: true, key: "qosClass", getter: false, setter: false},
      reason:                  {type: String, nilable: true, key: "reason", getter: false, setter: false},
      start_time:              {type: Time, nilable: true, key: "startTime", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      conditions:              {type: Array(Api::Core::V1::PodCondition), nilable: true, key: "conditions", getter: false, setter: false},
      container_statuses:      {type: Array(Api::Core::V1::ContainerStatus), nilable: true, key: "containerStatuses", getter: false, setter: false},
      host_ip:                 {type: String, nilable: true, key: "hostIP", getter: false, setter: false},
      init_container_statuses: {type: Array(Api::Core::V1::ContainerStatus), nilable: true, key: "initContainerStatuses", getter: false, setter: false},
      message:                 {type: String, nilable: true, key: "message", getter: false, setter: false},
      nominated_node_name:     {type: String, nilable: true, key: "nominatedNodeName", getter: false, setter: false},
      phase:                   {type: String, nilable: true, key: "phase", getter: false, setter: false},
      pod_ip:                  {type: String, nilable: true, key: "podIP", getter: false, setter: false},
      qos_class:               {type: String, nilable: true, key: "qosClass", getter: false, setter: false},
      reason:                  {type: String, nilable: true, key: "reason", getter: false, setter: false},
      start_time:              {type: Time, nilable: true, key: "startTime", getter: false, setter: false},
    }, true)

    def initialize(*, @conditions : Array | Nil = nil, @container_statuses : Array | Nil = nil, @host_ip : String | Nil = nil, @init_container_statuses : Array | Nil = nil, @message : String | Nil = nil, @nominated_node_name : String | Nil = nil, @phase : String | Nil = nil, @pod_ip : String | Nil = nil, @qos_class : String | Nil = nil, @reason : String | Nil = nil, @start_time : Time | Nil = nil)
    end
  end
end
