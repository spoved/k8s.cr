# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./load_balancer_status"

::K8S::Kubernetes::Resource.define_object("ServiceStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "load_balancer", kind: ::K8S::Api::Core::V1::LoadBalancerStatus, key: "loadBalancer", nilable: true, read_only: false, description: "LoadBalancer contains the current status of the load-balancer, if one is present."},

  ]
)
