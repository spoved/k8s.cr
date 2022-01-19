# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::NetworkPolicyPort; end

module K8S
  # Namespace holding the types for `Api::Networking::V1::NetworkPolicyPort`.
  module Types::Api::Networking::V1::NetworkPolicyPort
    alias ValueType = ::Int32 | ::String | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers.
    abstract def port : ::Int32 | ::String?
    # :ditto:
    abstract def port! : ::Int32 | ::String
    # :ditto:
    abstract def port? : ::Int32 | ::String?
    # :ditto:
    abstract def port=(value : ::Int32 | ::String?)
    # The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
    abstract def protocol : String?
    # :ditto:
    abstract def protocol! : String
    # :ditto:
    abstract def protocol? : String?
    # :ditto:
    abstract def protocol=(value : String?)
  end

  # NetworkPolicyPort describes a port to allow traffic on
  @[::K8S::Properties(
    port: {key: "port", accessor: "port", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers."},
    protocol: {key: "protocol", accessor: "protocol", kind: "String", nilable: true, default: nil, read_only: false, description: "The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP."},
  )]
  class Api::Networking::V1::NetworkPolicyPort < ::K8S::Types::Api::Networking::V1::NetworkPolicyPort::Instance
    include ::K8S::Types::Api::Networking::V1::NetworkPolicyPort
    include ::K8S::Kubernetes::Object

    # The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers.
    def port : ::Int32 | ::String?
      self.["port"].as(::Int32 | ::String?)
    end

    # :ditto:
    def port! : ::Int32 | ::String
      self.["port"].as(::Int32 | ::String?).not_nil!
    end

    # :ditto:
    def port? : ::Int32 | ::String?
      self.["port"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def port=(value : ::Int32 | ::String?)
      self.["port"] = value
    end

    # The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
    def protocol : String?
      self.["protocol"].as(String?)
    end

    # :ditto:
    def protocol! : String
      self.["protocol"].as(String?).not_nil!
    end

    # :ditto:
    def protocol? : String?
      self.["protocol"]?.as(String?)
    end

    # :ditto:
    def protocol=(value : String?)
      self.["protocol"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "port", accessor: "port", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
        { key: "protocol", accessor: "protocol", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
