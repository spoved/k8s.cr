# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("NonResourceAttributes",
  namespace: "::K8S::Api::Authorization::V1",
  properties: [

    {name: "path", kind: String, key: "path", nilable: true, read_only: false, description: "Path is the URL path of the request"},
    {name: "verb", kind: String, key: "verb", nilable: true, read_only: false, description: "Verb is the standard HTTP verb"},

  ]
)
