# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ServiceSpec describes the attributes that a user creates on a service.
  @[::K8S::Properties(
    cluster_ip: {type: String, nilable: true, key: "clusterIP", getter: false, setter: false},
    external_ips: {type: Array(String), nilable: true, key: "externalIPs", getter: false, setter: false},
    external_name: {type: String, nilable: true, key: "externalName", getter: false, setter: false},
    external_traffic_policy: {type: String, nilable: true, key: "externalTrafficPolicy", getter: false, setter: false},
    health_check_node_port: {type: Int32, nilable: true, key: "healthCheckNodePort", getter: false, setter: false},
    ip_family: {type: String, nilable: true, key: "ipFamily", getter: false, setter: false},
    load_balancer_ip: {type: String, nilable: true, key: "loadBalancerIP", getter: false, setter: false},
    load_balancer_source_ranges: {type: Array(String), nilable: true, key: "loadBalancerSourceRanges", getter: false, setter: false},
    ports: {type: Array(Api::Core::V1::ServicePort), nilable: true, key: "ports", getter: false, setter: false},
    publish_not_ready_addresses: {type: Bool, nilable: true, key: "publishNotReadyAddresses", getter: false, setter: false},
    selector: {type: Hash(String, String), nilable: true, key: "selector", getter: false, setter: false},
    session_affinity: {type: String, nilable: true, key: "sessionAffinity", getter: false, setter: false},
    session_affinity_config: {type: Api::Core::V1::SessionAffinityConfig, nilable: true, key: "sessionAffinityConfig", getter: false, setter: false},
    type: {type: String, nilable: true, key: "type", getter: false, setter: false},
  )]
  class Api::Core::V1::ServiceSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # clusterIP is the IP address of the service and is usually assigned randomly by the master. If an address is specified manually and is not in use by others, it will be allocated to the service; otherwise, creation of the service will fail. This field can not be changed through updates. Valid values are "None", empty string (""), or a valid IP address. "None" can be specified for headless services when proxying is not required. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)
    @[::JSON::Field(key: "clusterIP", emit_null: false)]
    @[::YAML::Field(key: "clusterIP", emit_null: false)]
    property cluster_ip : String | Nil

    # externalIPs is a list of IP addresses for which nodes in the cluster will also accept traffic for this service.  These IPs are not managed by Kubernetes.  The user is responsible for ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers that are not part of the Kubernetes system.
    @[::JSON::Field(key: "externalIPs", emit_null: false)]
    @[::YAML::Field(key: "externalIPs", emit_null: false)]
    property external_ips : Array(String) | Nil

    # externalName is the external reference that kubedns or equivalent will return as a CNAME record for this service. No proxying will be involved. Must be a valid RFC-1123 hostname ([https://tools.ietf.org/html/rfc1123) and requires Type to be ExternalName.](https://tools.ietf.org/html/rfc1123) and requires Type to be ExternalName.)
    @[::JSON::Field(key: "externalName", emit_null: false)]
    @[::YAML::Field(key: "externalName", emit_null: false)]
    property external_name : String | Nil

    # externalTrafficPolicy denotes if this Service desires to route external traffic to node-local or cluster-wide endpoints. "Local" preserves the client source IP and avoids a second hop for LoadBalancer and Nodeport type services, but risks potentially imbalanced traffic spreading. "Cluster" obscures the client source IP and may cause a second hop to another node, but should have good overall load-spreading.
    @[::JSON::Field(key: "externalTrafficPolicy", emit_null: false)]
    @[::YAML::Field(key: "externalTrafficPolicy", emit_null: false)]
    property external_traffic_policy : String | Nil

    # healthCheckNodePort specifies the healthcheck nodePort for the service. If not specified, HealthCheckNodePort is created by the service api backend with the allocated nodePort. Will use user-specified nodePort value if specified by the client. Only effects when Type is set to LoadBalancer and ExternalTrafficPolicy is set to Local.
    @[::JSON::Field(key: "healthCheckNodePort", emit_null: false)]
    @[::YAML::Field(key: "healthCheckNodePort", emit_null: false)]
    property health_check_node_port : Int32 | Nil

    # ipFamily specifies whether this Service has a preference for a particular IP family (e.g. IPv4 vs. IPv6).  If a specific IP family is requested, the clusterIP field will be allocated from that family, if it is available in the cluster.  If no IP family is requested, the cluster's primary IP family will be used. Other IP fields (loadBalancerIP, loadBalancerSourceRanges, externalIPs) and controllers which allocate external load-balancers should use the same IP family.  Endpoints for this Service will be of this family.  This field is immutable after creation. Assigning a ServiceIPFamily not available in the cluster (e.g. IPv6 in IPv4 only cluster) is an error condition and will fail during clusterIP assignment.
    @[::JSON::Field(key: "ipFamily", emit_null: false)]
    @[::YAML::Field(key: "ipFamily", emit_null: false)]
    property ip_family : String | Nil

    # Only applies to Service Type: LoadBalancer LoadBalancer will get created with the IP specified in this field. This feature depends on whether the underlying cloud-provider supports specifying the loadBalancerIP when a load balancer is created. This field will be ignored if the cloud-provider does not support the feature.
    @[::JSON::Field(key: "loadBalancerIP", emit_null: false)]
    @[::YAML::Field(key: "loadBalancerIP", emit_null: false)]
    property load_balancer_ip : String | Nil

    # If specified and supported by the platform, this will restrict traffic through the cloud-provider load-balancer will be restricted to the specified client IPs. This field will be ignored if the cloud-provider does not support the feature." More info: [https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/](https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/)
    @[::JSON::Field(key: "loadBalancerSourceRanges", emit_null: false)]
    @[::YAML::Field(key: "loadBalancerSourceRanges", emit_null: false)]
    property load_balancer_source_ranges : Array(String) | Nil

    # The list of ports that are exposed by this service. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)
    @[::JSON::Field(key: "ports", emit_null: false)]
    @[::YAML::Field(key: "ports", emit_null: false)]
    property ports : Array(Api::Core::V1::ServicePort) | Nil

    # publishNotReadyAddresses, when set to true, indicates that DNS implementations must publish the notReadyAddresses of subsets for the Endpoints associated with the Service. The default value is false. The primary use case for setting this field is to use a StatefulSet's Headless Service to propagate SRV records for its Pods without respect to their readiness for purpose of peer discovery.
    @[::JSON::Field(key: "publishNotReadyAddresses", emit_null: false)]
    @[::YAML::Field(key: "publishNotReadyAddresses", emit_null: false)]
    property publish_not_ready_addresses : Bool | Nil

    # Route service traffic to pods with label keys and values matching this selector. If empty or not present, the service is assumed to have an external process managing its endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [https://kubernetes.io/docs/concepts/services-networking/service/](https://kubernetes.io/docs/concepts/services-networking/service/)
    @[::JSON::Field(key: "selector", emit_null: false)]
    @[::YAML::Field(key: "selector", emit_null: false)]
    property selector : Hash(String, String) | Nil

    # Supports "ClientIP" and "None". Used to maintain session affinity. Enable client IP based session affinity. Must be ClientIP or None. Defaults to None. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)
    @[::JSON::Field(key: "sessionAffinity", emit_null: false)]
    @[::YAML::Field(key: "sessionAffinity", emit_null: false)]
    property session_affinity : String | Nil

    # sessionAffinityConfig contains the configurations of session affinity.
    @[::JSON::Field(key: "sessionAffinityConfig", emit_null: false)]
    @[::YAML::Field(key: "sessionAffinityConfig", emit_null: false)]
    property session_affinity_config : Api::Core::V1::SessionAffinityConfig | Nil

    # type determines how the Service is exposed. Defaults to ClusterIP. Valid options are ExternalName, ClusterIP, NodePort, and LoadBalancer. "ExternalName" maps to the specified externalName. "ClusterIP" allocates a cluster-internal IP address for load-balancing to endpoints. Endpoints are determined by the selector or if that is not specified, by manual construction of an Endpoints object. If clusterIP is "None", no virtual IP is allocated and the endpoints are published as a set of endpoints rather than a stable IP. "NodePort" builds on ClusterIP and allocates a port on every node which routes to the clusterIP. "LoadBalancer" builds on NodePort and creates an external load-balancer (if supported in the current cloud) which routes to the clusterIP. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types)
    @[::JSON::Field(key: "type", emit_null: false)]
    @[::YAML::Field(key: "type", emit_null: false)]
    property type : String | Nil

    def initialize(*, @cluster_ip : String | Nil = nil, @external_ips : Array | Nil = nil, @external_name : String | Nil = nil, @external_traffic_policy : String | Nil = nil, @health_check_node_port : Int32 | Nil = nil, @ip_family : String | Nil = nil, @load_balancer_ip : String | Nil = nil, @load_balancer_source_ranges : Array | Nil = nil, @ports : Array | Nil = nil, @publish_not_ready_addresses : Bool | Nil = nil, @selector : Hash(String, String) | Nil = nil, @session_affinity : String | Nil = nil, @session_affinity_config : Api::Core::V1::SessionAffinityConfig | Nil = nil, @type : String | Nil = nil)
    end
  end
end