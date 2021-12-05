# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # EndpointSubset is a group of addresses with a common set of ports. The expanded set of endpoints is the Cartesian product of Addresses x Ports. For example, given:
  #   {
  #     Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],
  #     Ports:     [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
  #   }
  # The resulting set of endpoints can be viewed as:
  #     a: [ 10.10.1.1:8675, 10.10.2.2:8675 ],
  #     b: [ 10.10.1.1:309, 10.10.2.2:309 ]
  @[::K8S::Properties(
    addresses: {type: Array(Api::Core::V1::EndpointAddress), nilable: true, key: "addresses", getter: false, setter: false},
    not_ready_addresses: {type: Array(Api::Core::V1::EndpointAddress), nilable: true, key: "notReadyAddresses", getter: false, setter: false},
    ports: {type: Array(Api::Core::V1::EndpointPort), nilable: true, key: "ports", getter: false, setter: false},
  )]
  class Api::Core::V1::EndpointSubset
    include ::JSON::Serializable
    include ::YAML::Serializable

    # IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
    property addresses : Array(Api::Core::V1::EndpointAddress) | Nil

    # IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
    @[::JSON::Field(key: "notReadyAddresses")]
    @[::YAML::Field(key: "notReadyAddresses")]
    property not_ready_addresses : Array(Api::Core::V1::EndpointAddress) | Nil

    # Port numbers available on the related IP addresses.
    property ports : Array(Api::Core::V1::EndpointPort) | Nil

    def initialize(*, @addresses : Array | Nil = nil, @not_ready_addresses : Array | Nil = nil, @ports : Array | Nil = nil)
    end
  end
end
