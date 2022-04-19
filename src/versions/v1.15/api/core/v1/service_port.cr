# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ServicePort",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "The name of this port within the service. This must be a DNS_LABEL. All ports within a ServiceSpec must have unique names. This maps to the 'Name' field in EndpointPort objects. Optional if only one ServicePort is defined on this service."},
    {name: "node_port", kind: Int32, key: "nodePort", nilable: true, read_only: false, description: "The port on each node on which this service is exposed when type=NodePort or LoadBalancer. Usually assigned by the system. If specified, it will be allocated to the service if unused or else creation of the service will fail. Default is to auto-allocate a port if the ServiceType of this Service requires one. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport](https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport)"},
    {name: "port", kind: Int32, key: "port", nilable: false, read_only: false, description: "The port that will be exposed by this service."},
    {name: "protocol", kind: String, key: "protocol", nilable: true, read_only: false, description: "The IP protocol for this port. Supports \"TCP\", \"UDP\", and \"SCTP\". Default is TCP."},
    {name: "target_port", kind: Union(::Int32 | ::String), key: "targetPort", nilable: true, read_only: false, description: "Number or name of the port to access on the pods targeted by the service. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. If this is a string, it will be looked up as a named port in the target Pod's container ports. If this is not specified, the value of the 'port' field is used (an identity map). This field is ignored for services with clusterIP=None, and should be omitted or set equal to the 'port' field. More info: [https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service](https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service)"},

  ]
)
