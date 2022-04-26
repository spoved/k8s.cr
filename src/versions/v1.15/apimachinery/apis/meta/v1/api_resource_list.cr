# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./api_resource"

::K8S::Kubernetes::Resource.define_resource("", "v1", "APIResourceList",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "group_version", kind: String, key: "groupVersion", nilable: false, read_only: false, description: "groupVersion is the group and version this APIResourceList is for."},
    {name: "resources", kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIResource), key: "resources", nilable: false, read_only: false, description: "resources contains the name of the resources and if they are namespaced."},

  ],
  description: "APIResourceList is a list of APIResource, it is used to expose the name of the resources supported in a specific group and version, and if the resource is namespaced.",
  versions: [{group: "", kind: "APIResourceList", version: "v1"}],
)
