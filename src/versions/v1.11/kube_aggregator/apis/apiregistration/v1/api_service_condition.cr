# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  class KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition
    # Last time the condition transitioned from one status to another.
    property last_transition_time : Time | Nil

    # Human-readable message indicating details about last transition.
    property message : String | Nil

    # Unique, one-word, CamelCase reason for the condition's last transition.
    property reason : String | Nil

    # Status is the status of the condition. Can be True, False, Unknown.
    property status : String

    # Type is the type of the condition.
    property type : String

    ::YAML.mapping({
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
      message:              {type: String, nilable: true, key: "message", getter: false, setter: false},
      reason:               {type: String, nilable: true, key: "reason", getter: false, setter: false},
      status:               {type: String, nilable: false, key: "status", getter: false, setter: false},
      type:                 {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
      message:              {type: String, nilable: true, key: "message", getter: false, setter: false},
      reason:               {type: String, nilable: true, key: "reason", getter: false, setter: false},
      status:               {type: String, nilable: false, key: "status", getter: false, setter: false},
      type:                 {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @status : String, @type : String, @last_transition_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
