# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./queuing_configuration"

::K8S::Kubernetes::Resource.define_object("LimitResponse",
  namespace: "::K8S::Api::Flowcontrol::V1beta1",
  properties: [

    {name: "queuing", kind: ::K8S::Api::Flowcontrol::V1beta1::QueuingConfiguration, key: "queuing", nilable: true, read_only: false, description: "`queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `\"Queue\"`."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "`type` is \"Queue\" or \"Reject\". \"Queue\" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. \"Reject\" means that requests that can not be executed upon arrival are rejected. Required."},

  ]
)
