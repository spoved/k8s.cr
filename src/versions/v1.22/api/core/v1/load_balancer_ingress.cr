# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
  @[::K8S::Properties(
    hostname: {type: String, nilable: true, key: "hostname", getter: false, setter: false},
    ip: {type: String, nilable: true, key: "ip", getter: false, setter: false},
    ports: {type: Array(Api::Core::V1::PortStatus), nilable: true, key: "ports", getter: false, setter: false},
  )]
  class Api::Core::V1::LoadBalancerIngress
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
    @[::JSON::Field(key: "hostname", emit_null: false)]
    @[::YAML::Field(key: "hostname", emit_null: false)]
    property hostname : String | Nil

    # IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
    @[::JSON::Field(key: "ip", emit_null: false)]
    @[::YAML::Field(key: "ip", emit_null: false)]
    property ip : String | Nil

    # Ports is a list of records of service ports If used, every port defined in the service should have an entry in it
    @[::JSON::Field(key: "ports", emit_null: false)]
    @[::YAML::Field(key: "ports", emit_null: false)]
    property ports : Array(Api::Core::V1::PortStatus) | Nil

    def initialize(*, @hostname : String | Nil = nil, @ip : String | Nil = nil, @ports : Array(Api::Core::V1::PortStatus) | Nil = nil)
    end
  end
end
