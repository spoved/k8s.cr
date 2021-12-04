# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # PriorityLevelConfigurationStatus represents the current state of a "request-priority".
  class Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `conditions` is the current state of "request-priority".
    property conditions : Array(Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationCondition) | Nil

    ::YAML.mapping({
      conditions: {type: Array(Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationCondition), nilable: true, key: "conditions", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      conditions: {type: Array(Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationCondition), nilable: true, key: "conditions", getter: false, setter: false},
    }, true)

    def initialize(*, @conditions : Array | Nil = nil)
    end
  end
end
