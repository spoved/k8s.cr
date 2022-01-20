# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::EndpointSubset; end

require "./endpoint_address"
require "./endpoint_port"

module K8S
  # Namespace holding the types for `Api::Core::V1::EndpointSubset`.
  module Types::Api::Core::V1::EndpointSubset
    alias ValueType = ::Array(::K8S::Api::Core::V1::EndpointAddress) | ::Array(::K8S::Api::Core::V1::EndpointPort) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
    abstract def addresses : ::Array(::K8S::Api::Core::V1::EndpointAddress)?
    # :ditto:
    abstract def addresses! : ::Array(::K8S::Api::Core::V1::EndpointAddress)
    # :ditto:
    abstract def addresses? : ::Array(::K8S::Api::Core::V1::EndpointAddress)?
    # :ditto:
    abstract def addresses=(value : ::Array(::K8S::Api::Core::V1::EndpointAddress)?)
    # IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
    abstract def not_ready_addresses : ::Array(::K8S::Api::Core::V1::EndpointAddress)?
    # :ditto:
    abstract def not_ready_addresses! : ::Array(::K8S::Api::Core::V1::EndpointAddress)
    # :ditto:
    abstract def not_ready_addresses? : ::Array(::K8S::Api::Core::V1::EndpointAddress)?
    # :ditto:
    abstract def not_ready_addresses=(value : ::Array(::K8S::Api::Core::V1::EndpointAddress)?)
    # Port numbers available on the related IP addresses.
    abstract def ports : ::Array(::K8S::Api::Core::V1::EndpointPort)?
    # :ditto:
    abstract def ports! : ::Array(::K8S::Api::Core::V1::EndpointPort)
    # :ditto:
    abstract def ports? : ::Array(::K8S::Api::Core::V1::EndpointPort)?
    # :ditto:
    abstract def ports=(value : ::Array(::K8S::Api::Core::V1::EndpointPort)?)
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
  class Api::Core::V1::EndpointSubset < ::K8S::Types::Api::Core::V1::EndpointSubset::Instance
    include ::K8S::Types::Api::Core::V1::EndpointSubset
    include ::K8S::Kubernetes::Object

    # IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
    def addresses : ::Array(::K8S::Api::Core::V1::EndpointAddress)?
      self.["addresses"].as(::Array(::K8S::Api::Core::V1::EndpointAddress)?)
    end

    # :ditto:
    def addresses! : ::Array(::K8S::Api::Core::V1::EndpointAddress)
      self.["addresses"].as(::Array(::K8S::Api::Core::V1::EndpointAddress)?).not_nil!
    end

    # :ditto:
    def addresses? : ::Array(::K8S::Api::Core::V1::EndpointAddress)?
      self.["addresses"]?.as(::Array(::K8S::Api::Core::V1::EndpointAddress)?)
    end

    # :ditto:
    def addresses=(value : ::Array(::K8S::Api::Core::V1::EndpointAddress)?)
      self.["addresses"] = value
    end

    # IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
    def not_ready_addresses : ::Array(::K8S::Api::Core::V1::EndpointAddress)?
      self.["notReadyAddresses"].as(::Array(::K8S::Api::Core::V1::EndpointAddress)?)
    end

    # :ditto:
    def not_ready_addresses! : ::Array(::K8S::Api::Core::V1::EndpointAddress)
      self.["notReadyAddresses"].as(::Array(::K8S::Api::Core::V1::EndpointAddress)?).not_nil!
    end

    # :ditto:
    def not_ready_addresses? : ::Array(::K8S::Api::Core::V1::EndpointAddress)?
      self.["notReadyAddresses"]?.as(::Array(::K8S::Api::Core::V1::EndpointAddress)?)
    end

    # :ditto:
    def not_ready_addresses=(value : ::Array(::K8S::Api::Core::V1::EndpointAddress)?)
      self.["notReadyAddresses"] = value
    end

    # Port numbers available on the related IP addresses.
    def ports : ::Array(::K8S::Api::Core::V1::EndpointPort)?
      self.["ports"].as(::Array(::K8S::Api::Core::V1::EndpointPort)?)
    end

    # :ditto:
    def ports! : ::Array(::K8S::Api::Core::V1::EndpointPort)
      self.["ports"].as(::Array(::K8S::Api::Core::V1::EndpointPort)?).not_nil!
    end

    # :ditto:
    def ports? : ::Array(::K8S::Api::Core::V1::EndpointPort)?
      self.["ports"]?.as(::Array(::K8S::Api::Core::V1::EndpointPort)?)
    end

    # :ditto:
    def ports=(value : ::Array(::K8S::Api::Core::V1::EndpointPort)?)
      self.["ports"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "addresses", accessor: "addresses", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::EndpointAddress) },
        { key: "notReadyAddresses", accessor: "not_ready_addresses", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::EndpointAddress) },
        { key: "ports", accessor: "ports", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::EndpointPort) },
      ])
end
  end
end
