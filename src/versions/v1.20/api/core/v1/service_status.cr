# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # ServiceStatus represents the current status of a service.
  class Api::Core::V1::ServiceStatus
    # Current service state
    property conditions : Array(Apimachinery::Apis::Meta::V1::Condition) | Nil

    # LoadBalancer contains the current status of the load-balancer, if one is present.
    property load_balancer : Api::Core::V1::LoadBalancerStatus | Nil

    ::YAML.mapping({
      conditions:    {type: Array(Apimachinery::Apis::Meta::V1::Condition), nilable: true, key: "conditions", getter: false, setter: false},
      load_balancer: {type: Api::Core::V1::LoadBalancerStatus, nilable: true, key: "loadBalancer", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      conditions:    {type: Array(Apimachinery::Apis::Meta::V1::Condition), nilable: true, key: "conditions", getter: false, setter: false},
      load_balancer: {type: Api::Core::V1::LoadBalancerStatus, nilable: true, key: "loadBalancer", getter: false, setter: false},
    }, true)

    def initialize(*, @conditions : Array | Nil = nil, @load_balancer : Api::Core::V1::LoadBalancerStatus | Nil = nil)
    end
  end
end
