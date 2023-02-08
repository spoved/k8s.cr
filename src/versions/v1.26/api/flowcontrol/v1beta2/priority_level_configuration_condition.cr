# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PriorityLevelConfigurationCondition",
  namespace: "::K8S::Api::Flowcontrol::V1beta2",
  properties: [

    {name: "last_transition_time", kind: ::Time, key: "lastTransitionTime", nilable: true, read_only: false, description: "`lastTransitionTime` is the last time the condition transitioned from one status to another."},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "`message` is a human-readable message indicating details about last transition."},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "`reason` is a unique, one-word, CamelCase reason for the condition's last transition."},
    {name: "status", kind: String, key: "status", nilable: true, read_only: false, description: "`status` is the status of the condition. Can be True, False, Unknown. Required."},
    {name: "type", kind: String, key: "type", nilable: true, read_only: false, description: "`type` is the type of the condition. Required."},

  ]
)
