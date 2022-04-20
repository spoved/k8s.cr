# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./load_balancer_ingress"

::K8S::Kubernetes::Resource.define_object("LoadBalancerStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "ingress", kind: ::Array(::K8S::Api::Core::V1::LoadBalancerIngress), key: "ingress", nilable: true, read_only: false, description: "Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points."},

  ]
)
