# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  @[::K8S::Properties(
    port: {type: Int32, nilable: false, key: "port", getter: false, setter: false},
    service: {type: String, nilable: true, key: "service", getter: false, setter: false},
  )]
  class Api::Core::V1::GRPCAction
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Port number of the gRPC service. Number must be in the range 1 to 65535.
    @[::JSON::Field(key: "port", emit_null: true)]
    @[::YAML::Field(key: "port", emit_null: true)]
    property port : Int32

    # Service is the name of the service to place in the gRPC HealthCheckRequest (see [https://github.com/grpc/grpc/blob/master/doc/health-checking.md).](https://github.com/grpc/grpc/blob/master/doc/health-checking.md).)
    #
    # If this is not specified, the default behavior is defined by gRPC.
    @[::JSON::Field(key: "service", emit_null: false)]
    @[::YAML::Field(key: "service", emit_null: false)]
    property service : String | Nil

    def initialize(*, @port : Int32, @service : String | Nil = nil)
    end
  end
end
