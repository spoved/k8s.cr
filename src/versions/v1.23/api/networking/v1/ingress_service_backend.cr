# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::Api::Networking::V1::IngressServiceBackend; end

require "./service_backend_port"

module K8S
  # Namespace holding the types for `Api::Networking::V1::IngressServiceBackend`.
  #
  # NOTE: Module auto-generated by `AnyHash.define_new`.
  module Types::Api::Networking::V1::IngressServiceBackend
    alias Key = String
    alias ValueType = String | ::K8S::Api::Networking::V1::ServiceBackendPort | Nil
    # alias Value = ValueType | Array(Value) | Set(Value) | Hash(Key, Value)
    alias Instance = ::AnyHash(Key, ValueType)

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
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the referenced service. The service must exist in the same namespace as the Ingress object."},
    port: {key: "port", accessor: "port", kind: "::K8S::Api::Networking::V1::ServiceBackendPort", nilable: true, default: nil, read_only: false, description: "Port of the referenced service. A port name or port number is required for a IngressServiceBackend."},
  )]
  class Api::Networking::V1::IngressServiceBackend < ::K8S::Types::Api::Networking::V1::IngressServiceBackend::Instance
    include ::K8S::Types::Api::Networking::V1::IngressServiceBackend
    include ::K8S::Kubernetes::Object

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
