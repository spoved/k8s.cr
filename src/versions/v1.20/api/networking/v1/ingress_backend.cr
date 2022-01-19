# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::IngressBackend; end

require "../../core/v1/typed_local_object_reference"
require "./ingress_service_backend"

module K8S
  # Namespace holding the types for `Api::Networking::V1::IngressBackend`.
  module Types::Api::Networking::V1::IngressBackend
    alias ValueType = ::K8S::Api::Core::V1::TypedLocalObjectReference | ::K8S::Api::Networking::V1::IngressServiceBackend | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. This is a mutually exclusive setting with "Service".
    abstract def resource : ::K8S::Api::Core::V1::TypedLocalObjectReference?
    # :ditto:
    abstract def resource! : ::K8S::Api::Core::V1::TypedLocalObjectReference
    # :ditto:
    abstract def resource? : ::K8S::Api::Core::V1::TypedLocalObjectReference?
    # :ditto:
    abstract def resource=(value : ::K8S::Api::Core::V1::TypedLocalObjectReference?)
    # Service references a Service as a Backend. This is a mutually exclusive setting with "Resource".
    abstract def service : ::K8S::Api::Networking::V1::IngressServiceBackend?
    # :ditto:
    abstract def service! : ::K8S::Api::Networking::V1::IngressServiceBackend
    # :ditto:
    abstract def service? : ::K8S::Api::Networking::V1::IngressServiceBackend?
    # :ditto:
    abstract def service=(value : ::K8S::Api::Networking::V1::IngressServiceBackend?)
  end

  # IngressBackend describes all endpoints for a given service and port.
  @[::K8S::Properties(
    resource: {key: "resource", accessor: "resource", kind: "::K8S::Api::Core::V1::TypedLocalObjectReference", nilable: true, default: nil, read_only: false, description: "Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. This is a mutually exclusive setting with \"Service\"."},
    service: {key: "service", accessor: "service", kind: "::K8S::Api::Networking::V1::IngressServiceBackend", nilable: true, default: nil, read_only: false, description: "Service references a Service as a Backend. This is a mutually exclusive setting with \"Resource\"."},
  )]
  class Api::Networking::V1::IngressBackend < ::K8S::Types::Api::Networking::V1::IngressBackend::Instance
    include ::K8S::Types::Api::Networking::V1::IngressBackend
    include ::K8S::Kubernetes::Object

    # Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. This is a mutually exclusive setting with "Service".
    def resource : ::K8S::Api::Core::V1::TypedLocalObjectReference?
      self.["resource"].as(::K8S::Api::Core::V1::TypedLocalObjectReference?)
    end

    # :ditto:
    def resource! : ::K8S::Api::Core::V1::TypedLocalObjectReference
      self.["resource"].as(::K8S::Api::Core::V1::TypedLocalObjectReference?).not_nil!
    end

    # :ditto:
    def resource? : ::K8S::Api::Core::V1::TypedLocalObjectReference?
      self.["resource"]?.as(::K8S::Api::Core::V1::TypedLocalObjectReference?)
    end

    # :ditto:
    def resource=(value : ::K8S::Api::Core::V1::TypedLocalObjectReference?)
      self.["resource"] = value
    end

    # Service references a Service as a Backend. This is a mutually exclusive setting with "Resource".
    def service : ::K8S::Api::Networking::V1::IngressServiceBackend?
      self.["service"].as(::K8S::Api::Networking::V1::IngressServiceBackend?)
    end

    # :ditto:
    def service! : ::K8S::Api::Networking::V1::IngressServiceBackend
      self.["service"].as(::K8S::Api::Networking::V1::IngressServiceBackend?).not_nil!
    end

    # :ditto:
    def service? : ::K8S::Api::Networking::V1::IngressServiceBackend?
      self.["service"]?.as(::K8S::Api::Networking::V1::IngressServiceBackend?)
    end

    # :ditto:
    def service=(value : ::K8S::Api::Networking::V1::IngressServiceBackend?)
      self.["service"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "resource", accessor: "resource", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::TypedLocalObjectReference },
        { key: "service", accessor: "service", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Networking::V1::IngressServiceBackend },
      ])
end
  end
end
