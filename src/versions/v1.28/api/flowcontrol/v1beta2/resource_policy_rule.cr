# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ResourcePolicyRule",
  namespace: "::K8S::Api::Flowcontrol::V1beta2",
  properties: [

    {name: "api_groups", kind: ::Set(String), key: "apiGroups", nilable: false, read_only: false, description: "`apiGroups` is a list of matching API groups and may not be empty. \"*\" matches all API groups and, if present, must be the only entry. Required."},
    {name: "cluster_scope", kind: ::Bool, key: "clusterScope", nilable: true, read_only: false, description: "`clusterScope` indicates whether to match requests that do not specify a namespace (which happens either because the resource is not namespaced or the request targets all namespaces). If this field is omitted or false then the `namespaces` field must contain a non-empty list."},
    {name: "namespaces", kind: ::Set(String), key: "namespaces", nilable: true, read_only: false, description: "`namespaces` is a list of target namespaces that restricts matches.  A request that specifies a target namespace matches only if either (a) this list contains that target namespace or (b) this list contains \"*\".  Note that \"*\" matches any specified namespace but does not match a request that _does not specify_ a namespace (see the `clusterScope` field for that). This list may be empty, but only if `clusterScope` is true."},
    {name: "resources", kind: ::Set(String), key: "resources", nilable: false, read_only: false, description: "`resources` is a list of matching resources (i.e., lowercase and plural) with, if desired, subresource.  For example, [ \"services\", [\"nodes/status\" ].  This list may not be empty. \"*\" matches all resources and, if present, must be the only entry. Required.](\"nodes/status\" ].  This list may not be empty. \"*\" matches all resources and, if present, must be the only entry. Required.)"},
    {name: "verbs", kind: ::Set(String), key: "verbs", nilable: false, read_only: false, description: "`verbs` is a list of matching verbs and may not be empty. \"*\" matches all verbs and, if present, must be the only entry. Required."},

  ]
)
