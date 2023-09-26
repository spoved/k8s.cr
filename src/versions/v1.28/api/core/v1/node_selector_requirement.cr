# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("NodeSelectorRequirement",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "key", kind: String, key: "key", nilable: false, read_only: false, description: "The label key that the selector applies to."},
    {name: "operator", kind: String, key: "operator", nilable: false, read_only: false, description: "Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt."},
    {name: "values", kind: ::Array(String), key: "values", nilable: true, read_only: false, description: "An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."},

  ]
)
