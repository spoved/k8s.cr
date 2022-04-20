# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./hpa_scaling_policy"

::K8S::Kubernetes::Resource.define_object("HPAScalingRules",
  namespace: "::K8S::Api::Autoscaling::V2beta2",
  properties: [

    {name: "policies", kind: ::Array(::K8S::Api::Autoscaling::V2beta2::HPAScalingPolicy), key: "policies", nilable: true, read_only: false, description: "policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid"},
    {name: "select_policy", kind: String, key: "selectPolicy", nilable: true, read_only: false, description: "selectPolicy is used to specify which policy should be used. If not set, the default value MaxPolicySelect is used."},
    {name: "stabilization_window_seconds", kind: Int32, key: "stabilizationWindowSeconds", nilable: true, read_only: false, description: "StabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long)."},

  ]
)
