# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PodDNSConfigOption",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "Required."},
    {name: "value", kind: String, key: "value", nilable: true, read_only: false, description: nil},

  ]
)
