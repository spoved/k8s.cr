# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ContainerStateTerminated",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "container_id", kind: String, key: "containerID", nilable: true, read_only: false, description: "Container's ID in the format 'docker://<container_id>'"},
    {name: "exit_code", kind: Int32, key: "exitCode", nilable: false, read_only: false, description: "Exit status from the last termination of the container"},
    {name: "finished_at", kind: ::Time, key: "finishedAt", nilable: true, read_only: false, description: "Time at which the container last terminated"},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "Message regarding the last termination of the container"},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "(brief) reason from the last termination of the container"},
    {name: "signal", kind: Int32, key: "signal", nilable: true, read_only: false, description: "Signal from the last termination of the container"},
    {name: "started_at", kind: ::Time, key: "startedAt", nilable: true, read_only: false, description: "Time at which previous execution of the container started"},

  ]
)
