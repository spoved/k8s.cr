# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # A topology selector term represents the result of label queries. A null or empty topology selector term matches no objects. The requirements of them are ANDed. It provides a subset of functionality as NodeSelectorTerm. This is an alpha feature and may change in the future.
  @[::K8S::Properties(
    match_label_expressions: {type: Array(Api::Core::V1::TopologySelectorLabelRequirement), nilable: true, key: "matchLabelExpressions", getter: false, setter: false},
  )]
  class Api::Core::V1::TopologySelectorTerm
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # A list of topology selector requirements by labels.
    @[::JSON::Field(key: "matchLabelExpressions", emit_null: false)]
    @[::YAML::Field(key: "matchLabelExpressions", emit_null: false)]
    property match_label_expressions : Array(Api::Core::V1::TopologySelectorLabelRequirement) | Nil

    def initialize(*, @match_label_expressions : Array | Nil = nil)
    end
  end
end
