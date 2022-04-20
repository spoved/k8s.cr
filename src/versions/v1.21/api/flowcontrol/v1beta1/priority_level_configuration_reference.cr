# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PriorityLevelConfigurationReference",
  namespace: "::K8S::Api::Flowcontrol::V1beta1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "`name` is the name of the priority level configuration being referenced Required."},

  ]
)
