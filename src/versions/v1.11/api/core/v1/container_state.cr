# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./container_state_running"
require "./container_state_terminated"
require "./container_state_waiting"

::K8S::Kubernetes::Resource.define_object("ContainerState",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "running", kind: ::K8S::Api::Core::V1::ContainerStateRunning, key: "running", nilable: true, read_only: false, description: "Details about a running container"},
    {name: "terminated", kind: ::K8S::Api::Core::V1::ContainerStateTerminated, key: "terminated", nilable: true, read_only: false, description: "Details about a terminated container"},
    {name: "waiting", kind: ::K8S::Api::Core::V1::ContainerStateWaiting, key: "waiting", nilable: true, read_only: false, description: "Details about a waiting container"},

  ]
)
