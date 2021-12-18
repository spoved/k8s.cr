# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  @[::K8S::Properties(
    last_transition_time: {type: Time, nilable: true, key: "lastTransitionTime", getter: false, setter: false},
    last_update_time: {type: Time, nilable: true, key: "lastUpdateTime", getter: false, setter: false},
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    reason: {type: String, nilable: true, key: "reason", getter: false, setter: false},
    status: {type: String, nilable: true, key: "status", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Api::Certificates::V1beta1::CertificateSigningRequestCondition
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # lastTransitionTime is the time the condition last transitioned from one status to another. If unset, when a new condition type is added or an existing condition's status is changed, the server defaults this to the current time.
    @[::JSON::Field(key: "lastTransitionTime", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "lastTransitionTime", emit_null: false, converter: K8S::TimeFormat.new)]
    property last_transition_time : Time | Nil

    # timestamp for the last update to this condition
    @[::JSON::Field(key: "lastUpdateTime", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "lastUpdateTime", emit_null: false, converter: K8S::TimeFormat.new)]
    property last_update_time : Time | Nil

    # human readable message with details about the request state
    @[::JSON::Field(key: "message", emit_null: false)]
    @[::YAML::Field(key: "message", emit_null: false)]
    property message : String | Nil

    # brief reason for the request state
    @[::JSON::Field(key: "reason", emit_null: false)]
    @[::YAML::Field(key: "reason", emit_null: false)]
    property reason : String | Nil

    # Status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be "False" or "Unknown". Defaults to "True". If unset, should be treated as "True".
    @[::JSON::Field(key: "status", emit_null: false)]
    @[::YAML::Field(key: "status", emit_null: false)]
    property status : String | Nil

    # type of the condition. Known conditions include "Approved", "Denied", and "Failed".
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    def initialize(*, @type : String, @last_transition_time : Time | Nil = nil, @last_update_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @status : String | Nil = nil)
    end
  end
end
