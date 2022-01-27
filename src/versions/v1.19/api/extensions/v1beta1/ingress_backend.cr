# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Extensions::V1beta1::IngressBackend; end

require "../../core/v1/typed_local_object_reference"

module K8S
  # Namespace holding the types for `Api::Extensions::V1beta1::IngressBackend`.
  module Types::Api::Extensions::V1beta1::IngressBackend
    # Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified.
    abstract def resource : ::K8S::Api::Core::V1::TypedLocalObjectReference?
    # :ditto:
    abstract def resource! : ::K8S::Api::Core::V1::TypedLocalObjectReference
    # :ditto:
    abstract def resource? : ::K8S::Api::Core::V1::TypedLocalObjectReference?
    # :ditto:
    abstract def resource=(value : ::K8S::Api::Core::V1::TypedLocalObjectReference)
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
    resource: {key: "resource", accessor: "resource", kind: "::K8S::Api::Core::V1::TypedLocalObjectReference", nilable: true, default: nil, read_only: false, description: "Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    service_name: {key: "serviceName", accessor: "service_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Specifies the name of the referenced service.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    service_port: {key: "servicePort", accessor: "service_port", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "Specifies the port of the referenced service.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Extensions::V1beta1::IngressBackend < ::K8S::GenericObject
    include ::K8S::Types::Api::Extensions::V1beta1::IngressBackend
    k8s_object_accessor("resource", resource : ::K8S::Api::Core::V1::TypedLocalObjectReference, true, false, "Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified.")
    k8s_object_accessor("serviceName", service_name : String, true, false, "Specifies the name of the referenced service.")
    k8s_object_accessor("servicePort", service_port : ::Int32 | ::String, true, false, "Specifies the port of the referenced service.")

    def initialize(*, resource : ::K8S::Api::Core::V1::TypedLocalObjectReference? = nil, service_name : String? = nil, service_port : ::Int32 | ::String? = nil)
      super()
      self.["resource"] = resource
      self.["serviceName"] = service_name
      self.["servicePort"] = service_port
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "resource", accessor: "resource", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::TypedLocalObjectReference},
      {key: "serviceName", accessor: "service_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "servicePort", accessor: "service_port", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
    ])
  end
end
