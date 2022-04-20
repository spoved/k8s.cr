# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./rolling_update_deployment"

::K8S::Kubernetes::Resource.define_object("DeploymentStrategy",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "rolling_update", kind: ::K8S::Api::Apps::V1::RollingUpdateDeployment, key: "rollingUpdate", nilable: true, read_only: false, description: "Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate."},
    {name: "type", kind: String, key: "type", nilable: true, read_only: false, description: "Type of deployment. Can be \"Recreate\" or \"RollingUpdate\". Default is RollingUpdate.\n\nPossible enum values:\n - `\"Recreate\"` Kill all existing pods before creating new ones.\n - `\"RollingUpdate\"` Replace the old ReplicaSets by new one using rolling update i.e gradually scale down the old ReplicaSets and scale up the new one."},

  ]
)
