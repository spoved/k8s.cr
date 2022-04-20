# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ContainerStateWaiting",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "Message regarding why the container is not yet running."},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "(brief) reason the container is not yet running."},

  ]
)
