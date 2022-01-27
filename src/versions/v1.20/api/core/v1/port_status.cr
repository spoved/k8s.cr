# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PortStatus; end

module K8S
  # Namespace holding the types for `Api::Core::V1::PortStatus`.
  module Types::Api::Core::V1::PortStatus
    # Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
    #   CamelCase names
    # - cloud provider specific error values must have names that comply with the
    #   format [[foo.example.com/CamelCase.](foo.example.com/CamelCase.)]([foo.example.com/CamelCase.](foo.example.com/CamelCase.))
    abstract def error : String?
    # :ditto:
    abstract def error! : String
    # :ditto:
    abstract def error? : String?
    # :ditto:
    abstract def error=(value : String)
    # Port is the port number of the service port of which status is recorded here
    abstract def port : Int32?
    # :ditto:
    abstract def port! : Int32
    # :ditto:
    abstract def port? : Int32?
    # :ditto:
    abstract def port=(value : Int32)
    # Protocol is the protocol of the service port of which status is recorded here The supported values are: "TCP", "UDP", "SCTP"
    abstract def protocol : String?
    # :ditto:
    abstract def protocol! : String
    # :ditto:
    abstract def protocol? : String?
    # :ditto:
    abstract def protocol=(value : String)
  end

  #
  @[::K8S::Properties(
    error: {key: "error", accessor: "error", kind: "String", nilable: true, default: nil, read_only: false, description: "Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use\n  CamelCase names\n- cloud provider specific error values must have names that comply with the\n  format [foo.example.com/CamelCase.](foo.example.com/CamelCase.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    port: {key: "port", accessor: "port", kind: "Int32", nilable: false, default: nil, read_only: false, description: "Port is the port number of the service port of which status is recorded here", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    protocol: {key: "protocol", accessor: "protocol", kind: "String", nilable: false, default: nil, read_only: false, description: "Protocol is the protocol of the service port of which status is recorded here The supported values are: \"TCP\", \"UDP\", \"SCTP\"", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PortStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PortStatus
    k8s_object_accessor("error", error : String, true, false, "Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use\n  CamelCase names\n- cloud provider specific error values must have names that comply with the\n  format [foo.example.com/CamelCase.](foo.example.com/CamelCase.)")
    k8s_object_accessor("port", port : Int32, false, false, "Port is the port number of the service port of which status is recorded here")
    k8s_object_accessor("protocol", protocol : String, false, false, "Protocol is the protocol of the service port of which status is recorded here The supported values are: \"TCP\", \"UDP\", \"SCTP\"")

    def initialize(*, error : String? = nil, port : Int32? = nil, protocol : String? = nil)
      super()
      self.["error"] = error
      self.["port"] = port
      self.["protocol"] = protocol
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "error", accessor: "error", nilable: true, read_only: false, default: nil, kind: String},
      {key: "port", accessor: "port", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "protocol", accessor: "protocol", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
