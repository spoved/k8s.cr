# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./scoped_resource_selector_requirement"

::K8S::Kubernetes::Resource.define_object("ScopeSelector",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "match_expressions", kind: ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement), key: "matchExpressions", nilable: true, read_only: false, description: "A list of scope selector requirements by scope of the resources."},

  ]
)
