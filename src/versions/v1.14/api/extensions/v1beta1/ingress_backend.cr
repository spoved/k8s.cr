# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Extensions::V1beta1::IngressBackend; end

module K8S
  # Namespace holding the types for `Api::Extensions::V1beta1::IngressBackend`.
  module Types::Api::Extensions::V1beta1::IngressBackend
    # Specifies the name of the referenced service.
    abstract def service_name : String?
    # :ditto:
    abstract def service_name! : String
    # :ditto:
    abstract def service_name? : String?
    # :ditto:
    abstract def service_name=(value : String)
    # Specifies the port of the referenced service.
    abstract def service_port : ::Int32 | ::String?
    # :ditto:
    abstract def service_port! : ::Int32 | ::String
    # :ditto:
    abstract def service_port? : ::Int32 | ::String?
    # :ditto:
    abstract def service_port=(value : ::Int32 | ::String)
  end

  # IngressBackend describes all endpoints for a given service and port.
  @[::K8S::Properties(
    service_name: {key: "serviceName", accessor: "service_name", kind: "String", nilable: false, default: nil, read_only: false, description: "Specifies the name of the referenced service.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    service_port: {key: "servicePort", accessor: "service_port", kind: "::Int32 | ::String", nilable: false, default: nil, read_only: false, description: "Specifies the port of the referenced service.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Extensions::V1beta1::IngressBackend < ::K8S::GenericObject
    include ::K8S::Types::Api::Extensions::V1beta1::IngressBackend
    k8s_object_accessor("serviceName", service_name : String, false, false, "Specifies the name of the referenced service.")
    k8s_object_accessor("servicePort", service_port : ::Int32 | ::String, false, false, "Specifies the port of the referenced service.")

    def initialize(*, service_name : String? = nil, service_port : ::Int32 | ::String? = nil)
      super()
      self.["serviceName"] = service_name
      self.["servicePort"] = service_port
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "serviceName", accessor: "service_name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "servicePort", accessor: "service_port", nilable: false, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
    ])
  end
end
