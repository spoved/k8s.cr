# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./limit_range_item"

::K8S::Kubernetes::Resource.define_object("LimitRangeSpec",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "limits", kind: ::Array(::K8S::Api::Core::V1::LimitRangeItem), key: "limits", nilable: false, read_only: false, description: "Limits is the list of LimitRangeItem objects that are enforced."},

  ]
)
