# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("NodeCondition",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "last_heartbeat_time", kind: ::Time, key: "lastHeartbeatTime", nilable: true, read_only: false, description: "Last time we got an update on a given condition."},
    {name: "last_transition_time", kind: ::Time, key: "lastTransitionTime", nilable: true, read_only: false, description: "Last time the condition transit from one status to another."},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "Human readable message indicating details about last transition."},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "(brief) reason for the condition's last transition."},
    {name: "status", kind: String, key: "status", nilable: false, read_only: false, description: "Status of the condition, one of True, False, Unknown."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "Type of node condition."},

  ]
)
