# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
  class Api::Core::V1::LoadBalancerIngress
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
    property hostname : String | Nil

    # IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
    property ip : String | Nil

    # Ports is a list of records of service ports If used, every port defined in the service should have an entry in it
    property ports : Array(Api::Core::V1::PortStatus) | Nil

    ::YAML.mapping({
      hostname: {type: String, nilable: true, key: "hostname", getter: false, setter: false},
      ip:       {type: String, nilable: true, key: "ip", getter: false, setter: false},
      ports:    {type: Array(Api::Core::V1::PortStatus), nilable: true, key: "ports", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      hostname: {type: String, nilable: true, key: "hostname", getter: false, setter: false},
      ip:       {type: String, nilable: true, key: "ip", getter: false, setter: false},
      ports:    {type: Array(Api::Core::V1::PortStatus), nilable: true, key: "ports", getter: false, setter: false},
    }, true)

    def initialize(*, @hostname : String | Nil = nil, @ip : String | Nil = nil, @ports : Array | Nil = nil)
    end
  end
end
