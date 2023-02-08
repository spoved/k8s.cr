# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("SecretReference",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "name is unique within a namespace to reference a secret resource."},
    {name: "namespace", kind: String, key: "namespace", nilable: true, read_only: false, description: "namespace defines the space within which the secret name must be unique."},

  ]
)
