# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./http_header"

::K8S::Kubernetes::Resource.define_object("HTTPGetAction",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "host", kind: String, key: "host", nilable: true, read_only: false, description: "Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."},
    {name: "http_headers", kind: ::Array(::K8S::Api::Core::V1::HTTPHeader), key: "httpHeaders", nilable: true, read_only: false, description: "Custom headers to set in the request. HTTP allows repeated headers."},
    {name: "path", kind: String, key: "path", nilable: true, read_only: false, description: "Path to access on the HTTP server."},
    {name: "port", kind: Union(::Int32 | ::String), key: "port", nilable: false, read_only: false, description: "Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."},
    {name: "scheme", kind: String, key: "scheme", nilable: true, read_only: false, description: "Scheme to use for connecting to the host. Defaults to HTTP."},

  ]
)
