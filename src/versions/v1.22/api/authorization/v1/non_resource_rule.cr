# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NonResourceRule holds information that describes a rule for the non-resource
  @[::K8S::Properties(
    non_resource_urls: {type: Array(String), nilable: true, key: "nonResourceURLs", getter: false, setter: false},
    verbs: {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
  )]
  class Api::Authorization::V1::NonResourceRule
    include ::JSON::Serializable
    include ::YAML::Serializable

    # NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  "*" means all.
    @[::JSON::Field(key: "nonResourceURLs", emit_null: false)]
    @[::YAML::Field(key: "nonResourceURLs", emit_null: false)]
    property non_resource_urls : Array(String) | Nil

    # Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  "*" means all.
    @[::JSON::Field(key: "verbs", emit_null: true)]
    @[::YAML::Field(key: "verbs", emit_null: true)]
    property verbs : Array(String)

    def initialize(*, @verbs : Array, @non_resource_urls : Array | Nil = nil)
    end
  end
end
