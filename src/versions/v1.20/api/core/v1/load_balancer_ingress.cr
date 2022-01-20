# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::LoadBalancerIngress; end

require "./port_status"

module K8S
  # Namespace holding the types for `Api::Core::V1::LoadBalancerIngress`.
  module Types::Api::Core::V1::LoadBalancerIngress
    alias ValueType = String | ::Array(::K8S::Api::Core::V1::PortStatus) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
    abstract def hostname : String?
    # :ditto:
    abstract def hostname! : String
    # :ditto:
    abstract def hostname? : String?
    # :ditto:
    abstract def hostname=(value : String?)
    # IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
    abstract def ip : String?
    # :ditto:
    abstract def ip! : String
    # :ditto:
    abstract def ip? : String?
    # :ditto:
    abstract def ip=(value : String?)
    # Ports is a list of records of service ports If used, every port defined in the service should have an entry in it
    abstract def ports : ::Array(::K8S::Api::Core::V1::PortStatus)?
    # :ditto:
    abstract def ports! : ::Array(::K8S::Api::Core::V1::PortStatus)
    # :ditto:
    abstract def ports? : ::Array(::K8S::Api::Core::V1::PortStatus)?
    # :ditto:
    abstract def ports=(value : ::Array(::K8S::Api::Core::V1::PortStatus)?)
  end

  # LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
  @[::K8S::Properties(
    hostname: {key: "hostname", accessor: "hostname", kind: "String", nilable: true, default: nil, read_only: false, description: "Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ip: {key: "ip", accessor: "ip", kind: "String", nilable: true, default: nil, read_only: false, description: "IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ports: {key: "ports", accessor: "ports", kind: "::Array(::K8S::Api::Core::V1::PortStatus)", nilable: true, default: nil, read_only: false, description: "Ports is a list of records of service ports If used, every port defined in the service should have an entry in it", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::LoadBalancerIngress < ::K8S::Types::Api::Core::V1::LoadBalancerIngress::Instance
    include ::K8S::Types::Api::Core::V1::LoadBalancerIngress
    include ::K8S::Kubernetes::Object

    # Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
    def hostname : String?
      self.["hostname"].as(String?)
    end

    # :ditto:
    def hostname! : String
      self.["hostname"].as(String?).not_nil!
    end

    # :ditto:
    def hostname? : String?
      self.["hostname"]?.as(String?)
    end

    # :ditto:
    def hostname=(value : String?)
      self.["hostname"] = value
    end

    # IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
    def ip : String?
      self.["ip"].as(String?)
    end

    # :ditto:
    def ip! : String
      self.["ip"].as(String?).not_nil!
    end

    # :ditto:
    def ip? : String?
      self.["ip"]?.as(String?)
    end

    # :ditto:
    def ip=(value : String?)
      self.["ip"] = value
    end

    # Ports is a list of records of service ports If used, every port defined in the service should have an entry in it
    def ports : ::Array(::K8S::Api::Core::V1::PortStatus)?
      self.["ports"].as(::Array(::K8S::Api::Core::V1::PortStatus)?)
    end

    # :ditto:
    def ports! : ::Array(::K8S::Api::Core::V1::PortStatus)
      self.["ports"].as(::Array(::K8S::Api::Core::V1::PortStatus)?).not_nil!
    end

    # :ditto:
    def ports? : ::Array(::K8S::Api::Core::V1::PortStatus)?
      self.["ports"]?.as(::Array(::K8S::Api::Core::V1::PortStatus)?)
    end

    # :ditto:
    def ports=(value : ::Array(::K8S::Api::Core::V1::PortStatus)?)
      self.["ports"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "hostname", accessor: "hostname", nilable: true, read_only: false, default: nil, kind: String },
        { key: "ip", accessor: "ip", nilable: true, read_only: false, default: nil, kind: String },
        { key: "ports", accessor: "ports", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::PortStatus) },
      ])
end
  end
end
