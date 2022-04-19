# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("JobCondition",
  namespace: "::K8S::Api::Batch::V1",
  properties: [

    {name: "last_probe_time", kind: ::Time, key: "lastProbeTime", nilable: true, read_only: false, description: "Last time the condition was checked."},
    {name: "last_transition_time", kind: ::Time, key: "lastTransitionTime", nilable: true, read_only: false, description: "Last time the condition transit from one status to another."},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "Human readable message indicating details about last transition."},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "(brief) reason for the condition's last transition."},
    {name: "status", kind: String, key: "status", nilable: false, read_only: false, description: "Status of the condition, one of True, False, Unknown."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "Type of job condition, Complete or Failed.\n\nPossible enum values:\n - `\"Complete\"` means the job has completed its execution.\n - `\"Failed\"` means the job has failed its execution.\n - `\"Suspended\"` means the job has been suspended."},

  ]
)
