# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./node_selector_requirement"

::K8S::Kubernetes::Resource.define_object("NodeSelectorTerm",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "match_expressions", kind: ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement), key: "matchExpressions", nilable: true, read_only: false, description: "A list of node selector requirements by node's labels."},
    {name: "match_fields", kind: ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement), key: "matchFields", nilable: true, read_only: false, description: "A list of node selector requirements by node's fields."},

  ]
)
