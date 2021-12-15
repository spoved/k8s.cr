# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # IngressStatus describe the current state of the Ingress.
  @[::K8S::Properties(
    load_balancer: {type: Api::Core::V1::LoadBalancerStatus, nilable: true, key: "loadBalancer", getter: false, setter: false},
  )]
  class Api::Networking::V1::IngressStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # LoadBalancer contains the current status of the load-balancer.
    @[::JSON::Field(key: "loadBalancer", emit_null: false)]
    @[::YAML::Field(key: "loadBalancer", emit_null: false)]
    property load_balancer : Api::Core::V1::LoadBalancerStatus | Nil

    def initialize(*, @load_balancer : Api::Core::V1::LoadBalancerStatus | Nil = nil)
    end
  end
end
