# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ContainerStateRunning",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "started_at", kind: ::Time, key: "startedAt", nilable: true, read_only: false, description: "Time at which the container was last (re-)started"},

  ]
)
