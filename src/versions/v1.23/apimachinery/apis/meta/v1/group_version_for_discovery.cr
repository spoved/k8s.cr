# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("GroupVersionForDiscovery",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "group_version", kind: String, key: "groupVersion", nilable: false, read_only: false, description: "groupVersion specifies the API group and version in the form [\"group/version\"](\"group/version\")"},
    {name: "version", kind: String, key: "version", nilable: false, read_only: false, description: "version specifies the version in the form of \"version\". This is to save the clients the trouble of splitting the GroupVersion."},

  ]
)
