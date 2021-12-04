# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  class Api::Authorization::V1::SelfSubjectRulesReviewSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Namespace to evaluate rules for. Required.
    property namespace : String | Nil

    ::YAML.mapping({
      namespace: {type: String, nilable: true, key: "namespace", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      namespace: {type: String, nilable: true, key: "namespace", getter: false, setter: false},
    }, true)

    def initialize(*, @namespace : String | Nil = nil)
    end
  end
end
