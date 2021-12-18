# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # FlowSchemaStatus represents the current state of a FlowSchema.
  @[::K8S::Properties(
    conditions: {type: Array(Api::Flowcontrol::V1beta1::FlowSchemaCondition), nilable: true, key: "conditions", getter: false, setter: false},
  )]
  class Api::Flowcontrol::V1beta1::FlowSchemaStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # `conditions` is a list of the current states of FlowSchema.
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(Api::Flowcontrol::V1beta1::FlowSchemaCondition) | Nil

    def initialize(*, @conditions : Array(Api::Flowcontrol::V1beta1::FlowSchemaCondition) | Nil = nil)
    end
  end
end
