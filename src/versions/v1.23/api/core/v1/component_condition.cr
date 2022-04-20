# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ComponentCondition",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "error", kind: String, key: "error", nilable: true, read_only: false, description: "Condition error code for a component. For example, a health check error code."},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "Message about the condition for a component. For example, information about a health check."},
    {name: "status", kind: String, key: "status", nilable: false, read_only: false, description: "Status of the condition for a component. Valid values for \"Healthy\": \"True\", \"False\", or \"Unknown\"."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "Type of condition for a component. Valid value: \"Healthy\""},

  ]
)
