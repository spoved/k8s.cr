# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SelfSubjectRulesReviewSpec defines the specification for SelfSubjectRulesReview.
  @[::K8S::Properties(
    namespace: {type: String, nilable: true, key: "namespace", getter: false, setter: false},
  )]
  class Api::Authorization::V1::SelfSubjectRulesReviewSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Namespace to evaluate rules for. Required.
    @[::JSON::Field(key: "namespace", emit_null: false)]
    @[::YAML::Field(key: "namespace", emit_null: false)]
    property namespace : String | Nil

    def initialize(*, @namespace : String | Nil = nil)
    end
  end
end
