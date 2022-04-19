# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./flow_schema_condition"

::K8S::Kubernetes::Resource.define_object("FlowSchemaStatus",
  namespace: "::K8S::Api::Flowcontrol::V1alpha1",
  properties: [

    {name: "conditions", kind: ::Array(::K8S::Api::Flowcontrol::V1alpha1::FlowSchemaCondition), key: "conditions", nilable: true, read_only: false, description: "`conditions` is a list of the current states of FlowSchema."},

  ]
)
