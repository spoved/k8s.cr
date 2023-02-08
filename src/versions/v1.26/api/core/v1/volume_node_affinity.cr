# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./node_selector"

::K8S::Kubernetes::Resource.define_object("VolumeNodeAffinity",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "required", kind: ::K8S::Api::Core::V1::NodeSelector, key: "required", nilable: true, read_only: false, description: "required specifies hard node constraints that must be met."},

  ]
)
