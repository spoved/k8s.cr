# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # RunAsGroupStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use RunAsGroupStrategyOptions from policy API Group instead.
  class Api::Extensions::V1beta1::RunAsGroupStrategyOptions
    # ranges are the allowed ranges of gids that may be used. If you would like to force a single gid then supply a single range with the same start and end. Required for MustRunAs.
    property ranges : Array(Api::Extensions::V1beta1::IDRange) | Nil

    # rule is the strategy that will dictate the allowable RunAsGroup values that may be set.
    property rule : String

    ::YAML.mapping({
      ranges: {type: Array(Api::Extensions::V1beta1::IDRange), nilable: true, key: "ranges", getter: false, setter: false},
      rule:   {type: String, nilable: false, key: "rule", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      ranges: {type: Array(Api::Extensions::V1beta1::IDRange), nilable: true, key: "ranges", getter: false, setter: false},
      rule:   {type: String, nilable: false, key: "rule", getter: false, setter: false},
    }, true)

    def initialize(*, @rule : String, @ranges : Array | Nil = nil)
    end
  end
end
