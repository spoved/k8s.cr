# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # A scope selector represents the AND of the selectors represented by the scoped-resource selector requirements.
  @[::K8S::Properties(
    match_expressions: {type: Array(Api::Core::V1::ScopedResourceSelectorRequirement), nilable: true, key: "matchExpressions", getter: false, setter: false},
  )]
  class Api::Core::V1::ScopeSelector
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # A list of scope selector requirements by scope of the resources.
    @[::JSON::Field(key: "matchExpressions", emit_null: false)]
    @[::YAML::Field(key: "matchExpressions", emit_null: false)]
    property match_expressions : Array(Api::Core::V1::ScopedResourceSelectorRequirement) | Nil

    def initialize(*, @match_expressions : Array(Api::Core::V1::ScopedResourceSelectorRequirement) | Nil = nil)
    end
  end
end
