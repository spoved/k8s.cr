# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::NetworkPolicyPort; end

module K8S
  # Namespace holding the types for `Api::Networking::V1::NetworkPolicyPort`.
  module Types::Api::Networking::V1::NetworkPolicyPort
    # If set, indicates that the range of ports from port to endPort, inclusive, should be allowed by the policy. This field cannot be defined if the port field is not defined or if the port field is defined as a named (string) port. The endPort must be equal or greater than port. This feature is in Alpha state and should be enabled using the Feature Gate "NetworkPolicyEndPort".
    abstract def end_port : Int32?
    # :ditto:
    abstract def end_port! : Int32
    # :ditto:
    abstract def end_port? : Int32?
    # :ditto:
    abstract def end_port=(value : Int32)
    # The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
    abstract def port : ::Int32 | ::String?
    # :ditto:
    abstract def port! : ::Int32 | ::String
    # :ditto:
    abstract def port? : ::Int32 | ::String?
    # :ditto:
    abstract def port=(value : ::Int32 | ::String)
    # The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
    abstract def protocol : String?
    # :ditto:
    abstract def protocol! : String
    # :ditto:
    abstract def protocol? : String?
    # :ditto:
    abstract def protocol=(value : String)
  end

  # NetworkPolicyPort describes a port to allow traffic on
  @[::K8S::Properties(
    end_port: {key: "endPort", accessor: "end_port", kind: "Int32", nilable: true, default: nil, read_only: false, description: "If set, indicates that the range of ports from port to endPort, inclusive, should be allowed by the policy. This field cannot be defined if the port field is not defined or if the port field is defined as a named (string) port. The endPort must be equal or greater than port. This feature is in Alpha state and should be enabled using the Feature Gate \"NetworkPolicyEndPort\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    port: {key: "port", accessor: "port", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    protocol: {key: "protocol", accessor: "protocol", kind: "String", nilable: true, default: nil, read_only: false, description: "The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Networking::V1::NetworkPolicyPort < ::K8S::GenericObject
    include ::K8S::Types::Api::Networking::V1::NetworkPolicyPort
    k8s_object_accessor("endPort", end_port : Int32, true, false, "If set, indicates that the range of ports from port to endPort, inclusive, should be allowed by the policy. This field cannot be defined if the port field is not defined or if the port field is defined as a named (string) port. The endPort must be equal or greater than port. This feature is in Alpha state and should be enabled using the Feature Gate \"NetworkPolicyEndPort\".")
    k8s_object_accessor("port", port : ::Int32 | ::String, true, false, "The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.")
    k8s_object_accessor("protocol", protocol : String, true, false, "The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.")

    def initialize(*, end_port : Int32? = nil, port : ::Int32 | ::String? = nil, protocol : String? = nil)
      super()
      self.["endPort"] = end_port
      self.["port"] = port
      self.["protocol"] = protocol
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "endPort", accessor: "end_port", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "port", accessor: "port", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
      {key: "protocol", accessor: "protocol", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
