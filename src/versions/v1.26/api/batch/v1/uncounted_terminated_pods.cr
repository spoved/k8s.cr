# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("UncountedTerminatedPods",
  namespace: "::K8S::Api::Batch::V1",
  properties: [

    {name: "failed", kind: ::Set(String), key: "failed", nilable: true, read_only: false, description: "Failed holds UIDs of failed Pods."},
    {name: "succeeded", kind: ::Set(String), key: "succeeded", nilable: true, read_only: false, description: "Succeeded holds UIDs of succeeded Pods."},

  ]
)
