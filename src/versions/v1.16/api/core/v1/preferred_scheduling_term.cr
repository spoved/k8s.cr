# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./node_selector_term"

::K8S::Kubernetes::Resource.define_object("PreferredSchedulingTerm",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "preference", kind: ::K8S::Api::Core::V1::NodeSelectorTerm, key: "preference", nilable: false, read_only: false, description: "A node selector term, associated with the corresponding weight."},
    {name: "weight", kind: Int32, key: "weight", nilable: false, read_only: false, description: "Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100."},

  ]
)
