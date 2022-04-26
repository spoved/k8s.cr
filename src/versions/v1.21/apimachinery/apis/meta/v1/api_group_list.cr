# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./api_group"

::K8S::Kubernetes::Resource.define_resource("", "v1", "APIGroupList",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "groups", kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIGroup), key: "groups", nilable: false, read_only: false, description: "groups is a list of APIGroup."},

  ],
  description: "APIGroupList is a list of APIGroup, to allow clients to discover the API at /apis.",
  versions: [{group: "", kind: "APIGroupList", version: "v1"}],
)
