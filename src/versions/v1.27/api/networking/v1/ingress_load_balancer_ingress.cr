# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./ingress_port_status"

::K8S::Kubernetes::Resource.define_object("IngressLoadBalancerIngress",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "hostname", kind: String, key: "hostname", nilable: true, read_only: false, description: "hostname is set for load-balancer ingress points that are DNS based."},
    {name: "ip", kind: String, key: "ip", nilable: true, read_only: false, description: "ip is set for load-balancer ingress points that are IP based."},
    {name: "ports", kind: ::Array(::K8S::Api::Networking::V1::IngressPortStatus), key: "ports", nilable: true, read_only: false, description: "ports provides information about the ports exposed by this LoadBalancer."},

  ]
)
