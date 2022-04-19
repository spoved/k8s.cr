# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./label_selector_requirement"

::K8S::Kubernetes::Resource.define_object("LabelSelector",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "match_expressions", kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement), key: "matchExpressions", nilable: true, read_only: false, description: "matchExpressions is a list of label selector requirements. The requirements are ANDed."},
    {name: "match_labels", kind: ::Hash(String, String), key: "matchLabels", nilable: true, read_only: false, description: "matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."},

  ]
)
