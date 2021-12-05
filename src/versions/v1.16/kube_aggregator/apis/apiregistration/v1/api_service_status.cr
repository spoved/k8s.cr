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
    include ::YAML::Serializable

    # Current service state of apiService.
    property conditions : Array(KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition) | Nil

    def initialize(*, @conditions : Array | Nil = nil)
    end
  end
end
