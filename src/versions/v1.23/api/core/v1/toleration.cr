# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # The pod this Toleration is attached to tolerates any taint that matches the triple <key,value,effect> using the matching operator <operator>.
  @[::K8S::Properties(
    effect: {type: String, nilable: true, key: "effect", getter: false, setter: false},
    key: {type: String, nilable: true, key: "key", getter: false, setter: false},
    operator: {type: String, nilable: true, key: "operator", getter: false, setter: false},
    toleration_seconds: {type: Int32, nilable: true, key: "tolerationSeconds", getter: false, setter: false},
    value: {type: String, nilable: true, key: "value", getter: false, setter: false},
  )]
  class Api::Core::V1::Toleration
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.
    #
    # Possible enum values:
    #  - `"NoExecute"` Evict any already-running pods that do not tolerate the taint. Currently enforced by NodeController.
    #  - `"NoSchedule"` Do not allow new pods to schedule onto the node unless they tolerate the taint, but allow all pods submitted to Kubelet without going through the scheduler to start, and allow all already-running pods to continue running. Enforced by the scheduler.
    #  - `"PreferNoSchedule"` Like TaintEffectNoSchedule, but the scheduler tries not to schedule new pods onto the node, rather than prohibiting new pods from scheduling onto the node entirely. Enforced by the scheduler.
    @[::JSON::Field(key: "effect", emit_null: false)]
    @[::YAML::Field(key: "effect", emit_null: false)]
    property effect : String | Nil

    # Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
    @[::JSON::Field(key: "key", emit_null: false)]
    @[::YAML::Field(key: "key", emit_null: false)]
    property key : String | Nil

    # Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.
    #
    # Possible enum values:
    #  - `"Equal"`
    #  - `"Exists"`
    @[::JSON::Field(key: "operator", emit_null: false)]
    @[::YAML::Field(key: "operator", emit_null: false)]
    property operator : String | Nil

    # TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.
    @[::JSON::Field(key: "tolerationSeconds", emit_null: false)]
    @[::YAML::Field(key: "tolerationSeconds", emit_null: false)]
    property toleration_seconds : Int32 | Nil

    # Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.
    @[::JSON::Field(key: "value", emit_null: false)]
    @[::YAML::Field(key: "value", emit_null: false)]
    property value : String | Nil

    def initialize(*, @effect : String | Nil = nil, @key : String | Nil = nil, @operator : String | Nil = nil, @toleration_seconds : Int32 | Nil = nil, @value : String | Nil = nil)
    end
  end
end
