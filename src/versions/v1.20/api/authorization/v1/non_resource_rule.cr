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
    @[::JSON::Field(key: "nonResourceURLs")]
    @[::YAML::Field(key: "nonResourceURLs")]
    property non_resource_urls : Array(String) | Nil

    # Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  "*" means all.
    property verbs : Array(String)

    def initialize(*, @verbs : Array, @non_resource_urls : Array | Nil = nil)
    end
  end
end
