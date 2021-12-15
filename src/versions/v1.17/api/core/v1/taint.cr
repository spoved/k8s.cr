# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # The node this Taint is attached to has the "effect" on any pod that does not tolerate the Taint.
  @[::K8S::Properties(
    effect: {type: String, nilable: false, key: "effect", getter: false, setter: false},
    key: {type: String, nilable: false, key: "key", getter: false, setter: false},
    time_added: {type: Time, nilable: true, key: "timeAdded", getter: false, setter: false},
    value: {type: String, nilable: true, key: "value", getter: false, setter: false},
  )]
  class Api::Core::V1::Taint
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.
    @[::JSON::Field(key: "effect", emit_null: true)]
    @[::YAML::Field(key: "effect", emit_null: true)]
    property effect : String

    # Required. The taint key to be applied to a node.
    @[::JSON::Field(key: "key", emit_null: true)]
    @[::YAML::Field(key: "key", emit_null: true)]
    property key : String

    # TimeAdded represents the time at which the taint was added. It is only written for NoExecute taints.
    @[::JSON::Field(key: "timeAdded", emit_null: false)]
    @[::YAML::Field(key: "timeAdded", emit_null: false)]
    property time_added : Time | Nil

    # Required. The taint value corresponding to the taint key.
    @[::JSON::Field(key: "value", emit_null: false)]
    @[::YAML::Field(key: "value", emit_null: false)]
    property value : String | Nil

    def initialize(*, @effect : String, @key : String, @time_added : Time | Nil = nil, @value : String | Nil = nil)
    end
  end
end
