# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("GRPCAction",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "port", kind: Int32, key: "port", nilable: false, read_only: false, description: "Port number of the gRPC service. Number must be in the range 1 to 65535."},
    {name: "service", kind: String, key: "service", nilable: true, read_only: false, description: "Service is the name of the service to place in the gRPC HealthCheckRequest (see [https://github.com/grpc/grpc/blob/master/doc/health-checking.md).](https://github.com/grpc/grpc/blob/master/doc/health-checking.md).)\n\nIf this is not specified, the default behavior is defined by gRPC."},

  ]
)
