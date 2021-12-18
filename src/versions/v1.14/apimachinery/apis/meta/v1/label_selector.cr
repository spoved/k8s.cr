# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
  @[::K8S::Properties(
    match_expressions: {type: Array(Apimachinery::Apis::Meta::V1::LabelSelectorRequirement), nilable: true, key: "matchExpressions", getter: false, setter: false},
    match_labels: {type: Hash(String, String), nilable: true, key: "matchLabels", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::LabelSelector
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # matchExpressions is a list of label selector requirements. The requirements are ANDed.
    @[::JSON::Field(key: "matchExpressions", emit_null: false)]
    @[::YAML::Field(key: "matchExpressions", emit_null: false)]
    property match_expressions : Array(Apimachinery::Apis::Meta::V1::LabelSelectorRequirement) | Nil

    # matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
    @[::JSON::Field(key: "matchLabels", emit_null: false)]
    @[::YAML::Field(key: "matchLabels", emit_null: false)]
    property match_labels : Hash(String, String) | Nil

    def initialize(*, @match_expressions : Array(Apimachinery::Apis::Meta::V1::LabelSelectorRequirement) | Nil = nil, @match_labels : Hash(String, String) | Nil = nil)
    end
  end
end
