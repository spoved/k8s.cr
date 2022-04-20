# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("EndpointConditions",
  namespace: "::K8S::Api::Discovery::V1beta1",
  properties: [

    {name: "ready", kind: ::Bool, key: "ready", nilable: true, read_only: false, description: "ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready."},

  ]
)
