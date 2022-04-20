# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("AllowedCSIDriver",
  namespace: "::K8S::Api::Policy::V1beta1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is the registered name of the CSI driver"},

  ]
)
