# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("EventSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "component", kind: String, key: "component", nilable: true, read_only: false, description: "Component from which the event is generated."},
    {name: "host", kind: String, key: "host", nilable: true, read_only: false, description: "Node name on which the event is generated."},

  ]
)
