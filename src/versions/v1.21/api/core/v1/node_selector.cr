# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
  @[::K8S::Properties(
    node_selector_terms: {type: Array(Api::Core::V1::NodeSelectorTerm), nilable: false, key: "nodeSelectorTerms", getter: false, setter: false},
  )]
  class Api::Core::V1::NodeSelector
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Required. A list of node selector terms. The terms are ORed.
    @[::JSON::Field(key: "nodeSelectorTerms", emit_null: true)]
    @[::YAML::Field(key: "nodeSelectorTerms", emit_null: true)]
    property node_selector_terms : Array(Api::Core::V1::NodeSelectorTerm)

    def initialize(*, @node_selector_terms : Array)
    end
  end
end
