# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Extensions::V1beta1::NetworkPolicyPort; end

module K8S
  # Namespace holding the types for `Api::Extensions::V1beta1::NetworkPolicyPort`.
  module Types::Api::Extensions::V1beta1::NetworkPolicyPort
    # If specified, the port on the given protocol.  This can either be a numerical or named port on a pod.  If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
    abstract def port : ::Int32 | ::String?
    # :ditto:
    abstract def port! : ::Int32 | ::String
    # :ditto:
    abstract def port? : ::Int32 | ::String?
    # :ditto:
    abstract def port=(value : ::Int32 | ::String)
    # Optional.  The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
    abstract def protocol : String?
    # :ditto:
    abstract def protocol! : String
    # :ditto:
    abstract def protocol? : String?
    # :ditto:
    abstract def protocol=(value : String)
  end

  # DEPRECATED 1.9 - This group version of NetworkPolicyPort is deprecated by [networking/v1/NetworkPolicyPort.](networking/v1/NetworkPolicyPort.)
  @[::K8S::Properties(
    port: {key: "port", accessor: "port", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "If specified, the port on the given protocol.  This can either be a numerical or named port on a pod.  If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    protocol: {key: "protocol", accessor: "protocol", kind: "String", nilable: true, default: nil, read_only: false, description: "Optional.  The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Extensions::V1beta1::NetworkPolicyPort < ::K8S::GenericObject
    include ::K8S::Types::Api::Extensions::V1beta1::NetworkPolicyPort
    k8s_object_accessor("port", port : ::Int32 | ::String, true, false, "If specified, the port on the given protocol.  This can either be a numerical or named port on a pod.  If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.")
    k8s_object_accessor("protocol", protocol : String, true, false, "Optional.  The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.")

    def initialize(*, port : ::Int32 | ::String? = nil, protocol : String? = nil)
      super()
      self.["port"] = port
      self.["protocol"] = protocol
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "port", accessor: "port", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
      {key: "protocol", accessor: "protocol", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
