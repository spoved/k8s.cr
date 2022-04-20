# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ResourceRule",
  namespace: "::K8S::Api::Authorization::V1",
  properties: [

    {name: "api_groups", kind: ::Array(String), key: "apiGroups", nilable: true, read_only: false, description: "APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  \"*\" means all."},
    {name: "resource_names", kind: ::Array(String), key: "resourceNames", nilable: true, read_only: false, description: "ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  \"*\" means all."},
    {name: "resources", kind: ::Array(String), key: "resources", nilable: true, read_only: false, description: "Resources is a list of resources this rule applies to.  \"*\" means all in the specified apiGroups.\n [\"*/foo\" represents the subresource 'foo' for all resources in the specified apiGroups.](\"*/foo\" represents the subresource 'foo' for all resources in the specified apiGroups.)"},
    {name: "verbs", kind: ::Array(String), key: "verbs", nilable: false, read_only: false, description: "Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  \"*\" means all."},

  ]
)
