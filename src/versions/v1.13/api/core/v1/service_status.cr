# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # ServiceStatus represents the current status of a service.
  class Api::Core::V1::ServiceStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # LoadBalancer contains the current status of the load-balancer, if one is present.
    property load_balancer : Api::Core::V1::LoadBalancerStatus | Nil

    ::YAML.mapping({
      load_balancer: {type: Api::Core::V1::LoadBalancerStatus, nilable: true, key: "loadBalancer", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      load_balancer: {type: Api::Core::V1::LoadBalancerStatus, nilable: true, key: "loadBalancer", getter: false, setter: false},
    }, true)

    def initialize(*, @load_balancer : Api::Core::V1::LoadBalancerStatus | Nil = nil)
    end
  end
end
