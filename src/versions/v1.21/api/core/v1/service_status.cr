# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/condition"
require "./load_balancer_status"

::K8S::Kubernetes::Resource.define_object("ServiceStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "conditions", kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition), key: "conditions", nilable: true, read_only: false, description: "Current service state"},
    {name: "load_balancer", kind: ::K8S::Api::Core::V1::LoadBalancerStatus, key: "loadBalancer", nilable: true, read_only: false, description: "LoadBalancer contains the current status of the load-balancer, if one is present."},

  ]
)
