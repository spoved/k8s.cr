# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("HostAlias",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "hostnames", kind: ::Array(String), key: "hostnames", nilable: true, read_only: false, description: "Hostnames for the above IP address."},
    {name: "ip", kind: String, key: "ip", nilable: true, read_only: false, description: "IP address of the host file entry."},

  ]
)
