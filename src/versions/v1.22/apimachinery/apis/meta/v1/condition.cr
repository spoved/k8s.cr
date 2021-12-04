# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Condition contains details for one aspect of the current state of this API Resource.
  class Apimachinery::Apis::Meta::V1::Condition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # lastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
    property last_transition_time : Time

    # message is a human readable message indicating details about the transition. This may be an empty string.
    property message : String

    # observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
    property observed_generation : Int32 | Nil

    # reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.
    property reason : String

    # status of the condition, one of True, False, Unknown.
    property status : String

    # type of condition in CamelCase or in [foo.example.com/CamelCase.](foo.example.com/CamelCase.)
    property type : String

    ::YAML.mapping({
      last_transition_time: {type: Time, nilable: false, key: "lastTransitionTime", getter: false, setter: false},
      message:              {type: String, nilable: false, key: "message", getter: false, setter: false},
      observed_generation:  {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
      reason:               {type: String, nilable: false, key: "reason", getter: false, setter: false},
      status:               {type: String, nilable: false, key: "status", getter: false, setter: false},
      type:                 {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      last_transition_time: {type: Time, nilable: false, key: "lastTransitionTime", getter: false, setter: false},
      message:              {type: String, nilable: false, key: "message", getter: false, setter: false},
      observed_generation:  {type: Int32, nilable: true, key: "observedGeneration", getter: false, setter: false},
      reason:               {type: String, nilable: false, key: "reason", getter: false, setter: false},
      status:               {type: String, nilable: false, key: "status", getter: false, setter: false},
      type:                 {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @last_transition_time : Time, @message : String, @reason : String, @status : String, @type : String, @observed_generation : Int32 | Nil = nil)
    end
  end
end
