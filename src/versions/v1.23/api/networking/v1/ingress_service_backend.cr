# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::IngressServiceBackend; end

require "./service_backend_port"

module K8S
  # Namespace holding the types for `Api::Networking::V1::IngressServiceBackend`.
  module Types::Api::Networking::V1::IngressServiceBackend
    # Name is the referenced service. The service must exist in the same namespace as the Ingress object.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Port of the referenced service. A port name or port number is required for a IngressServiceBackend.
    abstract def port : ::K8S::Api::Networking::V1::ServiceBackendPort?
    # :ditto:
    abstract def port! : ::K8S::Api::Networking::V1::ServiceBackendPort
    # :ditto:
    abstract def port? : ::K8S::Api::Networking::V1::ServiceBackendPort?
    # :ditto:
    abstract def port=(value : ::K8S::Api::Networking::V1::ServiceBackendPort?)
  end

  # IngressServiceBackend references a Kubernetes Service as a Backend.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the referenced service. The service must exist in the same namespace as the Ingress object.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    port: {key: "port", accessor: "port", kind: "::K8S::Api::Networking::V1::ServiceBackendPort", nilable: true, default: nil, read_only: false, description: "Port of the referenced service. A port name or port number is required for a IngressServiceBackend.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Networking::V1::IngressServiceBackend < ::K8S::GenericObject
    include ::K8S::Types::Api::Networking::V1::IngressServiceBackend

    # Name is the referenced service. The service must exist in the same namespace as the Ingress object.
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    # Port of the referenced service. A port name or port number is required for a IngressServiceBackend.
    def port : ::K8S::Api::Networking::V1::ServiceBackendPort?
      self.["port"].as(::K8S::Api::Networking::V1::ServiceBackendPort?)
    end

    # :ditto:
    def port! : ::K8S::Api::Networking::V1::ServiceBackendPort
      self.["port"].as(::K8S::Api::Networking::V1::ServiceBackendPort?).not_nil!
    end

    # :ditto:
    def port? : ::K8S::Api::Networking::V1::ServiceBackendPort?
      self.["port"]?.as(::K8S::Api::Networking::V1::ServiceBackendPort?)
    end

    # :ditto:
    def port=(value : ::K8S::Api::Networking::V1::ServiceBackendPort?)
      self.["port"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "port", accessor: "port", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Networking::V1::ServiceBackendPort },
      ])
end
  end
end
