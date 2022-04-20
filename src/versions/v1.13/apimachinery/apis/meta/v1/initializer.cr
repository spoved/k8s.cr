# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("Initializer",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "name of the process that is responsible for initializing this object."},

  ]
)
