# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SupplementalGroupsStrategyOptions defines the strategy type and options used to create the strategy. Deprecated: use SupplementalGroupsStrategyOptions from policy API Group instead.
  @[::K8S::Properties(
    ranges: {type: Array(Api::Extensions::V1beta1::IDRange), nilable: true, key: "ranges", getter: false, setter: false},
    rule: {type: String, nilable: true, key: "rule", getter: false, setter: false},
  )]
  class Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end. Required for MustRunAs.
    @[::JSON::Field(key: "ranges", emit_null: false)]
    @[::YAML::Field(key: "ranges", emit_null: false)]
    property ranges : Array(Api::Extensions::V1beta1::IDRange) | Nil

    # rule is the strategy that will dictate what supplemental groups is used in the SecurityContext.
    @[::JSON::Field(key: "rule", emit_null: false)]
    @[::YAML::Field(key: "rule", emit_null: false)]
    property rule : String | Nil

    def initialize(*, @ranges : Array(Api::Extensions::V1beta1::IDRange) | Nil = nil, @rule : String | Nil = nil)
    end
  end
end
