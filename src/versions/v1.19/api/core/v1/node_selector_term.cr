# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
  @[::K8S::Properties(
    match_expressions: {type: Array(Api::Core::V1::NodeSelectorRequirement), nilable: true, key: "matchExpressions", getter: false, setter: false},
    match_fields: {type: Array(Api::Core::V1::NodeSelectorRequirement), nilable: true, key: "matchFields", getter: false, setter: false},
  )]
  class Api::Core::V1::NodeSelectorTerm
    include ::JSON::Serializable
    include ::YAML::Serializable

    # A list of node selector requirements by node's labels.
    @[::JSON::Field(key: "matchExpressions", emit_null: false)]
    @[::YAML::Field(key: "matchExpressions", emit_null: false)]
    property match_expressions : Array(Api::Core::V1::NodeSelectorRequirement) | Nil

    # A list of node selector requirements by node's fields.
    @[::JSON::Field(key: "matchFields", emit_null: false)]
    @[::YAML::Field(key: "matchFields", emit_null: false)]
    property match_fields : Array(Api::Core::V1::NodeSelectorRequirement) | Nil

    def initialize(*, @match_expressions : Array | Nil = nil, @match_fields : Array | Nil = nil)
    end
  end
end
