# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("HPAScalingPolicy",
  namespace: "::K8S::Api::Autoscaling::V2",
  properties: [

    {name: "period_seconds", kind: Int32, key: "periodSeconds", nilable: false, read_only: false, description: "PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min)."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "Type is used to specify the scaling policy."},
    {name: "value", kind: Int32, key: "value", nilable: false, read_only: false, description: "Value contains the amount of change which is permitted by the policy. It must be greater than zero"},

  ]
)
