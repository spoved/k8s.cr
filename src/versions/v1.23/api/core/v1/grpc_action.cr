# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::GRPCAction; end

module K8S
  # Namespace holding the types for `Api::Core::V1::GRPCAction`.
  module Types::Api::Core::V1::GRPCAction
    # Port number of the gRPC service. Number must be in the range 1 to 65535.
    abstract def port : Int32
    # :ditto:
    abstract def port! : Int32
    # :ditto:
    abstract def port? : Int32?
    # :ditto:
    abstract def port=(value : Int32)
    # Service is the name of the service to place in the gRPC HealthCheckRequest (see [[https://github.com/grpc/grpc/blob/master/doc/health-checking.md).](https://github.com/grpc/grpc/blob/master/doc/health-checking.md).)](https://github.com/grpc/grpc/blob/master/doc/health-checking.md).](https://github.com/grpc/grpc/blob/master/doc/health-checking.md).))
    #
    # If this is not specified, the default behavior is defined by gRPC.
    abstract def service : String?
    # :ditto:
    abstract def service! : String
    # :ditto:
    abstract def service? : String?
    # :ditto:
    abstract def service=(value : String?)
  end

  #
  @[::K8S::Properties(
    port: {key: "port", accessor: "port", kind: "Int32", nilable: false, default: nil, read_only: false, description: "Port number of the gRPC service. Number must be in the range 1 to 65535.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    service: {key: "service", accessor: "service", kind: "String", nilable: true, default: nil, read_only: false, description: "Service is the name of the service to place in the gRPC HealthCheckRequest (see [https://github.com/grpc/grpc/blob/master/doc/health-checking.md).](https://github.com/grpc/grpc/blob/master/doc/health-checking.md).)\n\nIf this is not specified, the default behavior is defined by gRPC.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::GRPCAction < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::GRPCAction

    # Port number of the gRPC service. Number must be in the range 1 to 65535.
    def port : Int32
      self.["port"].as(Int32)
    end

    # :ditto:
    def port! : Int32
      self.["port"].as(Int32).not_nil!
    end

    # :ditto:
    def port? : Int32?
      self.["port"]?.as(Int32?)
    end

    # :ditto:
    def port=(value : Int32)
      self.["port"] = value
    end

    # Service is the name of the service to place in the gRPC HealthCheckRequest (see [[https://github.com/grpc/grpc/blob/master/doc/health-checking.md).](https://github.com/grpc/grpc/blob/master/doc/health-checking.md).)](https://github.com/grpc/grpc/blob/master/doc/health-checking.md).](https://github.com/grpc/grpc/blob/master/doc/health-checking.md).))
    #
    # If this is not specified, the default behavior is defined by gRPC.
    def service : String?
      self.["service"].as(String?)
    end

    # :ditto:
    def service! : String
      self.["service"].as(String?).not_nil!
    end

    # :ditto:
    def service? : String?
      self.["service"]?.as(String?)
    end

    # :ditto:
    def service=(value : String?)
      self.["service"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "port", accessor: "port", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "service", accessor: "service", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
