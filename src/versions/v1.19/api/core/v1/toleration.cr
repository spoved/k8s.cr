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
    @[::JSON::Field(key: "effect", emit_null: false)]
    @[::YAML::Field(key: "effect", emit_null: false)]
    property effect : String | Nil

    # Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
    @[::JSON::Field(key: "key", emit_null: false)]
    @[::YAML::Field(key: "key", emit_null: false)]
    property key : String | Nil

    # Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.
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
