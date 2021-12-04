# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # APIServiceStatus contains derived information about an API server
  class KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Current service state of apiService.
    property conditions : Array(KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition) | Nil

    ::YAML.mapping({
      conditions: {type: Array(KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition), nilable: true, key: "conditions", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      conditions: {type: Array(KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition), nilable: true, key: "conditions", getter: false, setter: false},
    }, true)

    def initialize(*, @conditions : Array | Nil = nil)
    end
  end
end
