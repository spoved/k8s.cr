# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::EndpointSubset; end

require "./endpoint_address"
require "./endpoint_port"

module K8S
  # Namespace holding the types for `Api::Core::V1::EndpointSubset`.
  module Types::Api::Core::V1::EndpointSubset
    # IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
    abstract def addresses : ::Array(::K8S::Api::Core::V1::EndpointAddress)?
    # :ditto:
    abstract def addresses! : ::Array(::K8S::Api::Core::V1::EndpointAddress)
    # :ditto:
    abstract def addresses? : ::Array(::K8S::Api::Core::V1::EndpointAddress)?
    # :ditto:
    abstract def addresses=(value : ::Array(::K8S::Api::Core::V1::EndpointAddress))
    # IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
    abstract def not_ready_addresses : ::Array(::K8S::Api::Core::V1::EndpointAddress)?
    # :ditto:
    abstract def not_ready_addresses! : ::Array(::K8S::Api::Core::V1::EndpointAddress)
    # :ditto:
    abstract def not_ready_addresses? : ::Array(::K8S::Api::Core::V1::EndpointAddress)?
    # :ditto:
    abstract def not_ready_addresses=(value : ::Array(::K8S::Api::Core::V1::EndpointAddress))
    # Port numbers available on the related IP addresses.
    abstract def ports : ::Array(::K8S::Api::Core::V1::EndpointPort)?
    # :ditto:
    abstract def ports! : ::Array(::K8S::Api::Core::V1::EndpointPort)
    # :ditto:
    abstract def ports? : ::Array(::K8S::Api::Core::V1::EndpointPort)?
    # :ditto:
    abstract def ports=(value : ::Array(::K8S::Api::Core::V1::EndpointPort))
  end

  # EndpointSubset is a group of addresses with a common set of ports. The expanded set of endpoints is the Cartesian product of Addresses x Ports. For example, given:
  #   {
  #     Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],
  #     Ports:     [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
  #   }
  # The resulting set of endpoints can be viewed as:
  #     a: [ 10.10.1.1:8675, 10.10.2.2:8675 ],
  #     b: [ 10.10.1.1:309, 10.10.2.2:309 ]
  @[::K8S::Properties(
    addresses: {key: "addresses", accessor: "addresses", kind: "::Array(::K8S::Api::Core::V1::EndpointAddress)", nilable: true, default: nil, read_only: false, description: "IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    not_ready_addresses: {key: "notReadyAddresses", accessor: "not_ready_addresses", kind: "::Array(::K8S::Api::Core::V1::EndpointAddress)", nilable: true, default: nil, read_only: false, description: "IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ports: {key: "ports", accessor: "ports", kind: "::Array(::K8S::Api::Core::V1::EndpointPort)", nilable: true, default: nil, read_only: false, description: "Port numbers available on the related IP addresses.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::EndpointSubset < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::EndpointSubset
    k8s_object_accessor("addresses", addresses : ::Array(::K8S::Api::Core::V1::EndpointAddress), true, false, "IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.")
    k8s_object_accessor("notReadyAddresses", not_ready_addresses : ::Array(::K8S::Api::Core::V1::EndpointAddress), true, false, "IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.")
    k8s_object_accessor("ports", ports : ::Array(::K8S::Api::Core::V1::EndpointPort), true, false, "Port numbers available on the related IP addresses.")

    def initialize(*, addresses : ::Array(::K8S::Api::Core::V1::EndpointAddress)? = nil, not_ready_addresses : ::Array(::K8S::Api::Core::V1::EndpointAddress)? = nil, ports : ::Array(::K8S::Api::Core::V1::EndpointPort)? = nil)
      super()
      self.["addresses"] = addresses
      self.["notReadyAddresses"] = not_ready_addresses
      self.["ports"] = ports
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "addresses", accessor: "addresses", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::EndpointAddress)},
      {key: "notReadyAddresses", accessor: "not_ready_addresses", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::EndpointAddress)},
      {key: "ports", accessor: "ports", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::EndpointPort)},
    ])
  end
end
