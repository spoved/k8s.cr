# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("FlowDistinguisherMethod",
  namespace: "::K8S::Api::Flowcontrol::V1beta1",
  properties: [

    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "`type` is the type of flow distinguisher method The supported types are \"ByUser\" and \"ByNamespace\". Required."},

  ]
)
