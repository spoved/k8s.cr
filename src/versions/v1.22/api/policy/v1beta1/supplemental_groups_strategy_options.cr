# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SupplementalGroupsStrategyOptions defines the strategy type and options used to create the strategy.
  @[::K8S::Properties(
    ranges: {type: Array(Api::Policy::V1beta1::IDRange), nilable: true, key: "ranges", getter: false, setter: false},
    rule: {type: String, nilable: true, key: "rule", getter: false, setter: false},
  )]
  class Api::Policy::V1beta1::SupplementalGroupsStrategyOptions
    include ::JSON::Serializable
    include ::YAML::Serializable

    # ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end. Required for MustRunAs.
    property ranges : Array(Api::Policy::V1beta1::IDRange) | Nil

    # rule is the strategy that will dictate what supplemental groups is used in the SecurityContext.
    property rule : String | Nil

    def initialize(*, @ranges : Array | Nil = nil, @rule : String | Nil = nil)
    end
  end
end
