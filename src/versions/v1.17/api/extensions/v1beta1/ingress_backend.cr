# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("IngressBackend",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "service_name", kind: String, key: "serviceName", nilable: false, read_only: false, description: "Specifies the name of the referenced service."},
    {name: "service_port", kind: Union(::Int32 | ::String), key: "servicePort", nilable: false, read_only: false, description: "Specifies the port of the referenced service."},

  ]
)
