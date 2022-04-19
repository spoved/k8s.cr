# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ServiceReference",
  namespace: "::K8S::Api::Admissionregistration::V1beta1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "`name` is the name of the service. Required"},
    {name: "namespace", kind: String, key: "namespace", nilable: false, read_only: false, description: "`namespace` is the namespace of the service. Required"},
    {name: "path", kind: String, key: "path", nilable: true, read_only: false, description: "`path` is an optional URL path which will be sent in any request to this service."},
    {name: "port", kind: Int32, key: "port", nilable: true, read_only: false, description: "If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive)."},

  ]
)
