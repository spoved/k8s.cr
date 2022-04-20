# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("HostPortRange",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "max", kind: Int32, key: "max", nilable: false, read_only: false, description: "max is the end of the range, inclusive."},
    {name: "min", kind: Int32, key: "min", nilable: false, read_only: false, description: "min is the start of the range, inclusive."},

  ]
)
