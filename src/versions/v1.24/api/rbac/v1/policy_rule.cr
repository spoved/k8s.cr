# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PolicyRule",
  namespace: "::K8S::Api::Rbac::V1",
  properties: [

    {name: "api_groups", kind: ::Array(String), key: "apiGroups", nilable: true, read_only: false, description: "APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed."},
    {name: "non_resource_urls", kind: ::Array(String), key: "nonResourceURLs", nilable: true, read_only: false, description: "NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as \"pods\" or \"secrets\") or non-resource URL paths (such as [\"/api\"),  but not both.](\"/api\"),  but not both.)"},
    {name: "resource_names", kind: ::Array(String), key: "resourceNames", nilable: true, read_only: false, description: "ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed."},
    {name: "resources", kind: ::Array(String), key: "resources", nilable: true, read_only: false, description: "Resources is a list of resources this rule applies to. '*' represents all resources."},
    {name: "verbs", kind: ::Array(String), key: "verbs", nilable: false, read_only: false, description: "Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs."},

  ]
)
