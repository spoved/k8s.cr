# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # A null or empty node selector term matches no objects.
  class Kubernetes::Api::V1::NodeSelectorTerm
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Required. A list of node selector requirements. The requirements are ANDed.
    property match_expressions : Array(Kubernetes::Api::V1::NodeSelectorRequirement)

    ::YAML.mapping({
      match_expressions: {type: Array(Kubernetes::Api::V1::NodeSelectorRequirement), nilable: false, key: "matchExpressions", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      match_expressions: {type: Array(Kubernetes::Api::V1::NodeSelectorRequirement), nilable: false, key: "matchExpressions", getter: false, setter: false},
    }, true)

    def initialize(*, @match_expressions : Array)
    end
  end
end
