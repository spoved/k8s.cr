# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("LabelSelectorRequirement",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "key", kind: String, key: "key", nilable: false, read_only: false, description: "key is the label key that the selector applies to."},
    {name: "operator", kind: String, key: "operator", nilable: false, read_only: false, description: "operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist."},
    {name: "values", kind: ::Array(String), key: "values", nilable: true, read_only: false, description: "values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."},

  ]
)
