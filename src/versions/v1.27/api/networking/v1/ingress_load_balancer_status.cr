# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./ingress_load_balancer_ingress"

::K8S::Kubernetes::Resource.define_object("IngressLoadBalancerStatus",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "ingress", kind: ::Array(::K8S::Api::Networking::V1::IngressLoadBalancerIngress), key: "ingress", nilable: true, read_only: false, description: "ingress is a list containing ingress points for the load-balancer."},

  ]
)
