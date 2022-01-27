# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::EndpointPort; end

module K8S
  # Namespace holding the types for `Api::Core::V1::EndpointPort`.
  module Types::Api::Core::V1::EndpointPort
    # The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # The port number of the endpoint.
    abstract def port : Int32?
    # :ditto:
    abstract def port! : Int32
    # :ditto:
    abstract def port? : Int32?
    # :ditto:
    abstract def port=(value : Int32)
    # The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
    abstract def protocol : String?
    # :ditto:
    abstract def protocol! : String
    # :ditto:
    abstract def protocol? : String?
    # :ditto:
    abstract def protocol=(value : String)
  end

  # EndpointPort is a tuple that describes a single port.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    port: {key: "port", accessor: "port", kind: "Int32", nilable: false, default: nil, read_only: false, description: "The port number of the endpoint.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    protocol: {key: "protocol", accessor: "protocol", kind: "String", nilable: true, default: nil, read_only: false, description: "The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::EndpointPort < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::EndpointPort
    k8s_object_accessor("name", name : String, true, false, "The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.")
    k8s_object_accessor("port", port : Int32, false, false, "The port number of the endpoint.")
    k8s_object_accessor("protocol", protocol : String, true, false, "The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.")

    def initialize(*, name : String? = nil, port : Int32? = nil, protocol : String? = nil)
      super()
      self.["name"] = name
      self.["port"] = port
      self.["protocol"] = protocol
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "port", accessor: "port", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "protocol", accessor: "protocol", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
