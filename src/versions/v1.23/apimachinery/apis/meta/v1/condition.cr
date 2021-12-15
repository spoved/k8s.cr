# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Condition contains details for one aspect of the current state of this API Resource.
  @[::K8S::Properties(
    last_transition_time: {type: Time, nilable: false, key: "lastTransitionTime", getter: false, setter: false},
    message: {type: String, nilable: false, key: "message", getter: false, setter: false},
    observed_generation: {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
    reason: {type: String, nilable: false, key: "reason", getter: false, setter: false},
    status: {type: String, nilable: false, key: "status", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::Condition
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # lastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
    @[::JSON::Field(key: "lastTransitionTime", emit_null: true)]
    @[::YAML::Field(key: "lastTransitionTime", emit_null: true)]
    property last_transition_time : Time

    # message is a human readable message indicating details about the transition. This may be an empty string.
    @[::JSON::Field(key: "message", emit_null: true)]
    @[::YAML::Field(key: "message", emit_null: true)]
    property message : String

    # observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
    @[::JSON::Field(key: "observedGeneration", emit_null: false)]
    @[::YAML::Field(key: "observedGeneration", emit_null: false)]
    property observed_generation : Int32 | Nil

    # reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.
    @[::JSON::Field(key: "reason", emit_null: true)]
    @[::YAML::Field(key: "reason", emit_null: true)]
    property reason : String

    # status of the condition, one of True, False, Unknown.
    @[::JSON::Field(key: "status", emit_null: true)]
    @[::YAML::Field(key: "status", emit_null: true)]
    property status : String

    # type of condition in CamelCase or in [foo.example.com/CamelCase.](foo.example.com/CamelCase.)
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    def initialize(*, @last_transition_time : Time, @message : String, @reason : String, @status : String, @type : String, @observed_generation : Int32 | Nil = nil)
    end
  end
end
