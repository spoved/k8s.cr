# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./rolling_update_stateful_set_strategy"

::K8S::Kubernetes::Resource.define_object("StatefulSetUpdateStrategy",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "rolling_update", kind: ::K8S::Api::Apps::V1::RollingUpdateStatefulSetStrategy, key: "rollingUpdate", nilable: true, read_only: false, description: "RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType."},
    {name: "type", kind: String, key: "type", nilable: true, read_only: false, description: "Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate."},

  ]
)
