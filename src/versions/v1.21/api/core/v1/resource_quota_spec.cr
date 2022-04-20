# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./scope_selector"

::K8S::Kubernetes::Resource.define_object("ResourceQuotaSpec",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "hard", kind: Union(::Hash(String, ::Int32 | ::String)), key: "hard", nilable: true, read_only: false, description: "hard is the set of desired hard limits for each named resource. More info: [https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/)"},
    {name: "scope_selector", kind: ::K8S::Api::Core::V1::ScopeSelector, key: "scopeSelector", nilable: true, read_only: false, description: "scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched."},
    {name: "scopes", kind: ::Array(String), key: "scopes", nilable: true, read_only: false, description: "A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects."},

  ]
)
