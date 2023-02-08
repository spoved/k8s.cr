# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./port_status"

::K8S::Kubernetes::Resource.define_object("LoadBalancerIngress",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "hostname", kind: String, key: "hostname", nilable: true, read_only: false, description: "Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)"},
    {name: "ip", kind: String, key: "ip", nilable: true, read_only: false, description: "IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)"},
    {name: "ports", kind: ::Array(::K8S::Api::Core::V1::PortStatus), key: "ports", nilable: true, read_only: false, description: "Ports is a list of records of service ports If used, every port defined in the service should have an entry in it"},

  ]
)
