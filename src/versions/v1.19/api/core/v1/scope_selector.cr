# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # A scope selector represents the AND of the selectors represented by the scoped-resource selector requirements.
  class Api::Core::V1::ScopeSelector
    include ::JSON::Serializable
    include ::YAML::Serializable

    # A list of scope selector requirements by scope of the resources.
    property match_expressions : Array(Api::Core::V1::ScopedResourceSelectorRequirement) | Nil

    ::YAML.mapping({
      match_expressions: {type: Array(Api::Core::V1::ScopedResourceSelectorRequirement), nilable: true, key: "matchExpressions", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      match_expressions: {type: Array(Api::Core::V1::ScopedResourceSelectorRequirement), nilable: true, key: "matchExpressions", getter: false, setter: false},
    }, true)

    def initialize(*, @match_expressions : Array | Nil = nil)
    end
  end
end
