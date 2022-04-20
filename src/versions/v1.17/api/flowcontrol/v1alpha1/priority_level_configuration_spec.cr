# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./limited_priority_level_configuration"

::K8S::Kubernetes::Resource.define_object("PriorityLevelConfigurationSpec",
  namespace: "::K8S::Api::Flowcontrol::V1alpha1",
  properties: [

    {name: "limited", kind: ::K8S::Api::Flowcontrol::V1alpha1::LimitedPriorityLevelConfiguration, key: "limited", nilable: true, read_only: false, description: "`limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `\"Limited\"`."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "`type` indicates whether this priority level is subject to limitation on request execution.  A value of `\"Exempt\"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `\"Limited\"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required."},

  ]
)
