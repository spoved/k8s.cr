# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ServiceReference",
  namespace: "::K8S::Api::Admissionregistration::V1beta1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "`name` is the name of the service. Required"},
    {name: "namespace", kind: String, key: "namespace", nilable: false, read_only: false, description: "`namespace` is the namespace of the service. Required"},
    {name: "path", kind: String, key: "path", nilable: true, read_only: false, description: "`path` is an optional URL path which will be sent in any request to this service."},

  ]
)
