# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../core/v1/typed_local_object_reference"
require "./ingress_service_backend"

::K8S::Kubernetes::Resource.define_object("IngressBackend",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "resource", kind: ::K8S::Api::Core::V1::TypedLocalObjectReference, key: "resource", nilable: true, read_only: false, description: "Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. This is a mutually exclusive setting with \"Service\"."},
    {name: "service", kind: ::K8S::Api::Networking::V1::IngressServiceBackend, key: "service", nilable: true, read_only: false, description: "Service references a Service as a Backend. This is a mutually exclusive setting with \"Resource\"."},

  ]
)
