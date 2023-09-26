# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("HorizontalPodAutoscalerCondition",
  namespace: "::K8S::Api::Autoscaling::V2",
  properties: [

    {name: "last_transition_time", kind: ::Time, key: "lastTransitionTime", nilable: true, read_only: false, description: "lastTransitionTime is the last time the condition transitioned from one status to another"},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "message is a human-readable explanation containing details about the transition"},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "reason is the reason for the condition's last transition."},
    {name: "status", kind: String, key: "status", nilable: false, read_only: false, description: "status is the status of the condition (True, False, Unknown)"},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "type describes the current condition"},

  ]
)
