# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ExternalDocumentation",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1",
  properties: [

    {name: "description", kind: String, key: "description", nilable: true, read_only: false, description: nil},
    {name: "url", kind: String, key: "url", nilable: true, read_only: false, description: nil},

  ]
)
