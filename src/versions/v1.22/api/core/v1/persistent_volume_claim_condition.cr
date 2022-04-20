# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PersistentVolumeClaimCondition",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "last_probe_time", kind: ::Time, key: "lastProbeTime", nilable: true, read_only: false, description: "Last time we probed the condition."},
    {name: "last_transition_time", kind: ::Time, key: "lastTransitionTime", nilable: true, read_only: false, description: "Last time the condition transitioned from one status to another."},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "Human-readable message indicating details about last transition."},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "Unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports \"ResizeStarted\" that means the underlying persistent volume is being resized."},
    {name: "status", kind: String, key: "status", nilable: false, read_only: false, description: nil},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: nil},

  ]
)
