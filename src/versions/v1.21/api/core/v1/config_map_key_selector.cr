# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ConfigMapKeySelector",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "key", kind: String, key: "key", nilable: false, read_only: false, description: "The key to select."},
    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)"},
    {name: "optional", kind: ::Bool, key: "optional", nilable: true, read_only: false, description: "Specify whether the ConfigMap or its key must be defined"},

  ]
)
