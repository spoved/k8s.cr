# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ServiceSpec; end

require "./service_port"
require "./session_affinity_config"

module K8S
  # Namespace holding the types for `Api::Core::V1::ServiceSpec`.
  module Types::Api::Core::V1::ServiceSpec
    # clusterIP is the IP address of the service and is usually assigned randomly by the master. If an address is specified manually and is not in use by others, it will be allocated to the service; otherwise, creation of the service will fail. This field can not be changed through updates. Valid values are "None", empty string (""), or a valid IP address. "None" can be specified for headless services when proxying is not required. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies))
    abstract def cluster_ip : String?
    # :ditto:
    abstract def cluster_ip! : String
    # :ditto:
    abstract def cluster_ip? : String?
    # :ditto:
    abstract def cluster_ip=(value : String)
    # externalIPs is a list of IP addresses for which nodes in the cluster will also accept traffic for this service.  These IPs are not managed by Kubernetes.  The user is responsible for ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers that are not part of the Kubernetes system.
    abstract def external_ips : ::Array(String)?
    # :ditto:
    abstract def external_ips! : ::Array(String)
    # :ditto:
    abstract def external_ips? : ::Array(String)?
    # :ditto:
    abstract def external_ips=(value : ::Array(String))
    # externalName is the external reference that kubedns or equivalent will return as a CNAME record for this service. No proxying will be involved. Must be a valid RFC-1123 hostname ([[https://tools.ietf.org/html/rfc1123) and requires Type to be ExternalName.](https://tools.ietf.org/html/rfc1123) and requires Type to be ExternalName.)](https://tools.ietf.org/html/rfc1123) and requires Type to be ExternalName.](https://tools.ietf.org/html/rfc1123) and requires Type to be ExternalName.))
    abstract def external_name : String?
    # :ditto:
    abstract def external_name! : String
    # :ditto:
    abstract def external_name? : String?
    # :ditto:
    abstract def external_name=(value : String)
    # externalTrafficPolicy denotes if this Service desires to route external traffic to node-local or cluster-wide endpoints. "Local" preserves the client source IP and avoids a second hop for LoadBalancer and Nodeport type services, but risks potentially imbalanced traffic spreading. "Cluster" obscures the client source IP and may cause a second hop to another node, but should have good overall load-spreading.
    abstract def external_traffic_policy : String?
    # :ditto:
    abstract def external_traffic_policy! : String
    # :ditto:
    abstract def external_traffic_policy? : String?
    # :ditto:
    abstract def external_traffic_policy=(value : String)
    # healthCheckNodePort specifies the healthcheck nodePort for the service. If not specified, HealthCheckNodePort is created by the service api backend with the allocated nodePort. Will use user-specified nodePort value if specified by the client. Only effects when Type is set to LoadBalancer and ExternalTrafficPolicy is set to Local.
    abstract def health_check_node_port : Int32?
    # :ditto:
    abstract def health_check_node_port! : Int32
    # :ditto:
    abstract def health_check_node_port? : Int32?
    # :ditto:
    abstract def health_check_node_port=(value : Int32)
    # ipFamily specifies whether this Service has a preference for a particular IP family (e.g. IPv4 vs. IPv6).  If a specific IP family is requested, the clusterIP field will be allocated from that family, if it is available in the cluster.  If no IP family is requested, the cluster's primary IP family will be used. Other IP fields (loadBalancerIP, loadBalancerSourceRanges, externalIPs) and controllers which allocate external load-balancers should use the same IP family.  Endpoints for this Service will be of this family.  This field is immutable after creation. Assigning a ServiceIPFamily not available in the cluster (e.g. IPv6 in IPv4 only cluster) is an error condition and will fail during clusterIP assignment.
    abstract def ip_family : String?
    # :ditto:
    abstract def ip_family! : String
    # :ditto:
    abstract def ip_family? : String?
    # :ditto:
    abstract def ip_family=(value : String)
    # Only applies to Service Type: LoadBalancer LoadBalancer will get created with the IP specified in this field. This feature depends on whether the underlying cloud-provider supports specifying the loadBalancerIP when a load balancer is created. This field will be ignored if the cloud-provider does not support the feature.
    abstract def load_balancer_ip : String?
    # :ditto:
    abstract def load_balancer_ip! : String
    # :ditto:
    abstract def load_balancer_ip? : String?
    # :ditto:
    abstract def load_balancer_ip=(value : String)
    # If specified and supported by the platform, this will restrict traffic through the cloud-provider load-balancer will be restricted to the specified client IPs. This field will be ignored if the cloud-provider does not support the feature." More info: [[https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/](https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/)](https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/](https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/))
    abstract def load_balancer_source_ranges : ::Array(String)?
    # :ditto:
    abstract def load_balancer_source_ranges! : ::Array(String)
    # :ditto:
    abstract def load_balancer_source_ranges? : ::Array(String)?
    # :ditto:
    abstract def load_balancer_source_ranges=(value : ::Array(String))
    # The list of ports that are exposed by this service. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies))
    abstract def ports : ::Array(::K8S::Api::Core::V1::ServicePort)?
    # :ditto:
    abstract def ports! : ::Array(::K8S::Api::Core::V1::ServicePort)
    # :ditto:
    abstract def ports? : ::Array(::K8S::Api::Core::V1::ServicePort)?
    # :ditto:
    abstract def ports=(value : ::Array(::K8S::Api::Core::V1::ServicePort))
    # publishNotReadyAddresses, when set to true, indicates that DNS implementations must publish the notReadyAddresses of subsets for the Endpoints associated with the Service. The default value is false. The primary use case for setting this field is to use a StatefulSet's Headless Service to propagate SRV records for its Pods without respect to their readiness for purpose of peer discovery.
    abstract def publish_not_ready_addresses : ::Bool?
    # :ditto:
    abstract def publish_not_ready_addresses! : ::Bool
    # :ditto:
    abstract def publish_not_ready_addresses? : ::Bool?
    # :ditto:
    abstract def publish_not_ready_addresses=(value : ::Bool)
    # Route service traffic to pods with label keys and values matching this selector. If empty or not present, the service is assumed to have an external process managing its endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/](https://kubernetes.io/docs/concepts/services-networking/service/)](https://kubernetes.io/docs/concepts/services-networking/service/](https://kubernetes.io/docs/concepts/services-networking/service/))
    abstract def selector : ::Hash(String, String)?
    # :ditto:
    abstract def selector! : ::Hash(String, String)
    # :ditto:
    abstract def selector? : ::Hash(String, String)?
    # :ditto:
    abstract def selector=(value : ::Hash(String, String))
    # Supports "ClientIP" and "None". Used to maintain session affinity. Enable client IP based session affinity. Must be ClientIP or None. Defaults to None. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies))
    abstract def session_affinity : String?
    # :ditto:
    abstract def session_affinity! : String
    # :ditto:
    abstract def session_affinity? : String?
    # :ditto:
    abstract def session_affinity=(value : String)
    # sessionAffinityConfig contains the configurations of session affinity.
    abstract def session_affinity_config : ::K8S::Api::Core::V1::SessionAffinityConfig?
    # :ditto:
    abstract def session_affinity_config! : ::K8S::Api::Core::V1::SessionAffinityConfig
    # :ditto:
    abstract def session_affinity_config? : ::K8S::Api::Core::V1::SessionAffinityConfig?
    # :ditto:
    abstract def session_affinity_config=(value : ::K8S::Api::Core::V1::SessionAffinityConfig)
    # topologyKeys is a preference-order list of topology keys which implementations of services should use to preferentially sort endpoints when accessing this Service, it can not be used at the same time as externalTrafficPolicy=Local. Topology keys must be valid label keys and at most 16 keys may be specified. Endpoints are chosen based on the first topology key with available backends. If this field is specified and all entries have no backends that match the topology of the client, the service has no backends for that client and connections should fail. The special value "*" may be used to mean "any topology". This catch-all value, if used, only makes sense as the last value in the list. If this is not specified or empty, no topology constraints will be applied.
    abstract def topology_keys : ::Array(String)?
    # :ditto:
    abstract def topology_keys! : ::Array(String)
    # :ditto:
    abstract def topology_keys? : ::Array(String)?
    # :ditto:
    abstract def topology_keys=(value : ::Array(String))
    # type determines how the Service is exposed. Defaults to ClusterIP. Valid options are ExternalName, ClusterIP, NodePort, and LoadBalancer. "ExternalName" maps to the specified externalName. "ClusterIP" allocates a cluster-internal IP address for load-balancing to endpoints. Endpoints are determined by the selector or if that is not specified, by manual construction of an Endpoints object. If clusterIP is "None", no virtual IP is allocated and the endpoints are published as a set of endpoints rather than a stable IP. "NodePort" builds on ClusterIP and allocates a port on every node which routes to the clusterIP. "LoadBalancer" builds on NodePort and creates an external load-balancer (if supported in the current cloud) which routes to the clusterIP. More info: [[https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types)](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types))
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # ServiceSpec describes the attributes that a user creates on a service.
  @[::K8S::Properties(
    cluster_ip: {key: "clusterIP", accessor: "cluster_ip", kind: "String", nilable: true, default: nil, read_only: false, description: "clusterIP is the IP address of the service and is usually assigned randomly by the master. If an address is specified manually and is not in use by others, it will be allocated to the service; otherwise, creation of the service will fail. This field can not be changed through updates. Valid values are \"None\", empty string (\"\"), or a valid IP address. \"None\" can be specified for headless services when proxying is not required. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    external_ips: {key: "externalIPs", accessor: "external_ips", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "externalIPs is a list of IP addresses for which nodes in the cluster will also accept traffic for this service.  These IPs are not managed by Kubernetes.  The user is responsible for ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers that are not part of the Kubernetes system.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    external_name: {key: "externalName", accessor: "external_name", kind: "String", nilable: true, default: nil, read_only: false, description: "externalName is the external reference that kubedns or equivalent will return as a CNAME record for this service. No proxying will be involved. Must be a valid RFC-1123 hostname ([https://tools.ietf.org/html/rfc1123) and requires Type to be ExternalName.](https://tools.ietf.org/html/rfc1123) and requires Type to be ExternalName.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    external_traffic_policy: {key: "externalTrafficPolicy", accessor: "external_traffic_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "externalTrafficPolicy denotes if this Service desires to route external traffic to node-local or cluster-wide endpoints. \"Local\" preserves the client source IP and avoids a second hop for LoadBalancer and Nodeport type services, but risks potentially imbalanced traffic spreading. \"Cluster\" obscures the client source IP and may cause a second hop to another node, but should have good overall load-spreading.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    health_check_node_port: {key: "healthCheckNodePort", accessor: "health_check_node_port", kind: "Int32", nilable: true, default: nil, read_only: false, description: "healthCheckNodePort specifies the healthcheck nodePort for the service. If not specified, HealthCheckNodePort is created by the service api backend with the allocated nodePort. Will use user-specified nodePort value if specified by the client. Only effects when Type is set to LoadBalancer and ExternalTrafficPolicy is set to Local.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ip_family: {key: "ipFamily", accessor: "ip_family", kind: "String", nilable: true, default: nil, read_only: false, description: "ipFamily specifies whether this Service has a preference for a particular IP family (e.g. IPv4 vs. IPv6).  If a specific IP family is requested, the clusterIP field will be allocated from that family, if it is available in the cluster.  If no IP family is requested, the cluster's primary IP family will be used. Other IP fields (loadBalancerIP, loadBalancerSourceRanges, externalIPs) and controllers which allocate external load-balancers should use the same IP family.  Endpoints for this Service will be of this family.  This field is immutable after creation. Assigning a ServiceIPFamily not available in the cluster (e.g. IPv6 in IPv4 only cluster) is an error condition and will fail during clusterIP assignment.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    load_balancer_ip: {key: "loadBalancerIP", accessor: "load_balancer_ip", kind: "String", nilable: true, default: nil, read_only: false, description: "Only applies to Service Type: LoadBalancer LoadBalancer will get created with the IP specified in this field. This feature depends on whether the underlying cloud-provider supports specifying the loadBalancerIP when a load balancer is created. This field will be ignored if the cloud-provider does not support the feature.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    load_balancer_source_ranges: {key: "loadBalancerSourceRanges", accessor: "load_balancer_source_ranges", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "If specified and supported by the platform, this will restrict traffic through the cloud-provider load-balancer will be restricted to the specified client IPs. This field will be ignored if the cloud-provider does not support the feature.\" More info: [https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/](https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ports: {key: "ports", accessor: "ports", kind: "::Array(::K8S::Api::Core::V1::ServicePort)", nilable: true, default: nil, read_only: false, description: "The list of ports that are exposed by this service. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: ["port", "protocol"], x_kubernetes_list_type: "map", x_kubernetes_map_type: nil},
    publish_not_ready_addresses: {key: "publishNotReadyAddresses", accessor: "publish_not_ready_addresses", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "publishNotReadyAddresses, when set to true, indicates that DNS implementations must publish the notReadyAddresses of subsets for the Endpoints associated with the Service. The default value is false. The primary use case for setting this field is to use a StatefulSet's Headless Service to propagate SRV records for its Pods without respect to their readiness for purpose of peer discovery.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    selector: {key: "selector", accessor: "selector", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "Route service traffic to pods with label keys and values matching this selector. If empty or not present, the service is assumed to have an external process managing its endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [https://kubernetes.io/docs/concepts/services-networking/service/](https://kubernetes.io/docs/concepts/services-networking/service/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    session_affinity: {key: "sessionAffinity", accessor: "session_affinity", kind: "String", nilable: true, default: nil, read_only: false, description: "Supports \"ClientIP\" and \"None\". Used to maintain session affinity. Enable client IP based session affinity. Must be ClientIP or None. Defaults to None. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    session_affinity_config: {key: "sessionAffinityConfig", accessor: "session_affinity_config", kind: "::K8S::Api::Core::V1::SessionAffinityConfig", nilable: true, default: nil, read_only: false, description: "sessionAffinityConfig contains the configurations of session affinity.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    topology_keys: {key: "topologyKeys", accessor: "topology_keys", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "topologyKeys is a preference-order list of topology keys which implementations of services should use to preferentially sort endpoints when accessing this Service, it can not be used at the same time as externalTrafficPolicy=Local. Topology keys must be valid label keys and at most 16 keys may be specified. Endpoints are chosen based on the first topology key with available backends. If this field is specified and all entries have no backends that match the topology of the client, the service has no backends for that client and connections should fail. The special value \"*\" may be used to mean \"any topology\". This catch-all value, if used, only makes sense as the last value in the list. If this is not specified or empty, no topology constraints will be applied.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: true, default: nil, read_only: false, description: "type determines how the Service is exposed. Defaults to ClusterIP. Valid options are ExternalName, ClusterIP, NodePort, and LoadBalancer. \"ExternalName\" maps to the specified externalName. \"ClusterIP\" allocates a cluster-internal IP address for load-balancing to endpoints. Endpoints are determined by the selector or if that is not specified, by manual construction of an Endpoints object. If clusterIP is \"None\", no virtual IP is allocated and the endpoints are published as a set of endpoints rather than a stable IP. \"NodePort\" builds on ClusterIP and allocates a port on every node which routes to the clusterIP. \"LoadBalancer\" builds on NodePort and creates an external load-balancer (if supported in the current cloud) which routes to the clusterIP. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ServiceSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ServiceSpec
    k8s_object_accessor("clusterIP", cluster_ip : String, true, false, "clusterIP is the IP address of the service and is usually assigned randomly by the master. If an address is specified manually and is not in use by others, it will be allocated to the service; otherwise, creation of the service will fail. This field can not be changed through updates. Valid values are \"None\", empty string (\"\"), or a valid IP address. \"None\" can be specified for headless services when proxying is not required. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)")
    k8s_object_accessor("externalIPs", external_ips : ::Array(String), true, false, "externalIPs is a list of IP addresses for which nodes in the cluster will also accept traffic for this service.  These IPs are not managed by Kubernetes.  The user is responsible for ensuring that traffic arrives at a node with this IP.  A common example is external load-balancers that are not part of the Kubernetes system.")
    k8s_object_accessor("externalName", external_name : String, true, false, "externalName is the external reference that kubedns or equivalent will return as a CNAME record for this service. No proxying will be involved. Must be a valid RFC-1123 hostname ([https://tools.ietf.org/html/rfc1123) and requires Type to be ExternalName.](https://tools.ietf.org/html/rfc1123) and requires Type to be ExternalName.)")
    k8s_object_accessor("externalTrafficPolicy", external_traffic_policy : String, true, false, "externalTrafficPolicy denotes if this Service desires to route external traffic to node-local or cluster-wide endpoints. \"Local\" preserves the client source IP and avoids a second hop for LoadBalancer and Nodeport type services, but risks potentially imbalanced traffic spreading. \"Cluster\" obscures the client source IP and may cause a second hop to another node, but should have good overall load-spreading.")
    k8s_object_accessor("healthCheckNodePort", health_check_node_port : Int32, true, false, "healthCheckNodePort specifies the healthcheck nodePort for the service. If not specified, HealthCheckNodePort is created by the service api backend with the allocated nodePort. Will use user-specified nodePort value if specified by the client. Only effects when Type is set to LoadBalancer and ExternalTrafficPolicy is set to Local.")
    k8s_object_accessor("ipFamily", ip_family : String, true, false, "ipFamily specifies whether this Service has a preference for a particular IP family (e.g. IPv4 vs. IPv6).  If a specific IP family is requested, the clusterIP field will be allocated from that family, if it is available in the cluster.  If no IP family is requested, the cluster's primary IP family will be used. Other IP fields (loadBalancerIP, loadBalancerSourceRanges, externalIPs) and controllers which allocate external load-balancers should use the same IP family.  Endpoints for this Service will be of this family.  This field is immutable after creation. Assigning a ServiceIPFamily not available in the cluster (e.g. IPv6 in IPv4 only cluster) is an error condition and will fail during clusterIP assignment.")
    k8s_object_accessor("loadBalancerIP", load_balancer_ip : String, true, false, "Only applies to Service Type: LoadBalancer LoadBalancer will get created with the IP specified in this field. This feature depends on whether the underlying cloud-provider supports specifying the loadBalancerIP when a load balancer is created. This field will be ignored if the cloud-provider does not support the feature.")
    k8s_object_accessor("loadBalancerSourceRanges", load_balancer_source_ranges : ::Array(String), true, false, "If specified and supported by the platform, this will restrict traffic through the cloud-provider load-balancer will be restricted to the specified client IPs. This field will be ignored if the cloud-provider does not support the feature.\" More info: [https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/](https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/)")
    k8s_object_accessor("ports", ports : ::Array(::K8S::Api::Core::V1::ServicePort), true, false, "The list of ports that are exposed by this service. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)")
    k8s_object_accessor("publishNotReadyAddresses", publish_not_ready_addresses : ::Bool, true, false, "publishNotReadyAddresses, when set to true, indicates that DNS implementations must publish the notReadyAddresses of subsets for the Endpoints associated with the Service. The default value is false. The primary use case for setting this field is to use a StatefulSet's Headless Service to propagate SRV records for its Pods without respect to their readiness for purpose of peer discovery.")
    k8s_object_accessor("selector", selector : ::Hash(String, String), true, false, "Route service traffic to pods with label keys and values matching this selector. If empty or not present, the service is assumed to have an external process managing its endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort, and LoadBalancer. Ignored if type is ExternalName. More info: [https://kubernetes.io/docs/concepts/services-networking/service/](https://kubernetes.io/docs/concepts/services-networking/service/)")
    k8s_object_accessor("sessionAffinity", session_affinity : String, true, false, "Supports \"ClientIP\" and \"None\". Used to maintain session affinity. Enable client IP based session affinity. Must be ClientIP or None. Defaults to None. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies](https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies)")
    k8s_object_accessor("sessionAffinityConfig", session_affinity_config : ::K8S::Api::Core::V1::SessionAffinityConfig, true, false, "sessionAffinityConfig contains the configurations of session affinity.")
    k8s_object_accessor("topologyKeys", topology_keys : ::Array(String), true, false, "topologyKeys is a preference-order list of topology keys which implementations of services should use to preferentially sort endpoints when accessing this Service, it can not be used at the same time as externalTrafficPolicy=Local. Topology keys must be valid label keys and at most 16 keys may be specified. Endpoints are chosen based on the first topology key with available backends. If this field is specified and all entries have no backends that match the topology of the client, the service has no backends for that client and connections should fail. The special value \"*\" may be used to mean \"any topology\". This catch-all value, if used, only makes sense as the last value in the list. If this is not specified or empty, no topology constraints will be applied.")
    k8s_object_accessor("type", type : String, true, false, "type determines how the Service is exposed. Defaults to ClusterIP. Valid options are ExternalName, ClusterIP, NodePort, and LoadBalancer. \"ExternalName\" maps to the specified externalName. \"ClusterIP\" allocates a cluster-internal IP address for load-balancing to endpoints. Endpoints are determined by the selector or if that is not specified, by manual construction of an Endpoints object. If clusterIP is \"None\", no virtual IP is allocated and the endpoints are published as a set of endpoints rather than a stable IP. \"NodePort\" builds on ClusterIP and allocates a port on every node which routes to the clusterIP. \"LoadBalancer\" builds on NodePort and creates an external load-balancer (if supported in the current cloud) which routes to the clusterIP. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types](https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types)")

    def initialize(*, cluster_ip : String? = nil, external_ips : ::Array(String)? = nil, external_name : String? = nil, external_traffic_policy : String? = nil, health_check_node_port : Int32? = nil, ip_family : String? = nil, load_balancer_ip : String? = nil, load_balancer_source_ranges : ::Array(String)? = nil, ports : ::Array(::K8S::Api::Core::V1::ServicePort)? = nil, publish_not_ready_addresses : ::Bool? = nil, selector : ::Hash(String, String)? = nil, session_affinity : String? = nil, session_affinity_config : ::K8S::Api::Core::V1::SessionAffinityConfig? = nil, topology_keys : ::Array(String)? = nil, type : String? = nil)
      super()
      self.["clusterIP"] = cluster_ip
      self.["externalIPs"] = external_ips
      self.["externalName"] = external_name
      self.["externalTrafficPolicy"] = external_traffic_policy
      self.["healthCheckNodePort"] = health_check_node_port
      self.["ipFamily"] = ip_family
      self.["loadBalancerIP"] = load_balancer_ip
      self.["loadBalancerSourceRanges"] = load_balancer_source_ranges
      self.["ports"] = ports
      self.["publishNotReadyAddresses"] = publish_not_ready_addresses
      self.["selector"] = selector
      self.["sessionAffinity"] = session_affinity
      self.["sessionAffinityConfig"] = session_affinity_config
      self.["topologyKeys"] = topology_keys
      self.["type"] = type
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "clusterIP", accessor: "cluster_ip", nilable: true, read_only: false, default: nil, kind: String},
      {key: "externalIPs", accessor: "external_ips", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "externalName", accessor: "external_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "externalTrafficPolicy", accessor: "external_traffic_policy", nilable: true, read_only: false, default: nil, kind: String},
      {key: "healthCheckNodePort", accessor: "health_check_node_port", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "ipFamily", accessor: "ip_family", nilable: true, read_only: false, default: nil, kind: String},
      {key: "loadBalancerIP", accessor: "load_balancer_ip", nilable: true, read_only: false, default: nil, kind: String},
      {key: "loadBalancerSourceRanges", accessor: "load_balancer_source_ranges", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "ports", accessor: "ports", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ServicePort)},
      {key: "publishNotReadyAddresses", accessor: "publish_not_ready_addresses", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "selector", accessor: "selector", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String)},
      {key: "sessionAffinity", accessor: "session_affinity", nilable: true, read_only: false, default: nil, kind: String},
      {key: "sessionAffinityConfig", accessor: "session_affinity_config", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SessionAffinityConfig},
      {key: "topologyKeys", accessor: "topology_keys", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
