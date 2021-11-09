# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # ServiceSpec describes the attributes that a user creates on a service.
  class Api::Core::V1::ServiceSpec
    # allocateLoadBalancerNodePorts defines if NodePorts will be automatically allocated for services with type LoadBalancer.  Default is "true". It may be set to "false" if the cluster load-balancer does not rely on NodePorts. allocateLoadBalancerNodePorts may only be set for services with type LoadBalancer and will be cleared if the type is changed to any other type. This field is alpha-level and is only honored by servers that enable the ServiceLBNodePortControl feature.
    property allocate_load_balancer_node_ports : Bool | Nil

    # clusterIP is the IP address of the service and is usually assigned randomly. If an address is specified manually, is in-range (as per system configuration), and is not in use, it will be allocated to the service; otherwise creation of the service will fail. This field may not be changed through updates unless the type field is also being changed to ExternalName (which requires this field to be blank) or the type field is being changed from ExternalName (in which case this field may optionally be specified, as describe above).  Valid values are "None", empty string (""), or a valid IP address. Setting this to "None" makes a "headless service" (no virtual IP), which is useful when direct endpoint connections are preferred and proxying is not required.  Only applies to types ClusterIP, NodePort, and LoadBalancer. If this field is specified when creating a Service of type ExternalName, creation will fail. This field will be wiped when updating a Service to type ExternalName. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)
    property cluster_ip : String | Nil

    # ClusterIPs is a list of IP addresses assigned to this service, and are usually assigned randomly.  If an address is specified manually, is in-range (as per system configuration), and is not in use, it will be allocated to the service; otherwise creation of the service will fail. This field may not be changed through updates unless the type field is also being changed to ExternalName (which requires this field to be empty) or the type field is being changed from ExternalName (in which case this field may optionally be specified, as describe above).  Valid values are "None", empty string (""), or a valid IP address.  Setting this to "None" makes a "headless service" (no virtual IP), which is useful when direct endpoint connections are preferred and proxying is not required.  Only applies to types ClusterIP, NodePort, and LoadBalancer. If this field is specified when creating a Service of type ExternalName, creation will fail. This field will be wiped when updating a Service to type ExternalName.  If this field is not specified, it will be initialized from the clusterIP field.  If this field is specified, clients must ensure that clusterIPs[0] and clusterIP have the same value.
    #
    # Unless the "IPv6DualStack" feature gate is enabled, this field is limited to one value, which must be the same as the clusterIP field.  If the feature gate is enabled, this field may hold a maximum of two entries (dual-stack IPs, in either order).  These IPs must correspond to the values of the ipFamilies field. Both clusterIPs and ipFamilies are governed by the ipFamilyPolicy field. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)
    property cluster_ips : Array(String) | Nil

    # externalIPs is a list of IP addresses for which nodes in the cluster will also accept traffic for this service.  These IPs are not managed by Kubernetes.  The user is responsible for ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers that are not part of the Kubernetes system.
    property external_ips : Array(String) | Nil

    # externalName is the external reference that discovery mechanisms will return as an alias for this service (e.g. a DNS CNAME record). No proxying will be involved.  Must be a lowercase RFC-1123 hostname ([https://tools.ietf.org/html/rfc1123) and requires Type to be](https://tools.ietf.org/html/rfc1123) and requires Type to be)
    property external_name : String | Nil

    # externalTrafficPolicy denotes if this Service desires to route external traffic to node-local or cluster-wide endpoints. "Local" preserves the client source IP and avoids a second hop for LoadBalancer and Nodeport type services, but risks potentially imbalanced traffic spreading. "Cluster" obscures the client source IP and may cause a second hop to another node, but should have good overall load-spreading.
    property external_traffic_policy : String | Nil

    # healthCheckNodePort specifies the healthcheck nodePort for the service. This only applies when type is set to LoadBalancer and externalTrafficPolicy is set to Local. If a value is specified, is in-range, and is not in use, it will be used.  If not specified, a value will be automatically allocated.  External systems (e.g. load-balancers) can use this port to determine if a given node holds endpoints for this service or not.  If this field is specified when creating a Service which does not need it, creation will fail. This field will be wiped when updating a Service to no longer need it (e.g. changing type).
    property health_check_node_port : Int32 | Nil

    # IPFamilies is a list of IP families (e.g. IPv4, IPv6) assigned to this service, and is gated by the "IPv6DualStack" feature gate.  This field is usually assigned automatically based on cluster configuration and the ipFamilyPolicy field. If this field is specified manually, the requested family is available in the cluster, and ipFamilyPolicy allows it, it will be used; otherwise creation of the service will fail.  This field is conditionally mutable: it allows for adding or removing a secondary IP family, but it does not allow changing the primary IP family of the Service.  Valid values are "IPv4" and "IPv6".  This field only applies to Services of types ClusterIP, NodePort, and LoadBalancer, and does apply to "headless" services.  This field will be wiped when updating a Service to type ExternalName.
    #
    # This field may hold a maximum of two entries (dual-stack families, in either order).  These families must correspond to the values of the clusterIPs field, if specified. Both clusterIPs and ipFamilies are governed by the ipFamilyPolicy field.
    property ip_families : Array(String) | Nil

    # IPFamilyPolicy represents the dual-stack-ness requested or required by this Service, and is gated by the "IPv6DualStack" feature gate.  If there is no value provided, then this field will be set to SingleStack. Services can be "SingleStack" (a single IP family), "PreferDualStack" (two IP families on dual-stack configured clusters or a single IP family on single-stack clusters), or "RequireDualStack" (two IP families on dual-stack configured clusters, otherwise fail). The ipFamilies and clusterIPs fields depend on the value of this field.  This field will be wiped when updating a service to type ExternalName.
    property ip_family_policy : String | Nil

    # Only applies to Service Type: LoadBalancer LoadBalancer will get created with the IP specified in this field. This feature depends on whether the underlying cloud-provider supports specifying the loadBalancerIP when a load balancer is created. This field will be ignored if the cloud-provider does not support the feature.
    property load_balancer_ip : String | Nil

    # If specified and supported by the platform, this will restrict traffic through the cloud-provider load-balancer will be restricted to the specified client IPs. This field will be ignored if the cloud-provider does not support the feature." More info: [https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/](https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/)
    property load_balancer_source_ranges : Array(String) | Nil

    # The list of ports that are exposed by this service. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)
    property ports : Array(Api::Core::V1::ServicePort) | Nil

    # publishNotReadyAddresses indicates that any agent which deals with endpoints for this Service should disregard any indications of [ready/not-ready. The primary use case for setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate Endpoints and EndpointSlice resources for Services interpret this to mean that all endpoints are considered "ready" even if the Pods themselves are not. Agents which consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice resources can safely assume this behavior.](ready/not-ready. The primary use case for setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate Endpoints and EndpointSlice resources for Services interpret this to mean that all endpoints are considered "ready" even if the Pods themselves are not. Agents which consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice resources can safely assume this behavior.)
    property publish_not_ready_addresses : Bool | Nil

    # Route service traffic to pods with label keys and values matching this selector. If empty or not present, the service is assumed to have an external process managing its endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [https://kubernetes.io/docs/concepts/services-networking/service/](https://kubernetes.io/docs/concepts/services-networking/service/)
    property selector : Hash(String, String) | Nil

    # Supports "ClientIP" and "None". Used to maintain session affinity. Enable client IP based session affinity. Must be ClientIP or None. Defaults to None. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)
    property session_affinity : String | Nil

    # sessionAffinityConfig contains the configurations of session affinity.
    property session_affinity_config : Api::Core::V1::SessionAffinityConfig | Nil

    # topologyKeys is a preference-order list of topology keys which implementations of services should use to preferentially sort endpoints when accessing this Service, it can not be used at the same time as externalTrafficPolicy=Local. Topology keys must be valid label keys and at most 16 keys may be specified. Endpoints are chosen based on the first topology key with available backends. If this field is specified and all entries have no backends that match the topology of the client, the service has no backends for that client and connections should fail. The special value "*" may be used to mean "any topology". This catch-all value, if used, only makes sense as the last value in the list. If this is not specified or empty, no topology constraints will be applied. This field is alpha-level and is only honored by servers that enable the ServiceTopology feature.
    property topology_keys : Array(String) | Nil

    # type determines how the Service is exposed. Defaults to ClusterIP. Valid options are ExternalName, ClusterIP, NodePort, and LoadBalancer. "ClusterIP" allocates a cluster-internal IP address for load-balancing to endpoints. Endpoints are determined by the selector or if that is not specified, by manual construction of an Endpoints object or EndpointSlice objects. If clusterIP is "None", no virtual IP is allocated and the endpoints are published as a set of endpoints rather than a virtual IP. "NodePort" builds on ClusterIP and allocates a port on every node which routes to the same endpoints as the clusterIP. "LoadBalancer" builds on NodePort and creates an external load-balancer (if supported in the current cloud) which routes to the same endpoints as the clusterIP. "ExternalName" aliases this service to the specified externalName. Several other fields do not apply to ExternalName services. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types)
    property type : String | Nil

    ::YAML.mapping({
      allocate_load_balancer_node_ports: {type: Bool, nilable: true, key: "allocateLoadBalancerNodePorts", getter: false, setter: false},
      cluster_ip:                        {type: String, nilable: true, key: "clusterIP", getter: false, setter: false},
      cluster_ips:                       {type: Array(String), nilable: true, key: "clusterIPs", getter: false, setter: false},
      external_ips:                      {type: Array(String), nilable: true, key: "externalIPs", getter: false, setter: false},
      external_name:                     {type: String, nilable: true, key: "externalName", getter: false, setter: false},
      external_traffic_policy:           {type: String, nilable: true, key: "externalTrafficPolicy", getter: false, setter: false},
      health_check_node_port:            {type: Int32, nilable: true, key: "healthCheckNodePort", getter: false, setter: false},
      ip_families:                       {type: Array(String), nilable: true, key: "ipFamilies", getter: false, setter: false},
      ip_family_policy:                  {type: String, nilable: true, key: "ipFamilyPolicy", getter: false, setter: false},
      load_balancer_ip:                  {type: String, nilable: true, key: "loadBalancerIP", getter: false, setter: false},
      load_balancer_source_ranges:       {type: Array(String), nilable: true, key: "loadBalancerSourceRanges", getter: false, setter: false},
      ports:                             {type: Array(Api::Core::V1::ServicePort), nilable: true, key: "ports", getter: false, setter: false},
      publish_not_ready_addresses:       {type: Bool, nilable: true, key: "publishNotReadyAddresses", getter: false, setter: false},
      selector:                          {type: Hash(String, String), nilable: true, key: "selector", getter: false, setter: false},
      session_affinity:                  {type: String, nilable: true, key: "sessionAffinity", getter: false, setter: false},
      session_affinity_config:           {type: Api::Core::V1::SessionAffinityConfig, nilable: true, key: "sessionAffinityConfig", getter: false, setter: false},
      topology_keys:                     {type: Array(String), nilable: true, key: "topologyKeys", getter: false, setter: false},
      type:                              {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      allocate_load_balancer_node_ports: {type: Bool, nilable: true, key: "allocateLoadBalancerNodePorts", getter: false, setter: false},
      cluster_ip:                        {type: String, nilable: true, key: "clusterIP", getter: false, setter: false},
      cluster_ips:                       {type: Array(String), nilable: true, key: "clusterIPs", getter: false, setter: false},
      external_ips:                      {type: Array(String), nilable: true, key: "externalIPs", getter: false, setter: false},
      external_name:                     {type: String, nilable: true, key: "externalName", getter: false, setter: false},
      external_traffic_policy:           {type: String, nilable: true, key: "externalTrafficPolicy", getter: false, setter: false},
      health_check_node_port:            {type: Int32, nilable: true, key: "healthCheckNodePort", getter: false, setter: false},
      ip_families:                       {type: Array(String), nilable: true, key: "ipFamilies", getter: false, setter: false},
      ip_family_policy:                  {type: String, nilable: true, key: "ipFamilyPolicy", getter: false, setter: false},
      load_balancer_ip:                  {type: String, nilable: true, key: "loadBalancerIP", getter: false, setter: false},
      load_balancer_source_ranges:       {type: Array(String), nilable: true, key: "loadBalancerSourceRanges", getter: false, setter: false},
      ports:                             {type: Array(Api::Core::V1::ServicePort), nilable: true, key: "ports", getter: false, setter: false},
      publish_not_ready_addresses:       {type: Bool, nilable: true, key: "publishNotReadyAddresses", getter: false, setter: false},
      selector:                          {type: Hash(String, String), nilable: true, key: "selector", getter: false, setter: false},
      session_affinity:                  {type: String, nilable: true, key: "sessionAffinity", getter: false, setter: false},
      session_affinity_config:           {type: Api::Core::V1::SessionAffinityConfig, nilable: true, key: "sessionAffinityConfig", getter: false, setter: false},
      topology_keys:                     {type: Array(String), nilable: true, key: "topologyKeys", getter: false, setter: false},
      type:                              {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @allocate_load_balancer_node_ports : Bool | Nil = nil, @cluster_ip : String | Nil = nil, @cluster_ips : Array | Nil = nil, @external_ips : Array | Nil = nil, @external_name : String | Nil = nil, @external_traffic_policy : String | Nil = nil, @health_check_node_port : Int32 | Nil = nil, @ip_families : Array | Nil = nil, @ip_family_policy : String | Nil = nil, @load_balancer_ip : String | Nil = nil, @load_balancer_source_ranges : Array | Nil = nil, @ports : Array | Nil = nil, @publish_not_ready_addresses : Bool | Nil = nil, @selector : Hash(String, String) | Nil = nil, @session_affinity : String | Nil = nil, @session_affinity_config : Api::Core::V1::SessionAffinityConfig | Nil = nil, @topology_keys : Array | Nil = nil, @type : String | Nil = nil)
    end
  end
end
