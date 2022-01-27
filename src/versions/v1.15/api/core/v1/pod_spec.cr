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
    abstract def active_deadline_seconds=(value : Int32)
    # If specified, the pod's scheduling constraints
    abstract def affinity : ::K8S::Api::Core::V1::Affinity?
    # :ditto:
    abstract def affinity! : ::K8S::Api::Core::V1::Affinity
    # :ditto:
    abstract def affinity? : ::K8S::Api::Core::V1::Affinity?
    # :ditto:
    abstract def affinity=(value : ::K8S::Api::Core::V1::Affinity)
    # AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
    abstract def automount_service_account_token : ::Bool?
    # :ditto:
    abstract def automount_service_account_token! : ::Bool
    # :ditto:
    abstract def automount_service_account_token? : ::Bool?
    # :ditto:
    abstract def automount_service_account_token=(value : ::Bool)
    # List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
    abstract def containers : ::Array(::K8S::Api::Core::V1::Container)?
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
    abstract def dns_config=(value : ::K8S::Api::Core::V1::PodDNSConfig)
    # Set DNS policy for the pod. Defaults to "ClusterFirst". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.
    abstract def dns_policy : String?
    # :ditto:
    abstract def dns_policy! : String
    # :ditto:
    abstract def dns_policy? : String?
    # :ditto:
    abstract def dns_policy=(value : String)
    # EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.
    abstract def enable_service_links : ::Bool?
    # :ditto:
    abstract def enable_service_links! : ::Bool
    # :ditto:
    abstract def enable_service_links? : ::Bool?
    # :ditto:
    abstract def enable_service_links=(value : ::Bool)
    # HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.
    abstract def host_aliases : ::Array(::K8S::Api::Core::V1::HostAlias)?
    # :ditto:
    abstract def host_aliases! : ::Array(::K8S::Api::Core::V1::HostAlias)
    # :ditto:
    abstract def host_aliases? : ::Array(::K8S::Api::Core::V1::HostAlias)?
    # :ditto:
    abstract def host_aliases=(value : ::Array(::K8S::Api::Core::V1::HostAlias))
    # Use the host's ipc namespace. Optional: Default to false.
    abstract def host_ipc : ::Bool?
    # :ditto:
    abstract def host_ipc! : ::Bool
    # :ditto:
    abstract def host_ipc? : ::Bool?
    # :ditto:
    abstract def host_ipc=(value : ::Bool)
    # Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.
    abstract def host_network : ::Bool?
    # :ditto:
    abstract def host_network! : ::Bool
    # :ditto:
    abstract def host_network? : ::Bool?
    # :ditto:
    abstract def host_network=(value : ::Bool)
    # Use the host's pid namespace. Optional: Default to false.
    abstract def host_pid : ::Bool?
    # :ditto:
    abstract def host_pid! : ::Bool
    # :ditto:
    abstract def host_pid? : ::Bool?
    # :ditto:
    abstract def host_pid=(value : ::Bool)
    # Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
    abstract def hostname : String?
    # :ditto:
    abstract def hostname! : String
    # :ditto:
    abstract def hostname? : String?
    # :ditto:
    abstract def hostname=(value : String)
    # ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: [[https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod)](https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod))
    abstract def image_pull_secrets : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?
    # :ditto:
    abstract def image_pull_secrets! : ::Array(::K8S::Api::Core::V1::LocalObjectReference)
    # :ditto:
    abstract def image_pull_secrets? : ::Array(::K8S::Api::Core::V1::LocalObjectReference)?
    # :ditto:
    abstract def image_pull_secrets=(value : ::Array(::K8S::Api::Core::V1::LocalObjectReference))
    # List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, or Liveness probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest [[request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/](request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/)]([request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/](request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/))
    abstract def init_containers : ::Array(::K8S::Api::Core::V1::Container)?
    # :ditto:
    abstract def init_containers! : ::Array(::K8S::Api::Core::V1::Container)
    # :ditto:
    abstract def init_containers? : ::Array(::K8S::Api::Core::V1::Container)?
    # :ditto:
    abstract def init_containers=(value : ::Array(::K8S::Api::Core::V1::Container))
    # NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.
    abstract def node_name : String?
    # :ditto:
    abstract def node_name! : String
    # :ditto:
    abstract def node_name? : String?
    # :ditto:
    abstract def node_name=(value : String)
    # NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: [[https://kubernetes.io/docs/concepts/configuration/assign-pod-node/](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/)](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/))
    abstract def node_selector : ::Hash(String, String)?
    # :ditto:
    abstract def node_selector! : ::Hash(String, String)
    # :ditto:
    abstract def node_selector? : ::Hash(String, String)?
    # :ditto:
    abstract def node_selector=(value : ::Hash(String, String))
    # PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. This field is alpha-level and is only honored by servers that enable the NonPreemptingPriority feature.
    abstract def preemption_policy : String?
    # :ditto:
    abstract def preemption_policy! : String
    # :ditto:
    abstract def preemption_policy? : String?
    # :ditto:
    abstract def preemption_policy=(value : String)
    # The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
    abstract def priority : Int32?
    # :ditto:
    abstract def priority! : Int32
    # :ditto:
    abstract def priority? : Int32?
    # :ditto:
    abstract def priority=(value : Int32)
    # If specified, indicates the pod's priority. "system-node-critical" and "system-cluster-critical" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
    abstract def priority_class_name : String?
    # :ditto:
    abstract def priority_class_name! : String
    # :ditto:
    abstract def priority_class_name? : String?
    # :ditto:
    abstract def priority_class_name=(value : String)
    # If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to "True" More info: [[https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md](https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md)](https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md](https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md))
    abstract def readiness_gates : ::Array(::K8S::Api::Core::V1::PodReadinessGate)?
    # :ditto:
    abstract def readiness_gates! : ::Array(::K8S::Api::Core::V1::PodReadinessGate)
    # :ditto:
    abstract def readiness_gates? : ::Array(::K8S::Api::Core::V1::PodReadinessGate)?
    # :ditto:
    abstract def readiness_gates=(value : ::Array(::K8S::Api::Core::V1::PodReadinessGate))
    # Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy))
    abstract def restart_policy : String?
    # :ditto:
    abstract def restart_policy! : String
    # :ditto:
    abstract def restart_policy? : String?
    # :ditto:
    abstract def restart_policy=(value : String)
    # RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the "legacy" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: [[https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md This is a beta feature as of Kubernetes v1.14.](https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md This is a beta feature as of Kubernetes v1.14.)](https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md This is a beta feature as of Kubernetes v1.14.](https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md This is a beta feature as of Kubernetes v1.14.))
    abstract def runtime_class_name : String?
    # :ditto:
    abstract def runtime_class_name! : String
    # :ditto:
    abstract def runtime_class_name? : String?
    # :ditto:
    abstract def runtime_class_name=(value : String)
    # If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
    abstract def scheduler_name : String?
    # :ditto:
    abstract def scheduler_name! : String
    # :ditto:
    abstract def scheduler_name? : String?
    # :ditto:
    abstract def scheduler_name=(value : String)
    # SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.
    abstract def security_context : ::K8S::Api::Core::V1::PodSecurityContext?
    # :ditto:
    abstract def security_context! : ::K8S::Api::Core::V1::PodSecurityContext
    # :ditto:
    abstract def security_context? : ::K8S::Api::Core::V1::PodSecurityContext?
    # :ditto:
    abstract def security_context=(value : ::K8S::Api::Core::V1::PodSecurityContext)
    # DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
    abstract def service_account : String?
    # :ditto:
    abstract def service_account! : String
    # :ditto:
    abstract def service_account? : String?
    # :ditto:
    abstract def service_account=(value : String)
    # ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: [[https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/)](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/))
    abstract def service_account_name : String?
    # :ditto:
    abstract def service_account_name! : String
    # :ditto:
    abstract def service_account_name? : String?
    # :ditto:
    abstract def service_account_name=(value : String)
    # Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false. This field is beta-level and may be disabled with the PodShareProcessNamespace feature.
    abstract def share_process_namespace : ::Bool?
    # :ditto:
    abstract def share_process_namespace! : ::Bool
    # :ditto:
    abstract def share_process_namespace? : ::Bool?
    # :ditto:
    abstract def share_process_namespace=(value : ::Bool)
    # If specified, the fully qualified Pod hostname will be "<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>". If not specified, the pod will not have a domainname at all.
    abstract def subdomain : String?
    # :ditto:
    abstract def subdomain! : String
    # :ditto:
    abstract def subdomain? : String?
    # :ditto:
    abstract def subdomain=(value : String)
    # Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
    abstract def termination_grace_period_seconds : Int32?
    # :ditto:
    abstract def termination_grace_period_seconds! : Int32
    # :ditto:
    abstract def termination_grace_period_seconds? : Int32?
    # :ditto:
    abstract def termination_grace_period_seconds=(value : Int32)
    # If specified, the pod's tolerations.
    abstract def tolerations : ::Array(::K8S::Api::Core::V1::Toleration)?
    # :ditto:
    abstract def tolerations! : ::Array(::K8S::Api::Core::V1::Toleration)
    # :ditto:
    abstract def tolerations? : ::Array(::K8S::Api::Core::V1::Toleration)?
    # :ditto:
    abstract def tolerations=(value : ::Array(::K8S::Api::Core::V1::Toleration))
    # List of volumes that can be mounted by containers belonging to the pod. More info: [[https://kubernetes.io/docs/concepts/storage/volumes](https://kubernetes.io/docs/concepts/storage/volumes)](https://kubernetes.io/docs/concepts/storage/volumes](https://kubernetes.io/docs/concepts/storage/volumes))
    abstract def volumes : ::Array(::K8S::Api::Core::V1::Volume)?
    # :ditto:
    abstract def volumes! : ::Array(::K8S::Api::Core::V1::Volume)
    # :ditto:
    abstract def volumes? : ::Array(::K8S::Api::Core::V1::Volume)?
    # :ditto:
    abstract def volumes=(value : ::Array(::K8S::Api::Core::V1::Volume))
  end

  # PodSpec is a description of a pod.
  @[::K8S::Properties(
    active_deadline_seconds: {key: "activeDeadlineSeconds", accessor: "active_deadline_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    affinity: {key: "affinity", accessor: "affinity", kind: "::K8S::Api::Core::V1::Affinity", nilable: true, default: nil, read_only: false, description: "If specified, the pod's scheduling constraints", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    automount_service_account_token: {key: "automountServiceAccountToken", accessor: "automount_service_account_token", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    containers: {key: "containers", accessor: "containers", kind: "::Array(::K8S::Api::Core::V1::Container)", nilable: false, default: nil, read_only: false, description: "List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    dns_config: {key: "dnsConfig", accessor: "dns_config", kind: "::K8S::Api::Core::V1::PodDNSConfig", nilable: true, default: nil, read_only: false, description: "Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    dns_policy: {key: "dnsPolicy", accessor: "dns_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "Set DNS policy for the pod. Defaults to \"ClusterFirst\". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    enable_service_links: {key: "enableServiceLinks", accessor: "enable_service_links", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_aliases: {key: "hostAliases", accessor: "host_aliases", kind: "::Array(::K8S::Api::Core::V1::HostAlias)", nilable: true, default: nil, read_only: false, description: "HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_ipc: {key: "hostIPC", accessor: "host_ipc", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Use the host's ipc namespace. Optional: Default to false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_network: {key: "hostNetwork", accessor: "host_network", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_pid: {key: "hostPID", accessor: "host_pid", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Use the host's pid namespace. Optional: Default to false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    hostname: {key: "hostname", accessor: "hostname", kind: "String", nilable: true, default: nil, read_only: false, description: "Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    image_pull_secrets: {key: "imagePullSecrets", accessor: "image_pull_secrets", kind: "::Array(::K8S::Api::Core::V1::LocalObjectReference)", nilable: true, default: nil, read_only: false, description: "ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: [https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    init_containers: {key: "initContainers", accessor: "init_containers", kind: "::Array(::K8S::Api::Core::V1::Container)", nilable: true, default: nil, read_only: false, description: "List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, or Liveness probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest [request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/](request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    node_name: {key: "nodeName", accessor: "node_name", kind: "String", nilable: true, default: nil, read_only: false, description: "NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    node_selector: {key: "nodeSelector", accessor: "node_selector", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: [https://kubernetes.io/docs/concepts/configuration/assign-pod-node/](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    preemption_policy: {key: "preemptionPolicy", accessor: "preemption_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. This field is alpha-level and is only honored by servers that enable the NonPreemptingPriority feature.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    priority: {key: "priority", accessor: "priority", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    priority_class_name: {key: "priorityClassName", accessor: "priority_class_name", kind: "String", nilable: true, default: nil, read_only: false, description: "If specified, indicates the pod's priority. \"system-node-critical\" and \"system-cluster-critical\" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    readiness_gates: {key: "readinessGates", accessor: "readiness_gates", kind: "::Array(::K8S::Api::Core::V1::PodReadinessGate)", nilable: true, default: nil, read_only: false, description: "If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to \"True\" More info: [https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md](https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    restart_policy: {key: "restartPolicy", accessor: "restart_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    runtime_class_name: {key: "runtimeClassName", accessor: "runtime_class_name", kind: "String", nilable: true, default: nil, read_only: false, description: "RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the \"legacy\" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: [https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md This is a beta feature as of Kubernetes v1.14.](https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md This is a beta feature as of Kubernetes v1.14.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scheduler_name: {key: "schedulerName", accessor: "scheduler_name", kind: "String", nilable: true, default: nil, read_only: false, description: "If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    security_context: {key: "securityContext", accessor: "security_context", kind: "::K8S::Api::Core::V1::PodSecurityContext", nilable: true, default: nil, read_only: false, description: "SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    service_account: {key: "serviceAccount", accessor: "service_account", kind: "String", nilable: true, default: nil, read_only: false, description: "DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    service_account_name: {key: "serviceAccountName", accessor: "service_account_name", kind: "String", nilable: true, default: nil, read_only: false, description: "ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: [https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    share_process_namespace: {key: "shareProcessNamespace", accessor: "share_process_namespace", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false. This field is beta-level and may be disabled with the PodShareProcessNamespace feature.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    subdomain: {key: "subdomain", accessor: "subdomain", kind: "String", nilable: true, default: nil, read_only: false, description: "If specified, the fully qualified Pod hostname will be \"<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>\". If not specified, the pod will not have a domainname at all.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    termination_grace_period_seconds: {key: "terminationGracePeriodSeconds", accessor: "termination_grace_period_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    tolerations: {key: "tolerations", accessor: "tolerations", kind: "::Array(::K8S::Api::Core::V1::Toleration)", nilable: true, default: nil, read_only: false, description: "If specified, the pod's tolerations.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volumes: {key: "volumes", accessor: "volumes", kind: "::Array(::K8S::Api::Core::V1::Volume)", nilable: true, default: nil, read_only: false, description: "List of volumes that can be mounted by containers belonging to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes](https://kubernetes.io/docs/concepts/storage/volumes)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PodSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PodSpec
    k8s_object_accessor("activeDeadlineSeconds", active_deadline_seconds : Int32, true, false, "Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.")
    k8s_object_accessor("affinity", affinity : ::K8S::Api::Core::V1::Affinity, true, false, "If specified, the pod's scheduling constraints")
    k8s_object_accessor("automountServiceAccountToken", automount_service_account_token : ::Bool, true, false, "AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.")
    k8s_object_accessor("containers", containers : ::Array(::K8S::Api::Core::V1::Container), false, false, "List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.")
    k8s_object_accessor("dnsConfig", dns_config : ::K8S::Api::Core::V1::PodDNSConfig, true, false, "Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.")
    k8s_object_accessor("dnsPolicy", dns_policy : String, true, false, "Set DNS policy for the pod. Defaults to \"ClusterFirst\". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.")
    k8s_object_accessor("enableServiceLinks", enable_service_links : ::Bool, true, false, "EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.")
    k8s_object_accessor("hostAliases", host_aliases : ::Array(::K8S::Api::Core::V1::HostAlias), true, false, "HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.")
    k8s_object_accessor("hostIPC", host_ipc : ::Bool, true, false, "Use the host's ipc namespace. Optional: Default to false.")
    k8s_object_accessor("hostNetwork", host_network : ::Bool, true, false, "Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.")
    k8s_object_accessor("hostPID", host_pid : ::Bool, true, false, "Use the host's pid namespace. Optional: Default to false.")
    k8s_object_accessor("hostname", hostname : String, true, false, "Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.")
    k8s_object_accessor("imagePullSecrets", image_pull_secrets : ::Array(::K8S::Api::Core::V1::LocalObjectReference), true, false, "ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: [https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod)")
    k8s_object_accessor("initContainers", init_containers : ::Array(::K8S::Api::Core::V1::Container), true, false, "List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, or Liveness probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest [request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/](request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/)")
    k8s_object_accessor("nodeName", node_name : String, true, false, "NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.")
    k8s_object_accessor("nodeSelector", node_selector : ::Hash(String, String), true, false, "NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: [https://kubernetes.io/docs/concepts/configuration/assign-pod-node/](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/)")
    k8s_object_accessor("preemptionPolicy", preemption_policy : String, true, false, "PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. This field is alpha-level and is only honored by servers that enable the NonPreemptingPriority feature.")
    k8s_object_accessor("priority", priority : Int32, true, false, "The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.")
    k8s_object_accessor("priorityClassName", priority_class_name : String, true, false, "If specified, indicates the pod's priority. \"system-node-critical\" and \"system-cluster-critical\" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.")
    k8s_object_accessor("readinessGates", readiness_gates : ::Array(::K8S::Api::Core::V1::PodReadinessGate), true, false, "If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to \"True\" More info: [https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md](https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md)")
    k8s_object_accessor("restartPolicy", restart_policy : String, true, false, "Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy)")
    k8s_object_accessor("runtimeClassName", runtime_class_name : String, true, false, "RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the \"legacy\" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: [https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md This is a beta feature as of Kubernetes v1.14.](https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md This is a beta feature as of Kubernetes v1.14.)")
    k8s_object_accessor("schedulerName", scheduler_name : String, true, false, "If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.")
    k8s_object_accessor("securityContext", security_context : ::K8S::Api::Core::V1::PodSecurityContext, true, false, "SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.")
    k8s_object_accessor("serviceAccount", service_account : String, true, false, "DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.")
    k8s_object_accessor("serviceAccountName", service_account_name : String, true, false, "ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: [https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/)")
    k8s_object_accessor("shareProcessNamespace", share_process_namespace : ::Bool, true, false, "Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false. This field is beta-level and may be disabled with the PodShareProcessNamespace feature.")
    k8s_object_accessor("subdomain", subdomain : String, true, false, "If specified, the fully qualified Pod hostname will be \"<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>\". If not specified, the pod will not have a domainname at all.")
    k8s_object_accessor("terminationGracePeriodSeconds", termination_grace_period_seconds : Int32, true, false, "Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.")
    k8s_object_accessor("tolerations", tolerations : ::Array(::K8S::Api::Core::V1::Toleration), true, false, "If specified, the pod's tolerations.")
    k8s_object_accessor("volumes", volumes : ::Array(::K8S::Api::Core::V1::Volume), true, false, "List of volumes that can be mounted by containers belonging to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes](https://kubernetes.io/docs/concepts/storage/volumes)")

    def initialize(*, active_deadline_seconds : Int32? = nil, affinity : ::K8S::Api::Core::V1::Affinity? = nil, automount_service_account_token : ::Bool? = nil, containers : ::Array(::K8S::Api::Core::V1::Container)? = nil, dns_config : ::K8S::Api::Core::V1::PodDNSConfig? = nil, dns_policy : String? = nil, enable_service_links : ::Bool? = nil, host_aliases : ::Array(::K8S::Api::Core::V1::HostAlias)? = nil, host_ipc : ::Bool? = nil, host_network : ::Bool? = nil, host_pid : ::Bool? = nil, hostname : String? = nil, image_pull_secrets : ::Array(::K8S::Api::Core::V1::LocalObjectReference)? = nil, init_containers : ::Array(::K8S::Api::Core::V1::Container)? = nil, node_name : String? = nil, node_selector : ::Hash(String, String)? = nil, preemption_policy : String? = nil, priority : Int32? = nil, priority_class_name : String? = nil, readiness_gates : ::Array(::K8S::Api::Core::V1::PodReadinessGate)? = nil, restart_policy : String? = nil, runtime_class_name : String? = nil, scheduler_name : String? = nil, security_context : ::K8S::Api::Core::V1::PodSecurityContext? = nil, service_account : String? = nil, service_account_name : String? = nil, share_process_namespace : ::Bool? = nil, subdomain : String? = nil, termination_grace_period_seconds : Int32? = nil, tolerations : ::Array(::K8S::Api::Core::V1::Toleration)? = nil, volumes : ::Array(::K8S::Api::Core::V1::Volume)? = nil)
      super()
      self.["activeDeadlineSeconds"] = active_deadline_seconds
      self.["affinity"] = affinity
      self.["automountServiceAccountToken"] = automount_service_account_token
      self.["containers"] = containers
      self.["dnsConfig"] = dns_config
      self.["dnsPolicy"] = dns_policy
      self.["enableServiceLinks"] = enable_service_links
      self.["hostAliases"] = host_aliases
      self.["hostIPC"] = host_ipc
      self.["hostNetwork"] = host_network
      self.["hostPID"] = host_pid
      self.["hostname"] = hostname
      self.["imagePullSecrets"] = image_pull_secrets
      self.["initContainers"] = init_containers
      self.["nodeName"] = node_name
      self.["nodeSelector"] = node_selector
      self.["preemptionPolicy"] = preemption_policy
      self.["priority"] = priority
      self.["priorityClassName"] = priority_class_name
      self.["readinessGates"] = readiness_gates
      self.["restartPolicy"] = restart_policy
      self.["runtimeClassName"] = runtime_class_name
      self.["schedulerName"] = scheduler_name
      self.["securityContext"] = security_context
      self.["serviceAccount"] = service_account
      self.["serviceAccountName"] = service_account_name
      self.["shareProcessNamespace"] = share_process_namespace
      self.["subdomain"] = subdomain
      self.["terminationGracePeriodSeconds"] = termination_grace_period_seconds
      self.["tolerations"] = tolerations
      self.["volumes"] = volumes
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "activeDeadlineSeconds", accessor: "active_deadline_seconds", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "affinity", accessor: "affinity", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::Affinity},
      {key: "automountServiceAccountToken", accessor: "automount_service_account_token", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "containers", accessor: "containers", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::Container)},
      {key: "dnsConfig", accessor: "dns_config", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodDNSConfig},
      {key: "dnsPolicy", accessor: "dns_policy", nilable: true, read_only: false, default: nil, kind: String},
      {key: "enableServiceLinks", accessor: "enable_service_links", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "hostAliases", accessor: "host_aliases", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::HostAlias)},
      {key: "hostIPC", accessor: "host_ipc", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "hostNetwork", accessor: "host_network", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "hostPID", accessor: "host_pid", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "hostname", accessor: "hostname", nilable: true, read_only: false, default: nil, kind: String},
      {key: "imagePullSecrets", accessor: "image_pull_secrets", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::LocalObjectReference)},
      {key: "initContainers", accessor: "init_containers", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::Container)},
      {key: "nodeName", accessor: "node_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "nodeSelector", accessor: "node_selector", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String)},
      {key: "preemptionPolicy", accessor: "preemption_policy", nilable: true, read_only: false, default: nil, kind: String},
      {key: "priority", accessor: "priority", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "priorityClassName", accessor: "priority_class_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "readinessGates", accessor: "readiness_gates", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::PodReadinessGate)},
      {key: "restartPolicy", accessor: "restart_policy", nilable: true, read_only: false, default: nil, kind: String},
      {key: "runtimeClassName", accessor: "runtime_class_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "schedulerName", accessor: "scheduler_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "securityContext", accessor: "security_context", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodSecurityContext},
      {key: "serviceAccount", accessor: "service_account", nilable: true, read_only: false, default: nil, kind: String},
      {key: "serviceAccountName", accessor: "service_account_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "shareProcessNamespace", accessor: "share_process_namespace", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "subdomain", accessor: "subdomain", nilable: true, read_only: false, default: nil, kind: String},
      {key: "terminationGracePeriodSeconds", accessor: "termination_grace_period_seconds", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "tolerations", accessor: "tolerations", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::Toleration)},
      {key: "volumes", accessor: "volumes", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::Volume)},
    ])
  end
end
