# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("EndpointConditions",
  namespace: "::K8S::Api::Discovery::V1",
  properties: [

    {name: "ready", kind: ::Bool, key: "ready", nilable: true, read_only: false, description: "ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready. For compatibility reasons, ready should never be \"true\" for terminating endpoints."},
    {name: "serving", kind: ::Bool, key: "serving", nilable: true, read_only: false, description: "serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition."},
    {name: "terminating", kind: ::Bool, key: "terminating", nilable: true, read_only: false, description: "terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating."},

  ]
)
