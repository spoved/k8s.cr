# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
  @[::K8S::Properties(
    hard: {type: Hash(String, Int32 | String), nilable: true, key: "hard", getter: false, setter: false},
    scope_selector: {type: Api::Core::V1::ScopeSelector, nilable: true, key: "scopeSelector", getter: false, setter: false},
    scopes: {type: Array(String), nilable: true, key: "scopes", getter: false, setter: false},
  )]
  class Api::Core::V1::ResourceQuotaSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # hard is the set of desired hard limits for each named resource. More info: [https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/)
    @[::JSON::Field(key: "hard", emit_null: false)]
    @[::YAML::Field(key: "hard", emit_null: false)]
    property hard : Hash(String, Int32 | String) | Nil

    # scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched.
    @[::JSON::Field(key: "scopeSelector", emit_null: false)]
    @[::YAML::Field(key: "scopeSelector", emit_null: false)]
    property scope_selector : Api::Core::V1::ScopeSelector | Nil

    # A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
    @[::JSON::Field(key: "scopes", emit_null: false)]
    @[::YAML::Field(key: "scopes", emit_null: false)]
    property scopes : Array(String) | Nil

    def initialize(*, @hard : Hash(String, Int32 | String) | Nil = nil, @scope_selector : Api::Core::V1::ScopeSelector | Nil = nil, @scopes : Array(String) | Nil = nil)
    end
  end
end
