# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("RollbackConfig",
  namespace: "::K8S::Api::Apps::V1beta1",
  properties: [

    {name: "revision", kind: Int32, key: "revision", nilable: true, read_only: false, description: "The revision to rollback to. If set to 0, rollback to the last revision."},

  ]
)
