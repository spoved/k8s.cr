# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PodSpec; end

require "./affinity"
require "./container"
require "./pod_dns_config"
require "./host_alias"
require "./local_object_reference"
require "./pod_readiness_gate"
require "./pod_security_context"
require "./toleration"
require "./volume"

module K8S
  # Namespace holding the types for `Api::Core::V1::PodSpec`.
  module Types::Api::Core::V1::PodSpec
    # Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
    abstract def active_deadline_seconds : Int32?
    # :ditto:
    abstract def active_deadline_seconds! : Int32
    # :ditto:
    abstract def active_deadline_seconds? : Int32?
    # :ditto:
    abstract def active_deadline_seconds=(value : Int32?)
    # If specified, the pod's scheduling constraints
    abstract def affinity : ::K8S::Api::Core::V1::Affinity?
    # :ditto:
    abstract def affinity! : ::K8S::Api::Core::V1::Affinity
    # :ditto:
    abstract def affinity? : ::K8S::Api::Core::V1::Affinity?
    # :ditto:
    abstract def affinity=(value : ::K8S::Api::Core::V1::Affinity?)
    # AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
    abstract def automount_service_account_token : ::Bool?
    # :ditto:
    abstract def automount_service_account_token! : ::Bool
    # :ditto:
    abstract def automount_service_account_token? : ::Bool?
    # :ditto:
    abstract def automount_service_account_token=(value : ::Bool?)
    # List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
    abstract def containers : ::Array(::K8S::Api::Core::V1::Container)
    # :ditto:
    abstract def containers! : ::Array(::K8S::Api::Core::V1::Container)
    # :ditto:
    abstract def containers? : ::Array(::K8S::Api::Core::V1::Container)?
    # :ditto:
    abstract def containers=(value : ::Array(::K8S::Api::Core::V1::Container))
    # Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.
    abstract def dns_config : ::K8S::Api::Core::V1::PodDNSConfig?
    # :ditto:
    abstract def dns_config! : ::K8S::Api::Core::V1::PodDNSConfig
    # :ditto:
    abstract def dns_config? : ::K8S::Api::Core::V1::PodDNSConfig?
    # :ditto:
    abstract def dns_config=(value : ::K8S::Api::Core::V1::PodDNSConfig?)
    # Set DNS policy for the pod. Defaults to "ClusterFirst". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.
    abstract def dns_policy : String?
    # :ditto:
    abstract def dns_policy! : String
    # :ditto:
    abstract def dns_policy? : String?
    # :ditto:
    abstract def dns_policy=(value : String?)
    # HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.
    abstract def host_aliases : ::Array(::K8S::Api::Core::V1::HostAlias)?
    # :ditto:
    abstract def host_aliases! : ::Array(::K8S::Api::Core::V1::HostAlias)
    # :ditto:
    abstract def host_aliases? : ::Array(::K8S::Api::Core::V1::HostAlias)?
    # :ditto:
    abstract def host_aliases=(value : ::Array(::K8S::Api::Core::V1::HostAlias)?)
    # Use the host's ipc namespace. Optional: Default to false.
    abstract def host_ipc : ::Bool?
    # :ditto:
    abstract def host_ipc! : ::Bool
    # :ditto:
    abstract def host_ipc? : ::Bool?
    # :ditto:
    abstract def host_ipc=(value : ::Bool?)
    # Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.
    abstract def host_network : ::Bool?
    # :ditto:
    abstract def host_network! : ::Bool
    # :ditto:
    abstract def host_network? : ::Bool?
    # :ditto:
    abstract def host_network=(value : ::Bool?)
    # Use the host's pid namespace. Optional: Default to false.
    abstract def host_pid : ::Bool?
    # :ditto:
    abstract def host_pid! : ::Bool
    # :ditto:
    abstract def host_pid? : ::Bool?
    # :ditto:
    abstract def host_pid=(value : ::Bool?)
    # Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
    abstract def hostname : String?
    # :ditto:
    abstract def hostname! : String
    # :ditto:
    abstract def hostname? : String?
    # :ditto:
    abstract def hostname=(value : String?)
    # ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: [[https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod)](https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod))
    abstract def image_pull_secrets : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?
    # :ditto:
    abstract def image_pull_secrets! : ::Array(::K8S::Api::Core::V1::LocalObjectReference)
    # :ditto:
    abstract def image_pull_secrets? : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?
    # :ditto:
    abstract def image_pull_secrets=(value : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?)
    # List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, or Liveness probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest [[request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/](request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/)]([request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/](request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/))
    abstract def init_containers : ::Array(::K8S::Api::Core::V1::Container)?
    # :ditto:
    abstract def init_containers! : ::Array(::K8S::Api::Core::V1::Container)
    # :ditto:
    abstract def init_containers? : ::Array(::K8S::Api::Core::V1::Container)?
    # :ditto:
    abstract def init_containers=(value : ::Array(::K8S::Api::Core::V1::Container)?)
    # NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.
    abstract def node_name : String?
    # :ditto:
    abstract def node_name! : String
    # :ditto:
    abstract def node_name? : String?
    # :ditto:
    abstract def node_name=(value : String?)
    # NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: [[https://kubernetes.io/docs/concepts/configuration/assign-pod-node/](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/)](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/))
    abstract def node_selector : ::Hash(String, String)?
    # :ditto:
    abstract def node_selector! : ::Hash(String, String)
    # :ditto:
    abstract def node_selector? : ::Hash(String, String)?
    # :ditto:
    abstract def node_selector=(value : ::Hash(String, String)?)
    # The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
    abstract def priority : Int32?
    # :ditto:
    abstract def priority! : Int32
    # :ditto:
    abstract def priority? : Int32?
    # :ditto:
    abstract def priority=(value : Int32?)
    # If specified, indicates the pod's priority. "system-node-critical" and "system-cluster-critical" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
    abstract def priority_class_name : String?
    # :ditto:
    abstract def priority_class_name! : String
    # :ditto:
    abstract def priority_class_name? : String?
    # :ditto:
    abstract def priority_class_name=(value : String?)
    # If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to "True" More info: [[https://github.com/kubernetes/community/blob/master/keps/sig-network/0007-pod-ready%2B%2B.md](https://github.com/kubernetes/community/blob/master/keps/sig-network/0007-pod-ready%2B%2B.md)](https://github.com/kubernetes/community/blob/master/keps/sig-network/0007-pod-ready%2B%2B.md](https://github.com/kubernetes/community/blob/master/keps/sig-network/0007-pod-ready%2B%2B.md))
    abstract def readiness_gates : ::Array(::K8S::Api::Core::V1::PodReadinessGate)?
    # :ditto:
    abstract def readiness_gates! : ::Array(::K8S::Api::Core::V1::PodReadinessGate)
    # :ditto:
    abstract def readiness_gates? : ::Array(::K8S::Api::Core::V1::PodReadinessGate)?
    # :ditto:
    abstract def readiness_gates=(value : ::Array(::K8S::Api::Core::V1::PodReadinessGate)?)
    # Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy))
    abstract def restart_policy : String?
    # :ditto:
    abstract def restart_policy! : String
    # :ditto:
    abstract def restart_policy? : String?
    # :ditto:
    abstract def restart_policy=(value : String?)
    # If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
    abstract def scheduler_name : String?
    # :ditto:
    abstract def scheduler_name! : String
    # :ditto:
    abstract def scheduler_name? : String?
    # :ditto:
    abstract def scheduler_name=(value : String?)
    # SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.
    abstract def security_context : ::K8S::Api::Core::V1::PodSecurityContext?
    # :ditto:
    abstract def security_context! : ::K8S::Api::Core::V1::PodSecurityContext
    # :ditto:
    abstract def security_context? : ::K8S::Api::Core::V1::PodSecurityContext?
    # :ditto:
    abstract def security_context=(value : ::K8S::Api::Core::V1::PodSecurityContext?)
    # DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
    abstract def service_account : String?
    # :ditto:
    abstract def service_account! : String
    # :ditto:
    abstract def service_account? : String?
    # :ditto:
    abstract def service_account=(value : String?)
    # ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: [[https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/)](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/))
    abstract def service_account_name : String?
    # :ditto:
    abstract def service_account_name! : String
    # :ditto:
    abstract def service_account_name? : String?
    # :ditto:
    abstract def service_account_name=(value : String?)
    # Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false. This field is alpha-level and is honored only by servers that enable the PodShareProcessNamespace feature.
    abstract def share_process_namespace : ::Bool?
    # :ditto:
    abstract def share_process_namespace! : ::Bool
    # :ditto:
    abstract def share_process_namespace? : ::Bool?
    # :ditto:
    abstract def share_process_namespace=(value : ::Bool?)
    # If specified, the fully qualified Pod hostname will be "<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>". If not specified, the pod will not have a domainname at all.
    abstract def subdomain : String?
    # :ditto:
    abstract def subdomain! : String
    # :ditto:
    abstract def subdomain? : String?
    # :ditto:
    abstract def subdomain=(value : String?)
    # Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
    abstract def termination_grace_period_seconds : Int32?
    # :ditto:
    abstract def termination_grace_period_seconds! : Int32
    # :ditto:
    abstract def termination_grace_period_seconds? : Int32?
    # :ditto:
    abstract def termination_grace_period_seconds=(value : Int32?)
    # If specified, the pod's tolerations.
    abstract def tolerations : ::Array(::K8S::Api::Core::V1::Toleration)?
    # :ditto:
    abstract def tolerations! : ::Array(::K8S::Api::Core::V1::Toleration)
    # :ditto:
    abstract def tolerations? : ::Array(::K8S::Api::Core::V1::Toleration)?
    # :ditto:
    abstract def tolerations=(value : ::Array(::K8S::Api::Core::V1::Toleration)?)
    # List of volumes that can be mounted by containers belonging to the pod. More info: [[https://kubernetes.io/docs/concepts/storage/volumes](https://kubernetes.io/docs/concepts/storage/volumes)](https://kubernetes.io/docs/concepts/storage/volumes](https://kubernetes.io/docs/concepts/storage/volumes))
    abstract def volumes : ::Array(::K8S::Api::Core::V1::Volume)?
    # :ditto:
    abstract def volumes! : ::Array(::K8S::Api::Core::V1::Volume)
    # :ditto:
    abstract def volumes? : ::Array(::K8S::Api::Core::V1::Volume)?
    # :ditto:
    abstract def volumes=(value : ::Array(::K8S::Api::Core::V1::Volume)?)
  end

  # PodSpec is a description of a pod.
  @[::K8S::Properties(
    active_deadline_seconds: {key: "activeDeadlineSeconds", accessor: "active_deadline_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    affinity: {key: "affinity", accessor: "affinity", kind: "::K8S::Api::Core::V1::Affinity", nilable: true, default: nil, read_only: false, description: "If specified, the pod's scheduling constraints", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    automount_service_account_token: {key: "automountServiceAccountToken", accessor: "automount_service_account_token", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    containers: {key: "containers", accessor: "containers", kind: "::Array(::K8S::Api::Core::V1::Container)", nilable: false, default: nil, read_only: false, description: "List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    dns_config: {key: "dnsConfig", accessor: "dns_config", kind: "::K8S::Api::Core::V1::PodDNSConfig", nilable: true, default: nil, read_only: false, description: "Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    dns_policy: {key: "dnsPolicy", accessor: "dns_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "Set DNS policy for the pod. Defaults to \"ClusterFirst\". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_aliases: {key: "hostAliases", accessor: "host_aliases", kind: "::Array(::K8S::Api::Core::V1::HostAlias)", nilable: true, default: nil, read_only: false, description: "HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_ipc: {key: "hostIPC", accessor: "host_ipc", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Use the host's ipc namespace. Optional: Default to false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_network: {key: "hostNetwork", accessor: "host_network", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_pid: {key: "hostPID", accessor: "host_pid", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Use the host's pid namespace. Optional: Default to false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    hostname: {key: "hostname", accessor: "hostname", kind: "String", nilable: true, default: nil, read_only: false, description: "Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    image_pull_secrets: {key: "imagePullSecrets", accessor: "image_pull_secrets", kind: "::Array(::K8S::Api::Core::V1::LocalObjectReference)", nilable: true, default: nil, read_only: false, description: "ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: [https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    init_containers: {key: "initContainers", accessor: "init_containers", kind: "::Array(::K8S::Api::Core::V1::Container)", nilable: true, default: nil, read_only: false, description: "List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, or Liveness probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest [request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/](request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    node_name: {key: "nodeName", accessor: "node_name", kind: "String", nilable: true, default: nil, read_only: false, description: "NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    node_selector: {key: "nodeSelector", accessor: "node_selector", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: [https://kubernetes.io/docs/concepts/configuration/assign-pod-node/](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    priority: {key: "priority", accessor: "priority", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    priority_class_name: {key: "priorityClassName", accessor: "priority_class_name", kind: "String", nilable: true, default: nil, read_only: false, description: "If specified, indicates the pod's priority. \"system-node-critical\" and \"system-cluster-critical\" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    readiness_gates: {key: "readinessGates", accessor: "readiness_gates", kind: "::Array(::K8S::Api::Core::V1::PodReadinessGate)", nilable: true, default: nil, read_only: false, description: "If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to \"True\" More info: [https://github.com/kubernetes/community/blob/master/keps/sig-network/0007-pod-ready%2B%2B.md](https://github.com/kubernetes/community/blob/master/keps/sig-network/0007-pod-ready%2B%2B.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    restart_policy: {key: "restartPolicy", accessor: "restart_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scheduler_name: {key: "schedulerName", accessor: "scheduler_name", kind: "String", nilable: true, default: nil, read_only: false, description: "If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    security_context: {key: "securityContext", accessor: "security_context", kind: "::K8S::Api::Core::V1::PodSecurityContext", nilable: true, default: nil, read_only: false, description: "SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    service_account: {key: "serviceAccount", accessor: "service_account", kind: "String", nilable: true, default: nil, read_only: false, description: "DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    service_account_name: {key: "serviceAccountName", accessor: "service_account_name", kind: "String", nilable: true, default: nil, read_only: false, description: "ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: [https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    share_process_namespace: {key: "shareProcessNamespace", accessor: "share_process_namespace", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false. This field is alpha-level and is honored only by servers that enable the PodShareProcessNamespace feature.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    subdomain: {key: "subdomain", accessor: "subdomain", kind: "String", nilable: true, default: nil, read_only: false, description: "If specified, the fully qualified Pod hostname will be \"<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>\". If not specified, the pod will not have a domainname at all.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    termination_grace_period_seconds: {key: "terminationGracePeriodSeconds", accessor: "termination_grace_period_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    tolerations: {key: "tolerations", accessor: "tolerations", kind: "::Array(::K8S::Api::Core::V1::Toleration)", nilable: true, default: nil, read_only: false, description: "If specified, the pod's tolerations.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volumes: {key: "volumes", accessor: "volumes", kind: "::Array(::K8S::Api::Core::V1::Volume)", nilable: true, default: nil, read_only: false, description: "List of volumes that can be mounted by containers belonging to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes](https://kubernetes.io/docs/concepts/storage/volumes)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PodSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PodSpec

    # Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
    def active_deadline_seconds : Int32?
      self.["activeDeadlineSeconds"].as(Int32?)
    end

    # :ditto:
    def active_deadline_seconds! : Int32
      self.["activeDeadlineSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def active_deadline_seconds? : Int32?
      self.["activeDeadlineSeconds"]?.as(Int32?)
    end

    # :ditto:
    def active_deadline_seconds=(value : Int32?)
      self.["activeDeadlineSeconds"] = value
    end

    # If specified, the pod's scheduling constraints
    def affinity : ::K8S::Api::Core::V1::Affinity?
      self.["affinity"].as(::K8S::Api::Core::V1::Affinity?)
    end

    # :ditto:
    def affinity! : ::K8S::Api::Core::V1::Affinity
      self.["affinity"].as(::K8S::Api::Core::V1::Affinity?).not_nil!
    end

    # :ditto:
    def affinity? : ::K8S::Api::Core::V1::Affinity?
      self.["affinity"]?.as(::K8S::Api::Core::V1::Affinity?)
    end

    # :ditto:
    def affinity=(value : ::K8S::Api::Core::V1::Affinity?)
      self.["affinity"] = value
    end

    # AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
    def automount_service_account_token : ::Bool?
      self.["automountServiceAccountToken"].as(::Bool?)
    end

    # :ditto:
    def automount_service_account_token! : ::Bool
      self.["automountServiceAccountToken"].as(::Bool?).not_nil!
    end

    # :ditto:
    def automount_service_account_token? : ::Bool?
      self.["automountServiceAccountToken"]?.as(::Bool?)
    end

    # :ditto:
    def automount_service_account_token=(value : ::Bool?)
      self.["automountServiceAccountToken"] = value
    end

    # List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
    def containers : ::Array(::K8S::Api::Core::V1::Container)
      self.["containers"].as(::Array(::K8S::Api::Core::V1::Container))
    end

    # :ditto:
    def containers! : ::Array(::K8S::Api::Core::V1::Container)
      self.["containers"].as(::Array(::K8S::Api::Core::V1::Container)).not_nil!
    end

    # :ditto:
    def containers? : ::Array(::K8S::Api::Core::V1::Container)?
      self.["containers"]?.as(::Array(::K8S::Api::Core::V1::Container)?)
    end

    # :ditto:
    def containers=(value : ::Array(::K8S::Api::Core::V1::Container))
      self.["containers"] = value
    end

    # Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.
    def dns_config : ::K8S::Api::Core::V1::PodDNSConfig?
      self.["dnsConfig"].as(::K8S::Api::Core::V1::PodDNSConfig?)
    end

    # :ditto:
    def dns_config! : ::K8S::Api::Core::V1::PodDNSConfig
      self.["dnsConfig"].as(::K8S::Api::Core::V1::PodDNSConfig?).not_nil!
    end

    # :ditto:
    def dns_config? : ::K8S::Api::Core::V1::PodDNSConfig?
      self.["dnsConfig"]?.as(::K8S::Api::Core::V1::PodDNSConfig?)
    end

    # :ditto:
    def dns_config=(value : ::K8S::Api::Core::V1::PodDNSConfig?)
      self.["dnsConfig"] = value
    end

    # Set DNS policy for the pod. Defaults to "ClusterFirst". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.
    def dns_policy : String?
      self.["dnsPolicy"].as(String?)
    end

    # :ditto:
    def dns_policy! : String
      self.["dnsPolicy"].as(String?).not_nil!
    end

    # :ditto:
    def dns_policy? : String?
      self.["dnsPolicy"]?.as(String?)
    end

    # :ditto:
    def dns_policy=(value : String?)
      self.["dnsPolicy"] = value
    end

    # HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.
    def host_aliases : ::Array(::K8S::Api::Core::V1::HostAlias)?
      self.["hostAliases"].as(::Array(::K8S::Api::Core::V1::HostAlias)?)
    end

    # :ditto:
    def host_aliases! : ::Array(::K8S::Api::Core::V1::HostAlias)
      self.["hostAliases"].as(::Array(::K8S::Api::Core::V1::HostAlias)?).not_nil!
    end

    # :ditto:
    def host_aliases? : ::Array(::K8S::Api::Core::V1::HostAlias)?
      self.["hostAliases"]?.as(::Array(::K8S::Api::Core::V1::HostAlias)?)
    end

    # :ditto:
    def host_aliases=(value : ::Array(::K8S::Api::Core::V1::HostAlias)?)
      self.["hostAliases"] = value
    end

    # Use the host's ipc namespace. Optional: Default to false.
    def host_ipc : ::Bool?
      self.["hostIPC"].as(::Bool?)
    end

    # :ditto:
    def host_ipc! : ::Bool
      self.["hostIPC"].as(::Bool?).not_nil!
    end

    # :ditto:
    def host_ipc? : ::Bool?
      self.["hostIPC"]?.as(::Bool?)
    end

    # :ditto:
    def host_ipc=(value : ::Bool?)
      self.["hostIPC"] = value
    end

    # Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.
    def host_network : ::Bool?
      self.["hostNetwork"].as(::Bool?)
    end

    # :ditto:
    def host_network! : ::Bool
      self.["hostNetwork"].as(::Bool?).not_nil!
    end

    # :ditto:
    def host_network? : ::Bool?
      self.["hostNetwork"]?.as(::Bool?)
    end

    # :ditto:
    def host_network=(value : ::Bool?)
      self.["hostNetwork"] = value
    end

    # Use the host's pid namespace. Optional: Default to false.
    def host_pid : ::Bool?
      self.["hostPID"].as(::Bool?)
    end

    # :ditto:
    def host_pid! : ::Bool
      self.["hostPID"].as(::Bool?).not_nil!
    end

    # :ditto:
    def host_pid? : ::Bool?
      self.["hostPID"]?.as(::Bool?)
    end

    # :ditto:
    def host_pid=(value : ::Bool?)
      self.["hostPID"] = value
    end

    # Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
    def hostname : String?
      self.["hostname"].as(String?)
    end

    # :ditto:
    def hostname! : String
      self.["hostname"].as(String?).not_nil!
    end

    # :ditto:
    def hostname? : String?
      self.["hostname"]?.as(String?)
    end

    # :ditto:
    def hostname=(value : String?)
      self.["hostname"] = value
    end

    # ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: [[https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod)](https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod))
    def image_pull_secrets : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?
      self.["imagePullSecrets"].as(::Array(::K8S::Api::Core::V1::LocalObjectReference)?)
    end

    # :ditto:
    def image_pull_secrets! : ::Array(::K8S::Api::Core::V1::LocalObjectReference)
      self.["imagePullSecrets"].as(::Array(::K8S::Api::Core::V1::LocalObjectReference)?).not_nil!
    end

    # :ditto:
    def image_pull_secrets? : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?
      self.["imagePullSecrets"]?.as(::Array(::K8S::Api::Core::V1::LocalObjectReference)?)
    end

    # :ditto:
    def image_pull_secrets=(value : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?)
      self.["imagePullSecrets"] = value
    end

    # List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, or Liveness probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest [[request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/](request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/)]([request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/](request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/))
    def init_containers : ::Array(::K8S::Api::Core::V1::Container)?
      self.["initContainers"].as(::Array(::K8S::Api::Core::V1::Container)?)
    end

    # :ditto:
    def init_containers! : ::Array(::K8S::Api::Core::V1::Container)
      self.["initContainers"].as(::Array(::K8S::Api::Core::V1::Container)?).not_nil!
    end

    # :ditto:
    def init_containers? : ::Array(::K8S::Api::Core::V1::Container)?
      self.["initContainers"]?.as(::Array(::K8S::Api::Core::V1::Container)?)
    end

    # :ditto:
    def init_containers=(value : ::Array(::K8S::Api::Core::V1::Container)?)
      self.["initContainers"] = value
    end

    # NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.
    def node_name : String?
      self.["nodeName"].as(String?)
    end

    # :ditto:
    def node_name! : String
      self.["nodeName"].as(String?).not_nil!
    end

    # :ditto:
    def node_name? : String?
      self.["nodeName"]?.as(String?)
    end

    # :ditto:
    def node_name=(value : String?)
      self.["nodeName"] = value
    end

    # NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: [[https://kubernetes.io/docs/concepts/configuration/assign-pod-node/](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/)](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/))
    def node_selector : ::Hash(String, String)?
      self.["nodeSelector"].as(::Hash(String, String)?)
    end

    # :ditto:
    def node_selector! : ::Hash(String, String)
      self.["nodeSelector"].as(::Hash(String, String)?).not_nil!
    end

    # :ditto:
    def node_selector? : ::Hash(String, String)?
      self.["nodeSelector"]?.as(::Hash(String, String)?)
    end

    # :ditto:
    def node_selector=(value : ::Hash(String, String)?)
      self.["nodeSelector"] = value
    end

    # The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
    def priority : Int32?
      self.["priority"].as(Int32?)
    end

    # :ditto:
    def priority! : Int32
      self.["priority"].as(Int32?).not_nil!
    end

    # :ditto:
    def priority? : Int32?
      self.["priority"]?.as(Int32?)
    end

    # :ditto:
    def priority=(value : Int32?)
      self.["priority"] = value
    end

    # If specified, indicates the pod's priority. "system-node-critical" and "system-cluster-critical" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
    def priority_class_name : String?
      self.["priorityClassName"].as(String?)
    end

    # :ditto:
    def priority_class_name! : String
      self.["priorityClassName"].as(String?).not_nil!
    end

    # :ditto:
    def priority_class_name? : String?
      self.["priorityClassName"]?.as(String?)
    end

    # :ditto:
    def priority_class_name=(value : String?)
      self.["priorityClassName"] = value
    end

    # If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to "True" More info: [[https://github.com/kubernetes/community/blob/master/keps/sig-network/0007-pod-ready%2B%2B.md](https://github.com/kubernetes/community/blob/master/keps/sig-network/0007-pod-ready%2B%2B.md)](https://github.com/kubernetes/community/blob/master/keps/sig-network/0007-pod-ready%2B%2B.md](https://github.com/kubernetes/community/blob/master/keps/sig-network/0007-pod-ready%2B%2B.md))
    def readiness_gates : ::Array(::K8S::Api::Core::V1::PodReadinessGate)?
      self.["readinessGates"].as(::Array(::K8S::Api::Core::V1::PodReadinessGate)?)
    end

    # :ditto:
    def readiness_gates! : ::Array(::K8S::Api::Core::V1::PodReadinessGate)
      self.["readinessGates"].as(::Array(::K8S::Api::Core::V1::PodReadinessGate)?).not_nil!
    end

    # :ditto:
    def readiness_gates? : ::Array(::K8S::Api::Core::V1::PodReadinessGate)?
      self.["readinessGates"]?.as(::Array(::K8S::Api::Core::V1::PodReadinessGate)?)
    end

    # :ditto:
    def readiness_gates=(value : ::Array(::K8S::Api::Core::V1::PodReadinessGate)?)
      self.["readinessGates"] = value
    end

    # Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy))
    def restart_policy : String?
      self.["restartPolicy"].as(String?)
    end

    # :ditto:
    def restart_policy! : String
      self.["restartPolicy"].as(String?).not_nil!
    end

    # :ditto:
    def restart_policy? : String?
      self.["restartPolicy"]?.as(String?)
    end

    # :ditto:
    def restart_policy=(value : String?)
      self.["restartPolicy"] = value
    end

    # If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
    def scheduler_name : String?
      self.["schedulerName"].as(String?)
    end

    # :ditto:
    def scheduler_name! : String
      self.["schedulerName"].as(String?).not_nil!
    end

    # :ditto:
    def scheduler_name? : String?
      self.["schedulerName"]?.as(String?)
    end

    # :ditto:
    def scheduler_name=(value : String?)
      self.["schedulerName"] = value
    end

    # SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.
    def security_context : ::K8S::Api::Core::V1::PodSecurityContext?
      self.["securityContext"].as(::K8S::Api::Core::V1::PodSecurityContext?)
    end

    # :ditto:
    def security_context! : ::K8S::Api::Core::V1::PodSecurityContext
      self.["securityContext"].as(::K8S::Api::Core::V1::PodSecurityContext?).not_nil!
    end

    # :ditto:
    def security_context? : ::K8S::Api::Core::V1::PodSecurityContext?
      self.["securityContext"]?.as(::K8S::Api::Core::V1::PodSecurityContext?)
    end

    # :ditto:
    def security_context=(value : ::K8S::Api::Core::V1::PodSecurityContext?)
      self.["securityContext"] = value
    end

    # DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
    def service_account : String?
      self.["serviceAccount"].as(String?)
    end

    # :ditto:
    def service_account! : String
      self.["serviceAccount"].as(String?).not_nil!
    end

    # :ditto:
    def service_account? : String?
      self.["serviceAccount"]?.as(String?)
    end

    # :ditto:
    def service_account=(value : String?)
      self.["serviceAccount"] = value
    end

    # ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: [[https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/)](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/))
    def service_account_name : String?
      self.["serviceAccountName"].as(String?)
    end

    # :ditto:
    def service_account_name! : String
      self.["serviceAccountName"].as(String?).not_nil!
    end

    # :ditto:
    def service_account_name? : String?
      self.["serviceAccountName"]?.as(String?)
    end

    # :ditto:
    def service_account_name=(value : String?)
      self.["serviceAccountName"] = value
    end

    # Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false. This field is alpha-level and is honored only by servers that enable the PodShareProcessNamespace feature.
    def share_process_namespace : ::Bool?
      self.["shareProcessNamespace"].as(::Bool?)
    end

    # :ditto:
    def share_process_namespace! : ::Bool
      self.["shareProcessNamespace"].as(::Bool?).not_nil!
    end

    # :ditto:
    def share_process_namespace? : ::Bool?
      self.["shareProcessNamespace"]?.as(::Bool?)
    end

    # :ditto:
    def share_process_namespace=(value : ::Bool?)
      self.["shareProcessNamespace"] = value
    end

    # If specified, the fully qualified Pod hostname will be "<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>". If not specified, the pod will not have a domainname at all.
    def subdomain : String?
      self.["subdomain"].as(String?)
    end

    # :ditto:
    def subdomain! : String
      self.["subdomain"].as(String?).not_nil!
    end

    # :ditto:
    def subdomain? : String?
      self.["subdomain"]?.as(String?)
    end

    # :ditto:
    def subdomain=(value : String?)
      self.["subdomain"] = value
    end

    # Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
    def termination_grace_period_seconds : Int32?
      self.["terminationGracePeriodSeconds"].as(Int32?)
    end

    # :ditto:
    def termination_grace_period_seconds! : Int32
      self.["terminationGracePeriodSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def termination_grace_period_seconds? : Int32?
      self.["terminationGracePeriodSeconds"]?.as(Int32?)
    end

    # :ditto:
    def termination_grace_period_seconds=(value : Int32?)
      self.["terminationGracePeriodSeconds"] = value
    end

    # If specified, the pod's tolerations.
    def tolerations : ::Array(::K8S::Api::Core::V1::Toleration)?
      self.["tolerations"].as(::Array(::K8S::Api::Core::V1::Toleration)?)
    end

    # :ditto:
    def tolerations! : ::Array(::K8S::Api::Core::V1::Toleration)
      self.["tolerations"].as(::Array(::K8S::Api::Core::V1::Toleration)?).not_nil!
    end

    # :ditto:
    def tolerations? : ::Array(::K8S::Api::Core::V1::Toleration)?
      self.["tolerations"]?.as(::Array(::K8S::Api::Core::V1::Toleration)?)
    end

    # :ditto:
    def tolerations=(value : ::Array(::K8S::Api::Core::V1::Toleration)?)
      self.["tolerations"] = value
    end

    # List of volumes that can be mounted by containers belonging to the pod. More info: [[https://kubernetes.io/docs/concepts/storage/volumes](https://kubernetes.io/docs/concepts/storage/volumes)](https://kubernetes.io/docs/concepts/storage/volumes](https://kubernetes.io/docs/concepts/storage/volumes))
    def volumes : ::Array(::K8S::Api::Core::V1::Volume)?
      self.["volumes"].as(::Array(::K8S::Api::Core::V1::Volume)?)
    end

    # :ditto:
    def volumes! : ::Array(::K8S::Api::Core::V1::Volume)
      self.["volumes"].as(::Array(::K8S::Api::Core::V1::Volume)?).not_nil!
    end

    # :ditto:
    def volumes? : ::Array(::K8S::Api::Core::V1::Volume)?
      self.["volumes"]?.as(::Array(::K8S::Api::Core::V1::Volume)?)
    end

    # :ditto:
    def volumes=(value : ::Array(::K8S::Api::Core::V1::Volume)?)
      self.["volumes"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "activeDeadlineSeconds", accessor: "active_deadline_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "affinity", accessor: "affinity", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::Affinity },
        { key: "automountServiceAccountToken", accessor: "automount_service_account_token", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "containers", accessor: "containers", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::Container) },
        { key: "dnsConfig", accessor: "dns_config", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodDNSConfig },
        { key: "dnsPolicy", accessor: "dns_policy", nilable: true, read_only: false, default: nil, kind: String },
        { key: "hostAliases", accessor: "host_aliases", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::HostAlias) },
        { key: "hostIPC", accessor: "host_ipc", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "hostNetwork", accessor: "host_network", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "hostPID", accessor: "host_pid", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "hostname", accessor: "hostname", nilable: true, read_only: false, default: nil, kind: String },
        { key: "imagePullSecrets", accessor: "image_pull_secrets", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::LocalObjectReference) },
        { key: "initContainers", accessor: "init_containers", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::Container) },
        { key: "nodeName", accessor: "node_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "nodeSelector", accessor: "node_selector", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String) },
        { key: "priority", accessor: "priority", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "priorityClassName", accessor: "priority_class_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "readinessGates", accessor: "readiness_gates", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::PodReadinessGate) },
        { key: "restartPolicy", accessor: "restart_policy", nilable: true, read_only: false, default: nil, kind: String },
        { key: "schedulerName", accessor: "scheduler_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "securityContext", accessor: "security_context", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodSecurityContext },
        { key: "serviceAccount", accessor: "service_account", nilable: true, read_only: false, default: nil, kind: String },
        { key: "serviceAccountName", accessor: "service_account_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "shareProcessNamespace", accessor: "share_process_namespace", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "subdomain", accessor: "subdomain", nilable: true, read_only: false, default: nil, kind: String },
        { key: "terminationGracePeriodSeconds", accessor: "termination_grace_period_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "tolerations", accessor: "tolerations", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::Toleration) },
        { key: "volumes", accessor: "volumes", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::Volume) },
      ])
end
  end
end
