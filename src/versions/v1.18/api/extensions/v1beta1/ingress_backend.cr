# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../core/v1/typed_local_object_reference"

::K8S::Kubernetes::Resource.define_object("IngressBackend",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "resource", kind: ::K8S::Api::Core::V1::TypedLocalObjectReference, key: "resource", nilable: true, read_only: false, description: "Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified."},
    {name: "service_name", kind: String, key: "serviceName", nilable: true, read_only: false, description: "Specifies the name of the referenced service."},
    {name: "service_port", kind: Union(::Int32 | ::String), key: "servicePort", nilable: true, read_only: false, description: "Specifies the port of the referenced service."},

  ]
)
