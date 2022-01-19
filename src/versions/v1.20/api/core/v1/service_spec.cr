# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ServiceSpec; end

require "./service_port"
require "./session_affinity_config"

module K8S
  # Namespace holding the types for `Api::Core::V1::ServiceSpec`.
  module Types::Api::Core::V1::ServiceSpec
    alias ValueType = ::Bool | String | ::Array(String) | Int32 | ::Array(::K8S::Api::Core::V1::ServicePort) | ::Hash(String, String) | ::K8S::Api::Core::V1::SessionAffinityConfig | Nil
    alias Instance = ::K8S::Object(ValueType)

    # allocateLoadBalancerNodePorts defines if NodePorts will be automatically allocated for services with type LoadBalancer.  Default is "true". It may be set to "false" if the cluster load-balancer does not rely on NodePorts. allocateLoadBalancerNodePorts may only be set for services with type LoadBalancer and will be cleared if the type is changed to any other type. This field is alpha-level and is only honored by servers that enable the ServiceLBNodePortControl feature.
    abstract def allocate_load_balancer_node_ports : ::Bool?
    # :ditto:
    abstract def allocate_load_balancer_node_ports! : ::Bool
    # :ditto:
    abstract def allocate_load_balancer_node_ports? : ::Bool?
    # :ditto:
    abstract def allocate_load_balancer_node_ports=(value : ::Bool?)
    # clusterIP is the IP address of the service and is usually assigned randomly. If an address is specified manually, is in-range (as per system configuration), and is not in use, it will be allocated to the service; otherwise creation of the service will fail. This field may not be changed through updates unless the type field is also being changed to ExternalName (which requires this field to be blank) or the type field is being changed from ExternalName (in which case this field may optionally be specified, as describe above).  Valid values are "None", empty string (""), or a valid IP address. Setting this to "None" makes a "headless service" (no virtual IP), which is useful when direct endpoint connections are preferred and proxying is not required.  Only applies to types ClusterIP, NodePort, and LoadBalancer. If this field is specified when creating a Service of type ExternalName, creation will fail. This field will be wiped when updating a Service to type ExternalName. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies))
    abstract def cluster_ip : String?
    # :ditto:
    abstract def cluster_ip! : String
    # :ditto:
    abstract def cluster_ip? : String?
    # :ditto:
    abstract def cluster_ip=(value : String?)
    # ClusterIPs is a list of IP addresses assigned to this service, and are usually assigned randomly.  If an address is specified manually, is in-range (as per system configuration), and is not in use, it will be allocated to the service; otherwise creation of the service will fail. This field may not be changed through updates unless the type field is also being changed to ExternalName (which requires this field to be empty) or the type field is being changed from ExternalName (in which case this field may optionally be specified, as describe above).  Valid values are "None", empty string (""), or a valid IP address.  Setting this to "None" makes a "headless service" (no virtual IP), which is useful when direct endpoint connections are preferred and proxying is not required.  Only applies to types ClusterIP, NodePort, and LoadBalancer. If this field is specified when creating a Service of type ExternalName, creation will fail. This field will be wiped when updating a Service to type ExternalName.  If this field is not specified, it will be initialized from the clusterIP field.  If this field is specified, clients must ensure that clusterIPs[0] and clusterIP have the same value.
    #
    # Unless the "IPv6DualStack" feature gate is enabled, this field is limited to one value, which must be the same as the clusterIP field.  If the feature gate is enabled, this field may hold a maximum of two entries (dual-stack IPs, in either order).  These IPs must correspond to the values of the ipFamilies field. Both clusterIPs and ipFamilies are governed by the ipFamilyPolicy field. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies))
    abstract def cluster_ips : ::Array(String)?
    # :ditto:
    abstract def cluster_ips! : ::Array(String)
    # :ditto:
    abstract def cluster_ips? : ::Array(String)?
    # :ditto:
    abstract def cluster_ips=(value : ::Array(String)?)
    # externalIPs is a list of IP addresses for which nodes in the cluster will also accept traffic for this service.  These IPs are not managed by Kubernetes.  The user is responsible for ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers that are not part of the Kubernetes system.
    abstract def external_ips : ::Array(String)?
    # :ditto:
    abstract def external_ips! : ::Array(String)
    # :ditto:
    abstract def external_ips? : ::Array(String)?
    # :ditto:
    abstract def external_ips=(value : ::Array(String)?)
    # externalName is the external reference that discovery mechanisms will return as an alias for this service (e.g. a DNS CNAME record). No proxying will be involved.  Must be a lowercase RFC-1123 hostname ([[https://tools.ietf.org/html/rfc1123) and requires Type to be](https://tools.ietf.org/html/rfc1123) and requires Type to be)](https://tools.ietf.org/html/rfc1123) and requires Type to be](https://tools.ietf.org/html/rfc1123) and requires Type to be))
    abstract def external_name : String?
    # :ditto:
    abstract def external_name! : String
    # :ditto:
    abstract def external_name? : String?
    # :ditto:
    abstract def external_name=(value : String?)
    # externalTrafficPolicy denotes if this Service desires to route external traffic to node-local or cluster-wide endpoints. "Local" preserves the client source IP and avoids a second hop for LoadBalancer and Nodeport type services, but risks potentially imbalanced traffic spreading. "Cluster" obscures the client source IP and may cause a second hop to another node, but should have good overall load-spreading.
    abstract def external_traffic_policy : String?
    # :ditto:
    abstract def external_traffic_policy! : String
    # :ditto:
    abstract def external_traffic_policy? : String?
    # :ditto:
    abstract def external_traffic_policy=(value : String?)
    # healthCheckNodePort specifies the healthcheck nodePort for the service. This only applies when type is set to LoadBalancer and externalTrafficPolicy is set to Local. If a value is specified, is in-range, and is not in use, it will be used.  If not specified, a value will be automatically allocated.  External systems (e.g. load-balancers) can use this port to determine if a given node holds endpoints for this service or not.  If this field is specified when creating a Service which does not need it, creation will fail. This field will be wiped when updating a Service to no longer need it (e.g. changing type).
    abstract def health_check_node_port : Int32?
    # :ditto:
    abstract def health_check_node_port! : Int32
    # :ditto:
    abstract def health_check_node_port? : Int32?
    # :ditto:
    abstract def health_check_node_port=(value : Int32?)
    # IPFamilies is a list of IP families (e.g. IPv4, IPv6) assigned to this service, and is gated by the "IPv6DualStack" feature gate.  This field is usually assigned automatically based on cluster configuration and the ipFamilyPolicy field. If this field is specified manually, the requested family is available in the cluster, and ipFamilyPolicy allows it, it will be used; otherwise creation of the service will fail.  This field is conditionally mutable: it allows for adding or removing a secondary IP family, but it does not allow changing the primary IP family of the Service.  Valid values are "IPv4" and "IPv6".  This field only applies to Services of types ClusterIP, NodePort, and LoadBalancer, and does apply to "headless" services.  This field will be wiped when updating a Service to type ExternalName.
    #
    # This field may hold a maximum of two entries (dual-stack families, in either order).  These families must correspond to the values of the clusterIPs field, if specified. Both clusterIPs and ipFamilies are governed by the ipFamilyPolicy field.
    abstract def ip_families : ::Array(String)?
    # :ditto:
    abstract def ip_families! : ::Array(String)
    # :ditto:
    abstract def ip_families? : ::Array(String)?
    # :ditto:
    abstract def ip_families=(value : ::Array(String)?)
    # IPFamilyPolicy represents the dual-stack-ness requested or required by this Service, and is gated by the "IPv6DualStack" feature gate.  If there is no value provided, then this field will be set to SingleStack. Services can be "SingleStack" (a single IP family), "PreferDualStack" (two IP families on dual-stack configured clusters or a single IP family on single-stack clusters), or "RequireDualStack" (two IP families on dual-stack configured clusters, otherwise fail). The ipFamilies and clusterIPs fields depend on the value of this field.  This field will be wiped when updating a service to type ExternalName.
    abstract def ip_family_policy : String?
    # :ditto:
    abstract def ip_family_policy! : String
    # :ditto:
    abstract def ip_family_policy? : String?
    # :ditto:
    abstract def ip_family_policy=(value : String?)
    # Only applies to Service Type: LoadBalancer LoadBalancer will get created with the IP specified in this field. This feature depends on whether the underlying cloud-provider supports specifying the loadBalancerIP when a load balancer is created. This field will be ignored if the cloud-provider does not support the feature.
    abstract def load_balancer_ip : String?
    # :ditto:
    abstract def load_balancer_ip! : String
    # :ditto:
    abstract def load_balancer_ip? : String?
    # :ditto:
    abstract def load_balancer_ip=(value : String?)
    # If specified and supported by the platform, this will restrict traffic through the cloud-provider load-balancer will be restricted to the specified client IPs. This field will be ignored if the cloud-provider does not support the feature." More info: [[https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/](https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/)](https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/](https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/))
    abstract def load_balancer_source_ranges : ::Array(String)?
    # :ditto:
    abstract def load_balancer_source_ranges! : ::Array(String)
    # :ditto:
    abstract def load_balancer_source_ranges? : ::Array(String)?
    # :ditto:
    abstract def load_balancer_source_ranges=(value : ::Array(String)?)
    # The list of ports that are exposed by this service. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies))
    abstract def ports : ::Array(::K8S::Api::Core::V1::ServicePort)?
    # :ditto:
    abstract def ports! : ::Array(::K8S::Api::Core::V1::ServicePort)
    # :ditto:
    abstract def ports? : ::Array(::K8S::Api::Core::V1::ServicePort)?
    # :ditto:
    abstract def ports=(value : ::Array(::K8S::Api::Core::V1::ServicePort)?)
    # publishNotReadyAddresses indicates that any agent which deals with endpoints for this Service should disregard any indications of [[ready/not-ready. The primary use case for setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate Endpoints and EndpointSlice resources for Services interpret this to mean that all endpoints are considered "ready" even if the Pods themselves are not. Agents which consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice resources can safely assume this behavior.](ready/not-ready. The primary use case for setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate Endpoints and EndpointSlice resources for Services interpret this to mean that all endpoints are considered "ready" even if the Pods themselves are not. Agents which consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice resources can safely assume this behavior.)]([ready/not-ready. The primary use case for setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate Endpoints and EndpointSlice resources for Services interpret this to mean that all endpoints are considered "ready" even if the Pods themselves are not. Agents which consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice resources can safely assume this behavior.](ready/not-ready. The primary use case for setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate Endpoints and EndpointSlice resources for Services interpret this to mean that all endpoints are considered "ready" even if the Pods themselves are not. Agents which consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice resources can safely assume this behavior.))
    abstract def publish_not_ready_addresses : ::Bool?
    # :ditto:
    abstract def publish_not_ready_addresses! : ::Bool
    # :ditto:
    abstract def publish_not_ready_addresses? : ::Bool?
    # :ditto:
    abstract def publish_not_ready_addresses=(value : ::Bool?)
    # Route service traffic to pods with label keys and values matching this selector. If empty or not present, the service is assumed to have an external process managing its endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/](https://kubernetes.io/docs/concepts/services-networking/service/)](https://kubernetes.io/docs/concepts/services-networking/service/](https://kubernetes.io/docs/concepts/services-networking/service/))
    abstract def selector : ::Hash(String, String)?
    # :ditto:
    abstract def selector! : ::Hash(String, String)
    # :ditto:
    abstract def selector? : ::Hash(String, String)?
    # :ditto:
    abstract def selector=(value : ::Hash(String, String)?)
    # Supports "ClientIP" and "None". Used to maintain session affinity. Enable client IP based session affinity. Must be ClientIP or None. Defaults to None. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies))
    abstract def session_affinity : String?
    # :ditto:
    abstract def session_affinity! : String
    # :ditto:
    abstract def session_affinity? : String?
    # :ditto:
    abstract def session_affinity=(value : String?)
    # sessionAffinityConfig contains the configurations of session affinity.
    abstract def session_affinity_config : ::K8S::Api::Core::V1::SessionAffinityConfig?
    # :ditto:
    abstract def session_affinity_config! : ::K8S::Api::Core::V1::SessionAffinityConfig
    # :ditto:
    abstract def session_affinity_config? : ::K8S::Api::Core::V1::SessionAffinityConfig?
    # :ditto:
    abstract def session_affinity_config=(value : ::K8S::Api::Core::V1::SessionAffinityConfig?)
    # topologyKeys is a preference-order list of topology keys which implementations of services should use to preferentially sort endpoints when accessing this Service, it can not be used at the same time as externalTrafficPolicy=Local. Topology keys must be valid label keys and at most 16 keys may be specified. Endpoints are chosen based on the first topology key with available backends. If this field is specified and all entries have no backends that match the topology of the client, the service has no backends for that client and connections should fail. The special value "*" may be used to mean "any topology". This catch-all value, if used, only makes sense as the last value in the list. If this is not specified or empty, no topology constraints will be applied. This field is alpha-level and is only honored by servers that enable the ServiceTopology feature.
    abstract def topology_keys : ::Array(String)?
    # :ditto:
    abstract def topology_keys! : ::Array(String)
    # :ditto:
    abstract def topology_keys? : ::Array(String)?
    # :ditto:
    abstract def topology_keys=(value : ::Array(String)?)
    # type determines how the Service is exposed. Defaults to ClusterIP. Valid options are ExternalName, ClusterIP, NodePort, and LoadBalancer. "ClusterIP" allocates a cluster-internal IP address for load-balancing to endpoints. Endpoints are determined by the selector or if that is not specified, by manual construction of an Endpoints object or EndpointSlice objects. If clusterIP is "None", no virtual IP is allocated and the endpoints are published as a set of endpoints rather than a virtual IP. "NodePort" builds on ClusterIP and allocates a port on every node which routes to the same endpoints as the clusterIP. "LoadBalancer" builds on NodePort and creates an external load-balancer (if supported in the current cloud) which routes to the same endpoints as the clusterIP. "ExternalName" aliases this service to the specified externalName. Several other fields do not apply to ExternalName services. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types)](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types))
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String?)
  end

  # ServiceSpec describes the attributes that a user creates on a service.
  @[::K8S::Properties(
    allocate_load_balancer_node_ports: {key: "allocateLoadBalancerNodePorts", accessor: "allocate_load_balancer_node_ports", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "allocateLoadBalancerNodePorts defines if NodePorts will be automatically allocated for services with type LoadBalancer.  Default is \"true\". It may be set to \"false\" if the cluster load-balancer does not rely on NodePorts. allocateLoadBalancerNodePorts may only be set for services with type LoadBalancer and will be cleared if the type is changed to any other type. This field is alpha-level and is only honored by servers that enable the ServiceLBNodePortControl feature."},
    cluster_ip: {key: "clusterIP", accessor: "cluster_ip", kind: "String", nilable: true, default: nil, read_only: false, description: "clusterIP is the IP address of the service and is usually assigned randomly. If an address is specified manually, is in-range (as per system configuration), and is not in use, it will be allocated to the service; otherwise creation of the service will fail. This field may not be changed through updates unless the type field is also being changed to ExternalName (which requires this field to be blank) or the type field is being changed from ExternalName (in which case this field may optionally be specified, as describe above).  Valid values are \"None\", empty string (\"\"), or a valid IP address. Setting this to \"None\" makes a \"headless service\" (no virtual IP), which is useful when direct endpoint connections are preferred and proxying is not required.  Only applies to types ClusterIP, NodePort, and LoadBalancer. If this field is specified when creating a Service of type ExternalName, creation will fail. This field will be wiped when updating a Service to type ExternalName. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)"},
    cluster_ips: {key: "clusterIPs", accessor: "cluster_ips", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "ClusterIPs is a list of IP addresses assigned to this service, and are usually assigned randomly.  If an address is specified manually, is in-range (as per system configuration), and is not in use, it will be allocated to the service; otherwise creation of the service will fail. This field may not be changed through updates unless the type field is also being changed to ExternalName (which requires this field to be empty) or the type field is being changed from ExternalName (in which case this field may optionally be specified, as describe above).  Valid values are \"None\", empty string (\"\"), or a valid IP address.  Setting this to \"None\" makes a \"headless service\" (no virtual IP), which is useful when direct endpoint connections are preferred and proxying is not required.  Only applies to types ClusterIP, NodePort, and LoadBalancer. If this field is specified when creating a Service of type ExternalName, creation will fail. This field will be wiped when updating a Service to type ExternalName.  If this field is not specified, it will be initialized from the clusterIP field.  If this field is specified, clients must ensure that clusterIPs[0] and clusterIP have the same value.\n\nUnless the \"IPv6DualStack\" feature gate is enabled, this field is limited to one value, which must be the same as the clusterIP field.  If the feature gate is enabled, this field may hold a maximum of two entries (dual-stack IPs, in either order).  These IPs must correspond to the values of the ipFamilies field. Both clusterIPs and ipFamilies are governed by the ipFamilyPolicy field. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)"},
    external_ips: {key: "externalIPs", accessor: "external_ips", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "externalIPs is a list of IP addresses for which nodes in the cluster will also accept traffic for this service.  These IPs are not managed by Kubernetes.  The user is responsible for ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers that are not part of the Kubernetes system."},
    external_name: {key: "externalName", accessor: "external_name", kind: "String", nilable: true, default: nil, read_only: false, description: "externalName is the external reference that discovery mechanisms will return as an alias for this service (e.g. a DNS CNAME record). No proxying will be involved.  Must be a lowercase RFC-1123 hostname ([https://tools.ietf.org/html/rfc1123) and requires Type to be](https://tools.ietf.org/html/rfc1123) and requires Type to be)"},
    external_traffic_policy: {key: "externalTrafficPolicy", accessor: "external_traffic_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "externalTrafficPolicy denotes if this Service desires to route external traffic to node-local or cluster-wide endpoints. \"Local\" preserves the client source IP and avoids a second hop for LoadBalancer and Nodeport type services, but risks potentially imbalanced traffic spreading. \"Cluster\" obscures the client source IP and may cause a second hop to another node, but should have good overall load-spreading."},
    health_check_node_port: {key: "healthCheckNodePort", accessor: "health_check_node_port", kind: "Int32", nilable: true, default: nil, read_only: false, description: "healthCheckNodePort specifies the healthcheck nodePort for the service. This only applies when type is set to LoadBalancer and externalTrafficPolicy is set to Local. If a value is specified, is in-range, and is not in use, it will be used.  If not specified, a value will be automatically allocated.  External systems (e.g. load-balancers) can use this port to determine if a given node holds endpoints for this service or not.  If this field is specified when creating a Service which does not need it, creation will fail. This field will be wiped when updating a Service to no longer need it (e.g. changing type)."},
    ip_families: {key: "ipFamilies", accessor: "ip_families", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "IPFamilies is a list of IP families (e.g. IPv4, IPv6) assigned to this service, and is gated by the \"IPv6DualStack\" feature gate.  This field is usually assigned automatically based on cluster configuration and the ipFamilyPolicy field. If this field is specified manually, the requested family is available in the cluster, and ipFamilyPolicy allows it, it will be used; otherwise creation of the service will fail.  This field is conditionally mutable: it allows for adding or removing a secondary IP family, but it does not allow changing the primary IP family of the Service.  Valid values are \"IPv4\" and \"IPv6\".  This field only applies to Services of types ClusterIP, NodePort, and LoadBalancer, and does apply to \"headless\" services.  This field will be wiped when updating a Service to type ExternalName.\n\nThis field may hold a maximum of two entries (dual-stack families, in either order).  These families must correspond to the values of the clusterIPs field, if specified. Both clusterIPs and ipFamilies are governed by the ipFamilyPolicy field."},
    ip_family_policy: {key: "ipFamilyPolicy", accessor: "ip_family_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "IPFamilyPolicy represents the dual-stack-ness requested or required by this Service, and is gated by the \"IPv6DualStack\" feature gate.  If there is no value provided, then this field will be set to SingleStack. Services can be \"SingleStack\" (a single IP family), \"PreferDualStack\" (two IP families on dual-stack configured clusters or a single IP family on single-stack clusters), or \"RequireDualStack\" (two IP families on dual-stack configured clusters, otherwise fail). The ipFamilies and clusterIPs fields depend on the value of this field.  This field will be wiped when updating a service to type ExternalName."},
    load_balancer_ip: {key: "loadBalancerIP", accessor: "load_balancer_ip", kind: "String", nilable: true, default: nil, read_only: false, description: "Only applies to Service Type: LoadBalancer LoadBalancer will get created with the IP specified in this field. This feature depends on whether the underlying cloud-provider supports specifying the loadBalancerIP when a load balancer is created. This field will be ignored if the cloud-provider does not support the feature."},
    load_balancer_source_ranges: {key: "loadBalancerSourceRanges", accessor: "load_balancer_source_ranges", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "If specified and supported by the platform, this will restrict traffic through the cloud-provider load-balancer will be restricted to the specified client IPs. This field will be ignored if the cloud-provider does not support the feature.\" More info: [https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/](https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/)"},
    ports: {key: "ports", accessor: "ports", kind: "::Array(::K8S::Api::Core::V1::ServicePort)", nilable: true, default: nil, read_only: false, description: "The list of ports that are exposed by this service. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)"},
    publish_not_ready_addresses: {key: "publishNotReadyAddresses", accessor: "publish_not_ready_addresses", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "publishNotReadyAddresses indicates that any agent which deals with endpoints for this Service should disregard any indications of [ready/not-ready. The primary use case for setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate Endpoints and EndpointSlice resources for Services interpret this to mean that all endpoints are considered \"ready\" even if the Pods themselves are not. Agents which consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice resources can safely assume this behavior.](ready/not-ready. The primary use case for setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate Endpoints and EndpointSlice resources for Services interpret this to mean that all endpoints are considered \"ready\" even if the Pods themselves are not. Agents which consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice resources can safely assume this behavior.)"},
    selector: {key: "selector", accessor: "selector", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "Route service traffic to pods with label keys and values matching this selector. If empty or not present, the service is assumed to have an external process managing its endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [https://kubernetes.io/docs/concepts/services-networking/service/](https://kubernetes.io/docs/concepts/services-networking/service/)"},
    session_affinity: {key: "sessionAffinity", accessor: "session_affinity", kind: "String", nilable: true, default: nil, read_only: false, description: "Supports \"ClientIP\" and \"None\". Used to maintain session affinity. Enable client IP based session affinity. Must be ClientIP or None. Defaults to None. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)"},
    session_affinity_config: {key: "sessionAffinityConfig", accessor: "session_affinity_config", kind: "::K8S::Api::Core::V1::SessionAffinityConfig", nilable: true, default: nil, read_only: false, description: "sessionAffinityConfig contains the configurations of session affinity."},
    topology_keys: {key: "topologyKeys", accessor: "topology_keys", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "topologyKeys is a preference-order list of topology keys which implementations of services should use to preferentially sort endpoints when accessing this Service, it can not be used at the same time as externalTrafficPolicy=Local. Topology keys must be valid label keys and at most 16 keys may be specified. Endpoints are chosen based on the first topology key with available backends. If this field is specified and all entries have no backends that match the topology of the client, the service has no backends for that client and connections should fail. The special value \"*\" may be used to mean \"any topology\". This catch-all value, if used, only makes sense as the last value in the list. If this is not specified or empty, no topology constraints will be applied. This field is alpha-level and is only honored by servers that enable the ServiceTopology feature."},
    type: {key: "type", accessor: "type", kind: "String", nilable: true, default: nil, read_only: false, description: "type determines how the Service is exposed. Defaults to ClusterIP. Valid options are ExternalName, ClusterIP, NodePort, and LoadBalancer. \"ClusterIP\" allocates a cluster-internal IP address for load-balancing to endpoints. Endpoints are determined by the selector or if that is not specified, by manual construction of an Endpoints object or EndpointSlice objects. If clusterIP is \"None\", no virtual IP is allocated and the endpoints are published as a set of endpoints rather than a virtual IP. \"NodePort\" builds on ClusterIP and allocates a port on every node which routes to the same endpoints as the clusterIP. \"LoadBalancer\" builds on NodePort and creates an external load-balancer (if supported in the current cloud) which routes to the same endpoints as the clusterIP. \"ExternalName\" aliases this service to the specified externalName. Several other fields do not apply to ExternalName services. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types)"},
  )]
  class Api::Core::V1::ServiceSpec < ::K8S::Types::Api::Core::V1::ServiceSpec::Instance
    include ::K8S::Types::Api::Core::V1::ServiceSpec
    include ::K8S::Kubernetes::Object

    # allocateLoadBalancerNodePorts defines if NodePorts will be automatically allocated for services with type LoadBalancer.  Default is "true". It may be set to "false" if the cluster load-balancer does not rely on NodePorts. allocateLoadBalancerNodePorts may only be set for services with type LoadBalancer and will be cleared if the type is changed to any other type. This field is alpha-level and is only honored by servers that enable the ServiceLBNodePortControl feature.
    def allocate_load_balancer_node_ports : ::Bool?
      self.["allocateLoadBalancerNodePorts"].as(::Bool?)
    end

    # :ditto:
    def allocate_load_balancer_node_ports! : ::Bool
      self.["allocateLoadBalancerNodePorts"].as(::Bool?).not_nil!
    end

    # :ditto:
    def allocate_load_balancer_node_ports? : ::Bool?
      self.["allocateLoadBalancerNodePorts"]?.as(::Bool?)
    end

    # :ditto:
    def allocate_load_balancer_node_ports=(value : ::Bool?)
      self.["allocateLoadBalancerNodePorts"] = value
    end

    # clusterIP is the IP address of the service and is usually assigned randomly. If an address is specified manually, is in-range (as per system configuration), and is not in use, it will be allocated to the service; otherwise creation of the service will fail. This field may not be changed through updates unless the type field is also being changed to ExternalName (which requires this field to be blank) or the type field is being changed from ExternalName (in which case this field may optionally be specified, as describe above).  Valid values are "None", empty string (""), or a valid IP address. Setting this to "None" makes a "headless service" (no virtual IP), which is useful when direct endpoint connections are preferred and proxying is not required.  Only applies to types ClusterIP, NodePort, and LoadBalancer. If this field is specified when creating a Service of type ExternalName, creation will fail. This field will be wiped when updating a Service to type ExternalName. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies))
    def cluster_ip : String?
      self.["clusterIP"].as(String?)
    end

    # :ditto:
    def cluster_ip! : String
      self.["clusterIP"].as(String?).not_nil!
    end

    # :ditto:
    def cluster_ip? : String?
      self.["clusterIP"]?.as(String?)
    end

    # :ditto:
    def cluster_ip=(value : String?)
      self.["clusterIP"] = value
    end

    # ClusterIPs is a list of IP addresses assigned to this service, and are usually assigned randomly.  If an address is specified manually, is in-range (as per system configuration), and is not in use, it will be allocated to the service; otherwise creation of the service will fail. This field may not be changed through updates unless the type field is also being changed to ExternalName (which requires this field to be empty) or the type field is being changed from ExternalName (in which case this field may optionally be specified, as describe above).  Valid values are "None", empty string (""), or a valid IP address.  Setting this to "None" makes a "headless service" (no virtual IP), which is useful when direct endpoint connections are preferred and proxying is not required.  Only applies to types ClusterIP, NodePort, and LoadBalancer. If this field is specified when creating a Service of type ExternalName, creation will fail. This field will be wiped when updating a Service to type ExternalName.  If this field is not specified, it will be initialized from the clusterIP field.  If this field is specified, clients must ensure that clusterIPs[0] and clusterIP have the same value.
    #
    # Unless the "IPv6DualStack" feature gate is enabled, this field is limited to one value, which must be the same as the clusterIP field.  If the feature gate is enabled, this field may hold a maximum of two entries (dual-stack IPs, in either order).  These IPs must correspond to the values of the ipFamilies field. Both clusterIPs and ipFamilies are governed by the ipFamilyPolicy field. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies))
    def cluster_ips : ::Array(String)?
      self.["clusterIPs"].as(::Array(String)?)
    end

    # :ditto:
    def cluster_ips! : ::Array(String)
      self.["clusterIPs"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def cluster_ips? : ::Array(String)?
      self.["clusterIPs"]?.as(::Array(String)?)
    end

    # :ditto:
    def cluster_ips=(value : ::Array(String)?)
      self.["clusterIPs"] = value
    end

    # externalIPs is a list of IP addresses for which nodes in the cluster will also accept traffic for this service.  These IPs are not managed by Kubernetes.  The user is responsible for ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers that are not part of the Kubernetes system.
    def external_ips : ::Array(String)?
      self.["externalIPs"].as(::Array(String)?)
    end

    # :ditto:
    def external_ips! : ::Array(String)
      self.["externalIPs"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def external_ips? : ::Array(String)?
      self.["externalIPs"]?.as(::Array(String)?)
    end

    # :ditto:
    def external_ips=(value : ::Array(String)?)
      self.["externalIPs"] = value
    end

    # externalName is the external reference that discovery mechanisms will return as an alias for this service (e.g. a DNS CNAME record). No proxying will be involved.  Must be a lowercase RFC-1123 hostname ([[https://tools.ietf.org/html/rfc1123) and requires Type to be](https://tools.ietf.org/html/rfc1123) and requires Type to be)](https://tools.ietf.org/html/rfc1123) and requires Type to be](https://tools.ietf.org/html/rfc1123) and requires Type to be))
    def external_name : String?
      self.["externalName"].as(String?)
    end

    # :ditto:
    def external_name! : String
      self.["externalName"].as(String?).not_nil!
    end

    # :ditto:
    def external_name? : String?
      self.["externalName"]?.as(String?)
    end

    # :ditto:
    def external_name=(value : String?)
      self.["externalName"] = value
    end

    # externalTrafficPolicy denotes if this Service desires to route external traffic to node-local or cluster-wide endpoints. "Local" preserves the client source IP and avoids a second hop for LoadBalancer and Nodeport type services, but risks potentially imbalanced traffic spreading. "Cluster" obscures the client source IP and may cause a second hop to another node, but should have good overall load-spreading.
    def external_traffic_policy : String?
      self.["externalTrafficPolicy"].as(String?)
    end

    # :ditto:
    def external_traffic_policy! : String
      self.["externalTrafficPolicy"].as(String?).not_nil!
    end

    # :ditto:
    def external_traffic_policy? : String?
      self.["externalTrafficPolicy"]?.as(String?)
    end

    # :ditto:
    def external_traffic_policy=(value : String?)
      self.["externalTrafficPolicy"] = value
    end

    # healthCheckNodePort specifies the healthcheck nodePort for the service. This only applies when type is set to LoadBalancer and externalTrafficPolicy is set to Local. If a value is specified, is in-range, and is not in use, it will be used.  If not specified, a value will be automatically allocated.  External systems (e.g. load-balancers) can use this port to determine if a given node holds endpoints for this service or not.  If this field is specified when creating a Service which does not need it, creation will fail. This field will be wiped when updating a Service to no longer need it (e.g. changing type).
    def health_check_node_port : Int32?
      self.["healthCheckNodePort"].as(Int32?)
    end

    # :ditto:
    def health_check_node_port! : Int32
      self.["healthCheckNodePort"].as(Int32?).not_nil!
    end

    # :ditto:
    def health_check_node_port? : Int32?
      self.["healthCheckNodePort"]?.as(Int32?)
    end

    # :ditto:
    def health_check_node_port=(value : Int32?)
      self.["healthCheckNodePort"] = value
    end

    # IPFamilies is a list of IP families (e.g. IPv4, IPv6) assigned to this service, and is gated by the "IPv6DualStack" feature gate.  This field is usually assigned automatically based on cluster configuration and the ipFamilyPolicy field. If this field is specified manually, the requested family is available in the cluster, and ipFamilyPolicy allows it, it will be used; otherwise creation of the service will fail.  This field is conditionally mutable: it allows for adding or removing a secondary IP family, but it does not allow changing the primary IP family of the Service.  Valid values are "IPv4" and "IPv6".  This field only applies to Services of types ClusterIP, NodePort, and LoadBalancer, and does apply to "headless" services.  This field will be wiped when updating a Service to type ExternalName.
    #
    # This field may hold a maximum of two entries (dual-stack families, in either order).  These families must correspond to the values of the clusterIPs field, if specified. Both clusterIPs and ipFamilies are governed by the ipFamilyPolicy field.
    def ip_families : ::Array(String)?
      self.["ipFamilies"].as(::Array(String)?)
    end

    # :ditto:
    def ip_families! : ::Array(String)
      self.["ipFamilies"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def ip_families? : ::Array(String)?
      self.["ipFamilies"]?.as(::Array(String)?)
    end

    # :ditto:
    def ip_families=(value : ::Array(String)?)
      self.["ipFamilies"] = value
    end

    # IPFamilyPolicy represents the dual-stack-ness requested or required by this Service, and is gated by the "IPv6DualStack" feature gate.  If there is no value provided, then this field will be set to SingleStack. Services can be "SingleStack" (a single IP family), "PreferDualStack" (two IP families on dual-stack configured clusters or a single IP family on single-stack clusters), or "RequireDualStack" (two IP families on dual-stack configured clusters, otherwise fail). The ipFamilies and clusterIPs fields depend on the value of this field.  This field will be wiped when updating a service to type ExternalName.
    def ip_family_policy : String?
      self.["ipFamilyPolicy"].as(String?)
    end

    # :ditto:
    def ip_family_policy! : String
      self.["ipFamilyPolicy"].as(String?).not_nil!
    end

    # :ditto:
    def ip_family_policy? : String?
      self.["ipFamilyPolicy"]?.as(String?)
    end

    # :ditto:
    def ip_family_policy=(value : String?)
      self.["ipFamilyPolicy"] = value
    end

    # Only applies to Service Type: LoadBalancer LoadBalancer will get created with the IP specified in this field. This feature depends on whether the underlying cloud-provider supports specifying the loadBalancerIP when a load balancer is created. This field will be ignored if the cloud-provider does not support the feature.
    def load_balancer_ip : String?
      self.["loadBalancerIP"].as(String?)
    end

    # :ditto:
    def load_balancer_ip! : String
      self.["loadBalancerIP"].as(String?).not_nil!
    end

    # :ditto:
    def load_balancer_ip? : String?
      self.["loadBalancerIP"]?.as(String?)
    end

    # :ditto:
    def load_balancer_ip=(value : String?)
      self.["loadBalancerIP"] = value
    end

    # If specified and supported by the platform, this will restrict traffic through the cloud-provider load-balancer will be restricted to the specified client IPs. This field will be ignored if the cloud-provider does not support the feature." More info: [[https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/](https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/)](https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/](https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/))
    def load_balancer_source_ranges : ::Array(String)?
      self.["loadBalancerSourceRanges"].as(::Array(String)?)
    end

    # :ditto:
    def load_balancer_source_ranges! : ::Array(String)
      self.["loadBalancerSourceRanges"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def load_balancer_source_ranges? : ::Array(String)?
      self.["loadBalancerSourceRanges"]?.as(::Array(String)?)
    end

    # :ditto:
    def load_balancer_source_ranges=(value : ::Array(String)?)
      self.["loadBalancerSourceRanges"] = value
    end

    # The list of ports that are exposed by this service. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies))
    def ports : ::Array(::K8S::Api::Core::V1::ServicePort)?
      self.["ports"].as(::Array(::K8S::Api::Core::V1::ServicePort)?)
    end

    # :ditto:
    def ports! : ::Array(::K8S::Api::Core::V1::ServicePort)
      self.["ports"].as(::Array(::K8S::Api::Core::V1::ServicePort)?).not_nil!
    end

    # :ditto:
    def ports? : ::Array(::K8S::Api::Core::V1::ServicePort)?
      self.["ports"]?.as(::Array(::K8S::Api::Core::V1::ServicePort)?)
    end

    # :ditto:
    def ports=(value : ::Array(::K8S::Api::Core::V1::ServicePort)?)
      self.["ports"] = value
    end

    # publishNotReadyAddresses indicates that any agent which deals with endpoints for this Service should disregard any indications of [[ready/not-ready. The primary use case for setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate Endpoints and EndpointSlice resources for Services interpret this to mean that all endpoints are considered "ready" even if the Pods themselves are not. Agents which consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice resources can safely assume this behavior.](ready/not-ready. The primary use case for setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate Endpoints and EndpointSlice resources for Services interpret this to mean that all endpoints are considered "ready" even if the Pods themselves are not. Agents which consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice resources can safely assume this behavior.)]([ready/not-ready. The primary use case for setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate Endpoints and EndpointSlice resources for Services interpret this to mean that all endpoints are considered "ready" even if the Pods themselves are not. Agents which consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice resources can safely assume this behavior.](ready/not-ready. The primary use case for setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate Endpoints and EndpointSlice resources for Services interpret this to mean that all endpoints are considered "ready" even if the Pods themselves are not. Agents which consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice resources can safely assume this behavior.))
    def publish_not_ready_addresses : ::Bool?
      self.["publishNotReadyAddresses"].as(::Bool?)
    end

    # :ditto:
    def publish_not_ready_addresses! : ::Bool
      self.["publishNotReadyAddresses"].as(::Bool?).not_nil!
    end

    # :ditto:
    def publish_not_ready_addresses? : ::Bool?
      self.["publishNotReadyAddresses"]?.as(::Bool?)
    end

    # :ditto:
    def publish_not_ready_addresses=(value : ::Bool?)
      self.["publishNotReadyAddresses"] = value
    end

    # Route service traffic to pods with label keys and values matching this selector. If empty or not present, the service is assumed to have an external process managing its endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/](https://kubernetes.io/docs/concepts/services-networking/service/)](https://kubernetes.io/docs/concepts/services-networking/service/](https://kubernetes.io/docs/concepts/services-networking/service/))
    def selector : ::Hash(String, String)?
      self.["selector"].as(::Hash(String, String)?)
    end

    # :ditto:
    def selector! : ::Hash(String, String)
      self.["selector"].as(::Hash(String, String)?).not_nil!
    end

    # :ditto:
    def selector? : ::Hash(String, String)?
      self.["selector"]?.as(::Hash(String, String)?)
    end

    # :ditto:
    def selector=(value : ::Hash(String, String)?)
      self.["selector"] = value
    end

    # Supports "ClientIP" and "None". Used to maintain session affinity. Enable client IP based session affinity. Must be ClientIP or None. Defaults to None. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies))
    def session_affinity : String?
      self.["sessionAffinity"].as(String?)
    end

    # :ditto:
    def session_affinity! : String
      self.["sessionAffinity"].as(String?).not_nil!
    end

    # :ditto:
    def session_affinity? : String?
      self.["sessionAffinity"]?.as(String?)
    end

    # :ditto:
    def session_affinity=(value : String?)
      self.["sessionAffinity"] = value
    end

    # sessionAffinityConfig contains the configurations of session affinity.
    def session_affinity_config : ::K8S::Api::Core::V1::SessionAffinityConfig?
      self.["sessionAffinityConfig"].as(::K8S::Api::Core::V1::SessionAffinityConfig?)
    end

    # :ditto:
    def session_affinity_config! : ::K8S::Api::Core::V1::SessionAffinityConfig
      self.["sessionAffinityConfig"].as(::K8S::Api::Core::V1::SessionAffinityConfig?).not_nil!
    end

    # :ditto:
    def session_affinity_config? : ::K8S::Api::Core::V1::SessionAffinityConfig?
      self.["sessionAffinityConfig"]?.as(::K8S::Api::Core::V1::SessionAffinityConfig?)
    end

    # :ditto:
    def session_affinity_config=(value : ::K8S::Api::Core::V1::SessionAffinityConfig?)
      self.["sessionAffinityConfig"] = value
    end

    # topologyKeys is a preference-order list of topology keys which implementations of services should use to preferentially sort endpoints when accessing this Service, it can not be used at the same time as externalTrafficPolicy=Local. Topology keys must be valid label keys and at most 16 keys may be specified. Endpoints are chosen based on the first topology key with available backends. If this field is specified and all entries have no backends that match the topology of the client, the service has no backends for that client and connections should fail. The special value "*" may be used to mean "any topology". This catch-all value, if used, only makes sense as the last value in the list. If this is not specified or empty, no topology constraints will be applied. This field is alpha-level and is only honored by servers that enable the ServiceTopology feature.
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

    # type determines how the Service is exposed. Defaults to ClusterIP. Valid options are ExternalName, ClusterIP, NodePort, and LoadBalancer. "ClusterIP" allocates a cluster-internal IP address for load-balancing to endpoints. Endpoints are determined by the selector or if that is not specified, by manual construction of an Endpoints object or EndpointSlice objects. If clusterIP is "None", no virtual IP is allocated and the endpoints are published as a set of endpoints rather than a virtual IP. "NodePort" builds on ClusterIP and allocates a port on every node which routes to the same endpoints as the clusterIP. "LoadBalancer" builds on NodePort and creates an external load-balancer (if supported in the current cloud) which routes to the same endpoints as the clusterIP. "ExternalName" aliases this service to the specified externalName. Several other fields do not apply to ExternalName services. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types)](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types))
    def type : String?
      self.["type"].as(String?)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String?).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String?)
      self.["type"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "allocateLoadBalancerNodePorts", accessor: "allocate_load_balancer_node_ports", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "clusterIP", accessor: "cluster_ip", nilable: true, read_only: false, default: nil, kind: String },
        { key: "clusterIPs", accessor: "cluster_ips", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "externalIPs", accessor: "external_ips", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "externalName", accessor: "external_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "externalTrafficPolicy", accessor: "external_traffic_policy", nilable: true, read_only: false, default: nil, kind: String },
        { key: "healthCheckNodePort", accessor: "health_check_node_port", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "ipFamilies", accessor: "ip_families", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "ipFamilyPolicy", accessor: "ip_family_policy", nilable: true, read_only: false, default: nil, kind: String },
        { key: "loadBalancerIP", accessor: "load_balancer_ip", nilable: true, read_only: false, default: nil, kind: String },
        { key: "loadBalancerSourceRanges", accessor: "load_balancer_source_ranges", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "ports", accessor: "ports", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ServicePort) },
        { key: "publishNotReadyAddresses", accessor: "publish_not_ready_addresses", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String) },
        { key: "sessionAffinity", accessor: "session_affinity", nilable: true, read_only: false, default: nil, kind: String },
        { key: "sessionAffinityConfig", accessor: "session_affinity_config", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SessionAffinityConfig },
        { key: "topologyKeys", accessor: "topology_keys", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
