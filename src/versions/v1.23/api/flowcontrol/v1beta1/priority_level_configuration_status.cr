# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PriorityLevelConfigurationStatus represents the current state of a "request-priority".
  @[::K8S::Properties(
    conditions: {type: Array(Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition), nilable: true, key: "conditions", getter: false, setter: false},
  )]
  class Api::Flowcontrol::V1beta1::PriorityLevelConfigurationStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `conditions` is the current state of "request-priority".
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition) | Nil

    def initialize(*, @conditions : Array | Nil = nil)
    end
  end
end
