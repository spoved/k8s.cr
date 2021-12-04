# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Run A sUser Strategy Options defines the strategy type and any options used to create the strategy.
  class Api::Policy::V1beta1::RunAsUserStrategyOptions
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Ranges are the allowed ranges of uids that may be used.
    property ranges : Array(Api::Policy::V1beta1::IDRange) | Nil

    # Rule is the strategy that will dictate the allowable RunAsUser values that may be set.
    property rule : String

    ::YAML.mapping({
      ranges: {type: Array(Api::Policy::V1beta1::IDRange), nilable: true, key: "ranges", getter: false, setter: false},
      rule:   {type: String, nilable: false, key: "rule", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      ranges: {type: Array(Api::Policy::V1beta1::IDRange), nilable: true, key: "ranges", getter: false, setter: false},
      rule:   {type: String, nilable: false, key: "rule", getter: false, setter: false},
    }, true)

    def initialize(*, @rule : String, @ranges : Array | Nil = nil)
    end
  end
end
