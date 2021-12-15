# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PodSpec is a description of a pod.
  @[::K8S::Properties(
    active_deadline_seconds: {type: Int32, nilable: true, key: "activeDeadlineSeconds", getter: false, setter: false},
    affinity: {type: Api::Core::V1::Affinity, nilable: true, key: "affinity", getter: false, setter: false},
    automount_service_account_token: {type: Bool, nilable: true, key: "automountServiceAccountToken", getter: false, setter: false},
    containers: {type: Array(Api::Core::V1::Container), nilable: false, key: "containers", getter: false, setter: false},
    dns_config: {type: Api::Core::V1::PodDNSConfig, nilable: true, key: "dnsConfig", getter: false, setter: false},
    dns_policy: {type: String, nilable: true, key: "dnsPolicy", getter: false, setter: false},
    enable_service_links: {type: Bool, nilable: true, key: "enableServiceLinks", getter: false, setter: false},
    ephemeral_containers: {type: Array(Api::Core::V1::EphemeralContainer), nilable: true, key: "ephemeralContainers", getter: false, setter: false},
    host_aliases: {type: Array(Api::Core::V1::HostAlias), nilable: true, key: "hostAliases", getter: false, setter: false},
    host_ipc: {type: Bool, nilable: true, key: "hostIPC", getter: false, setter: false},
    host_network: {type: Bool, nilable: true, key: "hostNetwork", getter: false, setter: false},
    host_pid: {type: Bool, nilable: true, key: "hostPID", getter: false, setter: false},
    hostname: {type: String, nilable: true, key: "hostname", getter: false, setter: false},
    image_pull_secrets: {type: Array(Api::Core::V1::LocalObjectReference), nilable: true, key: "imagePullSecrets", getter: false, setter: false},
    init_containers: {type: Array(Api::Core::V1::Container), nilable: true, key: "initContainers", getter: false, setter: false},
    node_name: {type: String, nilable: true, key: "nodeName", getter: false, setter: false},
    node_selector: {type: Hash(String, String), nilable: true, key: "nodeSelector", getter: false, setter: false},
    overhead: {type: Hash(String, Int32 | String), nilable: true, key: "overhead", getter: false, setter: false},
    preemption_policy: {type: String, nilable: true, key: "preemptionPolicy", getter: false, setter: false},
    priority: {type: Int32, nilable: true, key: "priority", getter: false, setter: false},
    priority_class_name: {type: String, nilable: true, key: "priorityClassName", getter: false, setter: false},
    readiness_gates: {type: Array(Api::Core::V1::PodReadinessGate), nilable: true, key: "readinessGates", getter: false, setter: false},
    restart_policy: {type: String, nilable: true, key: "restartPolicy", getter: false, setter: false},
    runtime_class_name: {type: String, nilable: true, key: "runtimeClassName", getter: false, setter: false},
    scheduler_name: {type: String, nilable: true, key: "schedulerName", getter: false, setter: false},
    security_context: {type: Api::Core::V1::PodSecurityContext, nilable: true, key: "securityContext", getter: false, setter: false},
    service_account: {type: String, nilable: true, key: "serviceAccount", getter: false, setter: false},
    service_account_name: {type: String, nilable: true, key: "serviceAccountName", getter: false, setter: false},
    set_hostname_as_fqd_n: {type: Bool, nilable: true, key: "setHostnameAsFQDN", getter: false, setter: false},
    share_process_namespace: {type: Bool, nilable: true, key: "shareProcessNamespace", getter: false, setter: false},
    subdomain: {type: String, nilable: true, key: "subdomain", getter: false, setter: false},
    termination_grace_period_seconds: {type: Int32, nilable: true, key: "terminationGracePeriodSeconds", getter: false, setter: false},
    tolerations: {type: Array(Api::Core::V1::Toleration), nilable: true, key: "tolerations", getter: false, setter: false},
    topology_spread_constraints: {type: Array(Api::Core::V1::TopologySpreadConstraint), nilable: true, key: "topologySpreadConstraints", getter: false, setter: false},
    volumes: {type: Array(Api::Core::V1::Volume), nilable: true, key: "volumes", getter: false, setter: false},
  )]
  class Api::Core::V1::PodSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
    @[::JSON::Field(key: "activeDeadlineSeconds", emit_null: false)]
    @[::YAML::Field(key: "activeDeadlineSeconds", emit_null: false)]
    property active_deadline_seconds : Int32 | Nil

    # If specified, the pod's scheduling constraints
    @[::JSON::Field(key: "affinity", emit_null: false)]
    @[::YAML::Field(key: "affinity", emit_null: false)]
    property affinity : Api::Core::V1::Affinity | Nil

    # AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
    @[::JSON::Field(key: "automountServiceAccountToken", emit_null: false)]
    @[::YAML::Field(key: "automountServiceAccountToken", emit_null: false)]
    property automount_service_account_token : Bool | Nil

    # List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
    @[::JSON::Field(key: "containers", emit_null: true)]
    @[::YAML::Field(key: "containers", emit_null: true)]
    property containers : Array(Api::Core::V1::Container)

    # Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.
    @[::JSON::Field(key: "dnsConfig", emit_null: false)]
    @[::YAML::Field(key: "dnsConfig", emit_null: false)]
    property dns_config : Api::Core::V1::PodDNSConfig | Nil

    # Set DNS policy for the pod. Defaults to "ClusterFirst". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.
    @[::JSON::Field(key: "dnsPolicy", emit_null: false)]
    @[::YAML::Field(key: "dnsPolicy", emit_null: false)]
    property dns_policy : String | Nil

    # EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.
    @[::JSON::Field(key: "enableServiceLinks", emit_null: false)]
    @[::YAML::Field(key: "enableServiceLinks", emit_null: false)]
    property enable_service_links : Bool | Nil

    # List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource. This field is alpha-level and is only honored by servers that enable the EphemeralContainers feature.
    @[::JSON::Field(key: "ephemeralContainers", emit_null: false)]
    @[::YAML::Field(key: "ephemeralContainers", emit_null: false)]
    property ephemeral_containers : Array(Api::Core::V1::EphemeralContainer) | Nil

    # HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.
    @[::JSON::Field(key: "hostAliases", emit_null: false)]
    @[::YAML::Field(key: "hostAliases", emit_null: false)]
    property host_aliases : Array(Api::Core::V1::HostAlias) | Nil

    # Use the host's ipc namespace. Optional: Default to false.
    @[::JSON::Field(key: "hostIPC", emit_null: false)]
    @[::YAML::Field(key: "hostIPC", emit_null: false)]
    property host_ipc : Bool | Nil

    # Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.
    @[::JSON::Field(key: "hostNetwork", emit_null: false)]
    @[::YAML::Field(key: "hostNetwork", emit_null: false)]
    property host_network : Bool | Nil

    # Use the host's pid namespace. Optional: Default to false.
    @[::JSON::Field(key: "hostPID", emit_null: false)]
    @[::YAML::Field(key: "hostPID", emit_null: false)]
    property host_pid : Bool | Nil

    # Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
    @[::JSON::Field(key: "hostname", emit_null: false)]
    @[::YAML::Field(key: "hostname", emit_null: false)]
    property hostname : String | Nil

    # ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: [https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod)
    @[::JSON::Field(key: "imagePullSecrets", emit_null: false)]
    @[::YAML::Field(key: "imagePullSecrets", emit_null: false)]
    property image_pull_secrets : Array(Api::Core::V1::LocalObjectReference) | Nil

    # List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest [request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/](request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/)
    @[::JSON::Field(key: "initContainers", emit_null: false)]
    @[::YAML::Field(key: "initContainers", emit_null: false)]
    property init_containers : Array(Api::Core::V1::Container) | Nil

    # NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.
    @[::JSON::Field(key: "nodeName", emit_null: false)]
    @[::YAML::Field(key: "nodeName", emit_null: false)]
    property node_name : String | Nil

    # NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: [https://kubernetes.io/docs/concepts/configuration/assign-pod-node/](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/)
    @[::JSON::Field(key: "nodeSelector", emit_null: false)]
    @[::YAML::Field(key: "nodeSelector", emit_null: false)]
    property node_selector : Hash(String, String) | Nil

    # Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: [https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.16, and is only honored by servers that enable the PodOverhead feature.](https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.16, and is only honored by servers that enable the PodOverhead feature.)
    @[::JSON::Field(key: "overhead", emit_null: false)]
    @[::YAML::Field(key: "overhead", emit_null: false)]
    property overhead : Hash(String, Int32 | String) | Nil

    # PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. This field is beta-level, gated by the NonPreemptingPriority feature-gate.
    @[::JSON::Field(key: "preemptionPolicy", emit_null: false)]
    @[::YAML::Field(key: "preemptionPolicy", emit_null: false)]
    property preemption_policy : String | Nil

    # The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
    @[::JSON::Field(key: "priority", emit_null: false)]
    @[::YAML::Field(key: "priority", emit_null: false)]
    property priority : Int32 | Nil

    # If specified, indicates the pod's priority. "system-node-critical" and "system-cluster-critical" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
    @[::JSON::Field(key: "priorityClassName", emit_null: false)]
    @[::YAML::Field(key: "priorityClassName", emit_null: false)]
    property priority_class_name : String | Nil

    # If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to "True" More info: [https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md](https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md)
    @[::JSON::Field(key: "readinessGates", emit_null: false)]
    @[::YAML::Field(key: "readinessGates", emit_null: false)]
    property readiness_gates : Array(Api::Core::V1::PodReadinessGate) | Nil

    # Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy)
    @[::JSON::Field(key: "restartPolicy", emit_null: false)]
    @[::YAML::Field(key: "restartPolicy", emit_null: false)]
    property restart_policy : String | Nil

    # RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the "legacy" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: [https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md This is a beta feature as of Kubernetes v1.14.](https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md This is a beta feature as of Kubernetes v1.14.)
    @[::JSON::Field(key: "runtimeClassName", emit_null: false)]
    @[::YAML::Field(key: "runtimeClassName", emit_null: false)]
    property runtime_class_name : String | Nil

    # If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
    @[::JSON::Field(key: "schedulerName", emit_null: false)]
    @[::YAML::Field(key: "schedulerName", emit_null: false)]
    property scheduler_name : String | Nil

    # SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.
    @[::JSON::Field(key: "securityContext", emit_null: false)]
    @[::YAML::Field(key: "securityContext", emit_null: false)]
    property security_context : Api::Core::V1::PodSecurityContext | Nil

    # DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
    @[::JSON::Field(key: "serviceAccount", emit_null: false)]
    @[::YAML::Field(key: "serviceAccount", emit_null: false)]
    property service_account : String | Nil

    # ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: [https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/)
    @[::JSON::Field(key: "serviceAccountName", emit_null: false)]
    @[::YAML::Field(key: "serviceAccountName", emit_null: false)]
    property service_account_name : String | Nil

    # If true the pod's hostname will be configured as the pod's FQDN, rather than the leaf name (the default). In Linux containers, this means setting the FQDN in the hostname field of the kernel (the nodename field of struct utsname). In Windows containers, this means setting the registry value of hostname for the registry key HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters to FQDN. If a pod does not have FQDN, this has no effect. Default to false.
    @[::JSON::Field(key: "setHostnameAsFQDN", emit_null: false)]
    @[::YAML::Field(key: "setHostnameAsFQDN", emit_null: false)]
    property set_hostname_as_fqd_n : Bool | Nil

    # Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false.
    @[::JSON::Field(key: "shareProcessNamespace", emit_null: false)]
    @[::YAML::Field(key: "shareProcessNamespace", emit_null: false)]
    property share_process_namespace : Bool | Nil

    # If specified, the fully qualified Pod hostname will be "<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>". If not specified, the pod will not have a domainname at all.
    @[::JSON::Field(key: "subdomain", emit_null: false)]
    @[::YAML::Field(key: "subdomain", emit_null: false)]
    property subdomain : String | Nil

    # Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
    @[::JSON::Field(key: "terminationGracePeriodSeconds", emit_null: false)]
    @[::YAML::Field(key: "terminationGracePeriodSeconds", emit_null: false)]
    property termination_grace_period_seconds : Int32 | Nil

    # If specified, the pod's tolerations.
    @[::JSON::Field(key: "tolerations", emit_null: false)]
    @[::YAML::Field(key: "tolerations", emit_null: false)]
    property tolerations : Array(Api::Core::V1::Toleration) | Nil

    # TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. All topologySpreadConstraints are ANDed.
    @[::JSON::Field(key: "topologySpreadConstraints", emit_null: false)]
    @[::YAML::Field(key: "topologySpreadConstraints", emit_null: false)]
    property topology_spread_constraints : Array(Api::Core::V1::TopologySpreadConstraint) | Nil

    # List of volumes that can be mounted by containers belonging to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes](https://kubernetes.io/docs/concepts/storage/volumes)
    @[::JSON::Field(key: "volumes", emit_null: false)]
    @[::YAML::Field(key: "volumes", emit_null: false)]
    property volumes : Array(Api::Core::V1::Volume) | Nil

    def initialize(*, @containers : Array, @active_deadline_seconds : Int32 | Nil = nil, @affinity : Api::Core::V1::Affinity | Nil = nil, @automount_service_account_token : Bool | Nil = nil, @dns_config : Api::Core::V1::PodDNSConfig | Nil = nil, @dns_policy : String | Nil = nil, @enable_service_links : Bool | Nil = nil, @ephemeral_containers : Array | Nil = nil, @host_aliases : Array | Nil = nil, @host_ipc : Bool | Nil = nil, @host_network : Bool | Nil = nil, @host_pid : Bool | Nil = nil, @hostname : String | Nil = nil, @image_pull_secrets : Array | Nil = nil, @init_containers : Array | Nil = nil, @node_name : String | Nil = nil, @node_selector : Hash(String, String) | Nil = nil, @overhead : Hash(String, String) | Nil = nil, @preemption_policy : String | Nil = nil, @priority : Int32 | Nil = nil, @priority_class_name : String | Nil = nil, @readiness_gates : Array | Nil = nil, @restart_policy : String | Nil = nil, @runtime_class_name : String | Nil = nil, @scheduler_name : String | Nil = nil, @security_context : Api::Core::V1::PodSecurityContext | Nil = nil, @service_account : String | Nil = nil, @service_account_name : String | Nil = nil, @set_hostname_as_fqd_n : Bool | Nil = nil, @share_process_namespace : Bool | Nil = nil, @subdomain : String | Nil = nil, @termination_grace_period_seconds : Int32 | Nil = nil, @tolerations : Array | Nil = nil, @topology_spread_constraints : Array | Nil = nil, @volumes : Array | Nil = nil)
    end
  end
end
