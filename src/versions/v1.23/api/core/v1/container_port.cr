# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ContainerPort; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ContainerPort`.
  module Types::Api::Core::V1::ContainerPort
    # Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.
    abstract def container_port : Int32?
    # :ditto:
    abstract def container_port! : Int32
    # :ditto:
    abstract def container_port? : Int32?
    # :ditto:
    abstract def container_port=(value : Int32)
    # What host IP to bind the external port to.
    abstract def host_ip : String?
    # :ditto:
    abstract def host_ip! : String
    # :ditto:
    abstract def host_ip? : String?
    # :ditto:
    abstract def host_ip=(value : String)
    # Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.
    abstract def host_port : Int32?
    # :ditto:
    abstract def host_port! : Int32
    # :ditto:
    abstract def host_port? : Int32?
    # :ditto:
    abstract def host_port=(value : Int32)
    # If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Protocol for port. Must be UDP, TCP, or SCTP. Defaults to "TCP".
    #
    # Possible enum values:
    #  - `"SCTP"` is the SCTP protocol.
    #  - `"TCP"` is the TCP protocol.
    #  - `"UDP"` is the UDP protocol.
    abstract def protocol : String?
    # :ditto:
    abstract def protocol! : String
    # :ditto:
    abstract def protocol? : String?
    # :ditto:
    abstract def protocol=(value : String)
  end

  # ContainerPort represents a network port in a single container.
  @[::K8S::Properties(
    container_port: {key: "containerPort", accessor: "container_port", kind: "Int32", nilable: false, default: nil, read_only: false, description: "Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_ip: {key: "hostIP", accessor: "host_ip", kind: "String", nilable: true, default: nil, read_only: false, description: "What host IP to bind the external port to.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_port: {key: "hostPort", accessor: "host_port", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    protocol: {key: "protocol", accessor: "protocol", kind: "String", nilable: true, default: nil, read_only: false, description: "Protocol for port. Must be UDP, TCP, or SCTP. Defaults to \"TCP\".\n\nPossible enum values:\n - `\"SCTP\"` is the SCTP protocol.\n - `\"TCP\"` is the TCP protocol.\n - `\"UDP\"` is the UDP protocol.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ContainerPort < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ContainerPort
    k8s_object_accessor("containerPort", container_port : Int32, false, false, "Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.")
    k8s_object_accessor("hostIP", host_ip : String, true, false, "What host IP to bind the external port to.")
    k8s_object_accessor("hostPort", host_port : Int32, true, false, "Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.")
    k8s_object_accessor("name", name : String, true, false, "If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.")
    k8s_object_accessor("protocol", protocol : String, true, false, "Protocol for port. Must be UDP, TCP, or SCTP. Defaults to \"TCP\".\n\nPossible enum values:\n - `\"SCTP\"` is the SCTP protocol.\n - `\"TCP\"` is the TCP protocol.\n - `\"UDP\"` is the UDP protocol.")

    def initialize(*, container_port : Int32? = nil, host_ip : String? = nil, host_port : Int32? = nil, name : String? = nil, protocol : String? = nil)
      super()
      self.["containerPort"] = container_port
      self.["hostIP"] = host_ip
      self.["hostPort"] = host_port
      self.["name"] = name
      self.["protocol"] = protocol
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "containerPort", accessor: "container_port", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "hostIP", accessor: "host_ip", nilable: true, read_only: false, default: nil, kind: String},
      {key: "hostPort", accessor: "host_port", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "protocol", accessor: "protocol", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
