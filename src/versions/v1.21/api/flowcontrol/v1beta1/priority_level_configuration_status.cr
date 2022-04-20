# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./priority_level_configuration_condition"

::K8S::Kubernetes::Resource.define_object("PriorityLevelConfigurationStatus",
  namespace: "::K8S::Api::Flowcontrol::V1beta1",
  properties: [

    {name: "conditions", kind: ::Array(::K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition), key: "conditions", nilable: true, read_only: false, description: "`conditions` is the current state of \"request-priority\"."},

  ]
)
