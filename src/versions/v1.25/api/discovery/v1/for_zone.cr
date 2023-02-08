# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ForZone",
  namespace: "::K8S::Api::Discovery::V1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "name represents the name of the zone."},

  ]
)
