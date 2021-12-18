# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NonResourcePolicyRule is a predicate that matches non-resource requests according to their verb and the target non-resource URL. A NonResourcePolicyRule matches a request if and only if both (a) at least one member of verbs matches the request and (b) at least one member of nonResourceURLs matches the request.
  @[::K8S::Properties(
    non_resource_urls: {type: Array(String), nilable: false, key: "nonResourceURLs", getter: false, setter: false},
    verbs: {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
  )]
  class Api::Flowcontrol::V1alpha1::NonResourcePolicyRule
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # `nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty. For example:
    #   - ["/healthz" is legal]("/healthz" is legal)
    #   - ["/hea*" is illegal]("/hea*" is illegal)
    #   - ["/hea" is legal but matches nothing]("/hea" is legal but matches nothing)
    #   - ["/hea/*" also matches nothing]("/hea/*" also matches nothing)
    #   - ["/healthz/*" matches all per-component health checks.]("/healthz/*" matches all per-component health checks.)
    # "*" matches all non-resource urls. if it is present, it must be the only entry. Required.
    @[::JSON::Field(key: "nonResourceURLs", emit_null: true)]
    @[::YAML::Field(key: "nonResourceURLs", emit_null: true)]
    property non_resource_urls : Array(String)

    # `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs. If it is present, it must be the only entry. Required.
    @[::JSON::Field(key: "verbs", emit_null: true)]
    @[::YAML::Field(key: "verbs", emit_null: true)]
    property verbs : Array(String)

    def initialize(*, @non_resource_urls : Array(String), @verbs : Array(String))
    end
  end
end
