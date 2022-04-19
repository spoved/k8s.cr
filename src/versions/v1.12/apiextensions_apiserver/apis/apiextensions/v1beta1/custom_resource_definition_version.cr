# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("CustomResourceDefinitionVersion",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is the version name, e.g. “v1”, “v2beta1”, etc."},
    {name: "served", kind: ::Bool, key: "served", nilable: false, read_only: false, description: "Served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)"},
    {name: "storage", kind: ::Bool, key: "storage", nilable: false, read_only: false, description: "Storage flags the version as storage version. There must be exactly one flagged as storage version."},

  ]
)
