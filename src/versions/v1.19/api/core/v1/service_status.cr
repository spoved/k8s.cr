# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ServiceStatus represents the current status of a service.
  @[::K8S::Properties(
    load_balancer: {type: Api::Core::V1::LoadBalancerStatus, nilable: true, key: "loadBalancer", getter: false, setter: false},
  )]
  class Api::Core::V1::ServiceStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # LoadBalancer contains the current status of the load-balancer, if one is present.
    @[::JSON::Field(key: "loadBalancer", emit_null: false)]
    @[::YAML::Field(key: "loadBalancer", emit_null: false)]
    property load_balancer : Api::Core::V1::LoadBalancerStatus | Nil

    def initialize(*, @load_balancer : Api::Core::V1::LoadBalancerStatus | Nil = nil)
    end
  end
end
