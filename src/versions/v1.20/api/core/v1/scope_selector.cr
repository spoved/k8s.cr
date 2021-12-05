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
    include ::YAML::Serializable

    # A list of scope selector requirements by scope of the resources.
    @[::JSON::Field(key: "matchExpressions")]
    @[::YAML::Field(key: "matchExpressions")]
    property match_expressions : Array(Api::Core::V1::ScopedResourceSelectorRequirement) | Nil

    def initialize(*, @match_expressions : Array | Nil = nil)
    end
  end
end
