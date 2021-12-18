# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # APIServiceStatus contains derived information about an API server
  @[::K8S::Properties(
    conditions: {type: Array(KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition), nilable: true, key: "conditions", getter: false, setter: false},
  )]
  class KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Current service state of apiService.
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition) | Nil

    def initialize(*, @conditions : Array(KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition) | Nil = nil)
    end
  end
end
