# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("LimitRangeItem",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "default", kind: Union(::Hash(String, ::Int32 | ::String)), key: "default", nilable: true, read_only: false, description: "Default resource requirement limit value by resource name if resource limit is omitted."},
    {name: "default_request", kind: Union(::Hash(String, ::Int32 | ::String)), key: "defaultRequest", nilable: true, read_only: false, description: "DefaultRequest is the default resource requirement request value by resource name if resource request is omitted."},
    {name: "max", kind: Union(::Hash(String, ::Int32 | ::String)), key: "max", nilable: true, read_only: false, description: "Max usage constraints on this kind by resource name."},
    {name: "max_limit_request_ratio", kind: Union(::Hash(String, ::Int32 | ::String)), key: "maxLimitRequestRatio", nilable: true, read_only: false, description: "MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource."},
    {name: "min", kind: Union(::Hash(String, ::Int32 | ::String)), key: "min", nilable: true, read_only: false, description: "Min usage constraints on this kind by resource name."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "Type of resource that this limit applies to.\n\nPossible enum values:\n - `\"Container\"` Limit that applies to all containers in a namespace\n - `\"PersistentVolumeClaim\"` Limit that applies to all persistent volume claims in a namespace\n - `\"Pod\"` Limit that applies to all pods in a namespace"},

  ]
)
