# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("NamespaceCondition",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "last_transition_time", kind: ::Time, key: "lastTransitionTime", nilable: true, read_only: false, description: nil},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: nil},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: nil},
    {name: "status", kind: String, key: "status", nilable: false, read_only: false, description: "Status of the condition, one of True, False, Unknown."},
    {name: "type", kind: String, key: "type", nilable: false, read_only: false, description: "Type of namespace controller condition.\n\nPossible enum values:\n - `\"NamespaceContentRemaining\"` contains information about resources remaining in a namespace.\n - `\"NamespaceDeletionContentFailure\"` contains information about namespace deleter errors during deletion of resources.\n - `\"NamespaceDeletionDiscoveryFailure\"` contains information about namespace deleter errors during resource discovery.\n - `\"NamespaceDeletionGroupVersionParsingFailure\"` contains information about namespace deleter errors parsing GV for legacy types.\n - `\"NamespaceFinalizersRemaining\"` contains information about which finalizers are on resources remaining in a namespace."},

  ]
)
