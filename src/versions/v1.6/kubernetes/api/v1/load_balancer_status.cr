# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # LoadBalancerStatus represents the status of a load-balancer.
  class Kubernetes::Api::V1::LoadBalancerStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
    property ingress : Array(Kubernetes::Api::V1::LoadBalancerIngress) | Nil

    ::YAML.mapping({
      ingress: {type: Array(Kubernetes::Api::V1::LoadBalancerIngress), nilable: true, key: "ingress", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      ingress: {type: Array(Kubernetes::Api::V1::LoadBalancerIngress), nilable: true, key: "ingress", getter: false, setter: false},
    }, true)

    def initialize(*, @ingress : Array | Nil = nil)
    end
  end
end
