# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ScaleSpec",
  namespace: "::K8S::Api::Autoscaling::V1",
  properties: [

    {name: "replicas", kind: Int32, key: "replicas", nilable: true, read_only: false, description: "replicas is the desired number of instances for the scaled object."},

  ]
)
