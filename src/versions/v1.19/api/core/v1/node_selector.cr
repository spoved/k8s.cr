# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./node_selector_term"

::K8S::Kubernetes::Resource.define_object("NodeSelector",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "node_selector_terms", kind: ::Array(::K8S::Api::Core::V1::NodeSelectorTerm), key: "nodeSelectorTerms", nilable: false, read_only: false, description: "Required. A list of node selector terms. The terms are ORed."},

  ]
)
