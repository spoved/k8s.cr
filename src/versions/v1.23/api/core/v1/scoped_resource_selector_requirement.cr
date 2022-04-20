# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ScopedResourceSelectorRequirement",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "operator", kind: String, key: "operator", nilable: false, read_only: false, description: "Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.\n\nPossible enum values:\n - `\"DoesNotExist\"`\n - `\"Exists\"`\n - `\"In\"`\n - `\"NotIn\"`"},
    {name: "scope_name", kind: String, key: "scopeName", nilable: false, read_only: false, description: "The name of the scope that the selector applies to.\n\nPossible enum values:\n - `\"BestEffort\"` Match all pod objects that have best effort quality of service\n - `\"CrossNamespacePodAffinity\"` Match all pod objects that have cross-namespace pod (anti)affinity mentioned. This is a beta feature enabled by the PodAffinityNamespaceSelector feature flag.\n - `\"NotBestEffort\"` Match all pod objects that do not have best effort quality of service\n - `\"NotTerminating\"` Match all pod objects where spec.activeDeadlineSeconds is nil\n - `\"PriorityClass\"` Match all pod objects that have priority class mentioned\n - `\"Terminating\"` Match all pod objects where spec.activeDeadlineSeconds >=0"},
    {name: "values", kind: ::Array(String), key: "values", nilable: true, read_only: false, description: "An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."},

  ]
)
