# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("TopologySelectorLabelRequirement",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "key", kind: String, key: "key", nilable: false, read_only: false, description: "The label key that the selector applies to."},
    {name: "values", kind: ::Array(String), key: "values", nilable: false, read_only: false, description: "An array of string values. One value must match the label to be selected. Each entry in Values is ORed."},

  ]
)
