# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PolicyRule holds information that describes a policy rule, but does not contain information about who the rule applies to or which namespace the rule applies to.
  @[::K8S::Properties(
    api_groups: {type: Array(String), nilable: true, key: "apiGroups", getter: false, setter: false},
    non_resource_urls: {type: Array(String), nilable: true, key: "nonResourceURLs", getter: false, setter: false},
    resource_names: {type: Array(String), nilable: true, key: "resourceNames", getter: false, setter: false},
    resources: {type: Array(String), nilable: true, key: "resources", getter: false, setter: false},
    verbs: {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
  )]
  class Api::Rbac::V1::PolicyRule
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.
    @[::JSON::Field(key: "apiGroups", emit_null: false)]
    @[::YAML::Field(key: "apiGroups", emit_null: false)]
    property api_groups : Array(String) | Nil

    # NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as "pods" or "secrets") or non-resource URL paths (such as ["/api"),  but not both.]("/api"),  but not both.)
    @[::JSON::Field(key: "nonResourceURLs", emit_null: false)]
    @[::YAML::Field(key: "nonResourceURLs", emit_null: false)]
    property non_resource_urls : Array(String) | Nil

    # ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
    @[::JSON::Field(key: "resourceNames", emit_null: false)]
    @[::YAML::Field(key: "resourceNames", emit_null: false)]
    property resource_names : Array(String) | Nil

    # Resources is a list of resources this rule applies to. '*' represents all resources.
    @[::JSON::Field(key: "resources", emit_null: false)]
    @[::YAML::Field(key: "resources", emit_null: false)]
    property resources : Array(String) | Nil

    # Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs.
    @[::JSON::Field(key: "verbs", emit_null: true)]
    @[::YAML::Field(key: "verbs", emit_null: true)]
    property verbs : Array(String)

    def initialize(*, @verbs : Array(String), @api_groups : Array(String) | Nil = nil, @non_resource_urls : Array(String) | Nil = nil, @resource_names : Array(String) | Nil = nil, @resources : Array(String) | Nil = nil)
    end
  end
end
