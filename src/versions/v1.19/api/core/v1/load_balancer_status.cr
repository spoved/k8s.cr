# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # LoadBalancerStatus represents the status of a load-balancer.
  @[::K8S::Properties(
    ingress: {type: Array(Api::Core::V1::LoadBalancerIngress), nilable: true, key: "ingress", getter: false, setter: false},
  )]
  class Api::Core::V1::LoadBalancerStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
    @[::JSON::Field(key: "ingress", emit_null: false)]
    @[::YAML::Field(key: "ingress", emit_null: false)]
    property ingress : Array(Api::Core::V1::LoadBalancerIngress) | Nil

    def initialize(*, @ingress : Array | Nil = nil)
    end
  end
end
