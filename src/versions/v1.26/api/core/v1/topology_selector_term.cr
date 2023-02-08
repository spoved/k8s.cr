# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./topology_selector_label_requirement"

::K8S::Kubernetes::Resource.define_object("TopologySelectorTerm",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "match_label_expressions", kind: ::Array(::K8S::Api::Core::V1::TopologySelectorLabelRequirement), key: "matchLabelExpressions", nilable: true, read_only: false, description: "A list of topology selector requirements by labels."},

  ]
)
