# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./service_backend_port"

::K8S::Kubernetes::Resource.define_object("IngressServiceBackend",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is the referenced service. The service must exist in the same namespace as the Ingress object."},
    {name: "port", kind: ::K8S::Api::Networking::V1::ServiceBackendPort, key: "port", nilable: true, read_only: false, description: "Port of the referenced service. A port name or port number is required for a IngressServiceBackend."},

  ]
)
