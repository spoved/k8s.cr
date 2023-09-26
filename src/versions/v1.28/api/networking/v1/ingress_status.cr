# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./ingress_load_balancer_status"

::K8S::Kubernetes::Resource.define_object("IngressStatus",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "load_balancer", kind: ::K8S::Api::Networking::V1::IngressLoadBalancerStatus, key: "loadBalancer", nilable: true, read_only: false, description: "loadBalancer contains the current status of the load-balancer."},

  ]
)
