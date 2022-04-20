# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("RollingUpdateStatefulSetStrategy",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "partition", kind: Int32, key: "partition", nilable: true, read_only: false, description: "Partition indicates the ordinal at which the StatefulSet should be partitioned. Default value is 0."},

  ]
)
