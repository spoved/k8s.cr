# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ResourceRule is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  @[::K8S::Properties(
    api_groups: {type: Array(String), nilable: true, key: "apiGroups", getter: false, setter: false},
    resource_names: {type: Array(String), nilable: true, key: "resourceNames", getter: false, setter: false},
    resources: {type: Array(String), nilable: true, key: "resources", getter: false, setter: false},
    verbs: {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
  )]
  class Api::Authorization::V1::ResourceRule
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  "*" means all.
    @[::JSON::Field(key: "apiGroups", emit_null: false)]
    @[::YAML::Field(key: "apiGroups", emit_null: false)]
    property api_groups : Array(String) | Nil

    # ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  "*" means all.
    @[::JSON::Field(key: "resourceNames", emit_null: false)]
    @[::YAML::Field(key: "resourceNames", emit_null: false)]
    property resource_names : Array(String) | Nil

    # Resources is a list of resources this rule applies to.  "*" means all in the specified apiGroups.
    #  ["*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.]("*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.)
    @[::JSON::Field(key: "resources", emit_null: false)]
    @[::YAML::Field(key: "resources", emit_null: false)]
    property resources : Array(String) | Nil

    # Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  "*" means all.
    @[::JSON::Field(key: "verbs", emit_null: true)]
    @[::YAML::Field(key: "verbs", emit_null: true)]
    property verbs : Array(String)

    def initialize(*, @verbs : Array(String), @api_groups : Array(String) | Nil = nil, @resource_names : Array(String) | Nil = nil, @resources : Array(String) | Nil = nil)
    end
  end
end
