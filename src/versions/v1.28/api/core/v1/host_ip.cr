# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("HostIP",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "ip", kind: String, key: "ip", nilable: true, read_only: false, description: "IP is the IP address assigned to the host"},

  ]
)
