# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("CustomResourceDefinitionCondition",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1",
  properties: [

    {name: "last_transition_time", kind: ::Time, key: "lastTransitionTime", nilable: true, read_only: false, description: "Last time the condition transitioned from one status to another."},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "Human-readable message indicating details about last transition."},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "Unique, one-word, CamelCase reason for the condition's last transition."},
    {name: "status", kind: String, key: "status", nilable: false, read_only: false, description: "Status is the status of the condition. Can be True, False, Unknown."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "Type is the type of the condition."},

  ]
)
