# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./exempt_priority_level_configuration"
require "./limited_priority_level_configuration"

::K8S::Kubernetes::Resource.define_object("PriorityLevelConfigurationSpec",
  namespace: "::K8S::Api::Flowcontrol::V1beta2",
  properties: [

    {name: "exempt", kind: ::K8S::Api::Flowcontrol::V1beta2::ExemptPriorityLevelConfiguration, key: "exempt", nilable: true, read_only: false, description: "`exempt` specifies how requests are handled for an exempt priority level. This field MUST be empty if `type` is `\"Limited\"`. This field MAY be non-empty if `type` is `\"Exempt\"`. If empty and `type` is `\"Exempt\"` then the default values for `ExemptPriorityLevelConfiguration` apply."},
    {name: "limited", kind: ::K8S::Api::Flowcontrol::V1beta2::LimitedPriorityLevelConfiguration, key: "limited", nilable: true, read_only: false, description: "`limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `\"Limited\"`."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "`type` indicates whether this priority level is subject to limitation on request execution.  A value of `\"Exempt\"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `\"Limited\"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required."},

  ]
)
