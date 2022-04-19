# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ReplicaSetCondition",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "last_transition_time", kind: ::Time, key: "lastTransitionTime", nilable: true, read_only: false, description: "The last time the condition transitioned from one status to another."},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "A human readable message indicating details about the transition."},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "The reason for the condition's last transition."},
    {name: "status", kind: String, key: "status", nilable: false, read_only: false, description: "Status of the condition, one of True, False, Unknown."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "Type of replica set condition."},

  ]
)
