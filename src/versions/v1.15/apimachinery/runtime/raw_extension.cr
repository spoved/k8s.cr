# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("RawExtension",
  namespace: "::K8S::Apimachinery::Runtime",
  properties: [

    {name: "raw", kind: String, key: "Raw", nilable: false, read_only: false, description: "Raw is the underlying serialization of this object."},

  ]
)
