# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("TCPSocketAction",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "host", kind: String, key: "host", nilable: true, read_only: false, description: "Optional: Host name to connect to, defaults to the pod IP."},
    {name: "port", kind: Union(::Int32 | ::String), key: "port", nilable: false, read_only: false, description: "Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."},

  ]
)
