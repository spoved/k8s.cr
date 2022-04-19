# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("Preconditions",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "resource_version", kind: String, key: "resourceVersion", nilable: true, read_only: false, description: "Specifies the target ResourceVersion"},
    {name: "uid", kind: String, key: "uid", nilable: true, read_only: false, description: "Specifies the target UID."},

  ]
)
