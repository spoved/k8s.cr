# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Discovery::V1beta1::EndpointPort; end

module K8S
  # Namespace holding the types for `Api::Discovery::V1beta1::EndpointPort`.
  module Types::Api::Discovery::V1beta1::EndpointPort
    # The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and [[http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names. Default is empty string.](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names. Default is empty string.)](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names. Default is empty string.](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names. Default is empty string.))
    abstract def app_protocol : String?
    # :ditto:
    abstract def app_protocol! : String
    # :ditto:
    abstract def app_protocol? : String?
    # :ditto:
    abstract def app_protocol=(value : String)
    # The name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # The port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.
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

  # EndpointPort represents a Port used by an EndpointSlice
  @[::K8S::Properties(
    app_protocol: {key: "appProtocol", accessor: "app_protocol", kind: "String", nilable: true, default: nil, read_only: false, description: "The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and [http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names. Default is empty string.](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names. Default is empty string.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "The name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    port: {key: "port", accessor: "port", kind: "Int32", nilable: true, default: nil, read_only: false, description: "The port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    protocol: {key: "protocol", accessor: "protocol", kind: "String", nilable: true, default: nil, read_only: false, description: "The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Discovery::V1beta1::EndpointPort < ::K8S::GenericObject
    include ::K8S::Types::Api::Discovery::V1beta1::EndpointPort
    k8s_object_accessor("appProtocol", app_protocol : String, true, false, "The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and [http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names. Default is empty string.](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names. Default is empty string.)")
    k8s_object_accessor("name", name : String, true, false, "The name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string.")
    k8s_object_accessor("port", port : Int32, true, false, "The port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.")
    k8s_object_accessor("protocol", protocol : String, true, false, "The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.")

    def initialize(*, app_protocol : String? = nil, name : String? = nil, port : Int32? = nil, protocol : String? = nil)
      super()
      self.["appProtocol"] = app_protocol
      self.["name"] = name
      self.["port"] = port
      self.["protocol"] = protocol
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "appProtocol", accessor: "app_protocol", nilable: true, read_only: false, default: nil, kind: String},
      {key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "port", accessor: "port", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "protocol", accessor: "protocol", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
