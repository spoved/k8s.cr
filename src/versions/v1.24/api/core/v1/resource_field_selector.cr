# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ResourceFieldSelector",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "container_name", kind: String, key: "containerName", nilable: true, read_only: false, description: "Container name: required for volumes, optional for env vars"},
    {name: "divisor", kind: Union(::Int32 | ::String), key: "divisor", nilable: true, read_only: false, description: "Specifies the output format of the exposed resources, defaults to \"1\""},
    {name: "resource", kind: String, key: "resource", nilable: false, read_only: false, description: "Required: resource to select"},

  ]
)
