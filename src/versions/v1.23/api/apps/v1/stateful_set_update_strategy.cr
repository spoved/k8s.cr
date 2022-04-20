# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./rolling_update_stateful_set_strategy"

::K8S::Kubernetes::Resource.define_object("StatefulSetUpdateStrategy",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "rolling_update", kind: ::K8S::Api::Apps::V1::RollingUpdateStatefulSetStrategy, key: "rollingUpdate", nilable: true, read_only: false, description: "RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType."},
    {name: "type", kind: String, key: "type", nilable: true, read_only: false, description: "Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.\n\nPossible enum values:\n - `\"OnDelete\"` triggers the legacy behavior. Version tracking and ordered rolling restarts are disabled. Pods are recreated from the StatefulSetSpec when they are manually deleted. When a scale operation is performed with this strategy,specification version indicated by the StatefulSet's currentRevision.\n - `\"RollingUpdate\"` indicates that update will be applied to all Pods in the StatefulSet with respect to the StatefulSet ordering constraints. When a scale operation is performed with this strategy, new Pods will be created from the specification version indicated by the StatefulSet's updateRevision."},

  ]
)
