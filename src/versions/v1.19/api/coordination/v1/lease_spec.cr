# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # LeaseSpec is a specification of a Lease.
  @[::K8S::Properties(
    acquire_time: {type: Time, nilable: true, key: "acquireTime", getter: false, setter: false},
    holder_identity: {type: String, nilable: true, key: "holderIdentity", getter: false, setter: false},
    lease_duration_seconds: {type: Int32, nilable: true, key: "leaseDurationSeconds", getter: false, setter: false},
    lease_transitions: {type: Int32, nilable: true, key: "leaseTransitions", getter: false, setter: false},
    renew_time: {type: Time, nilable: true, key: "renewTime", getter: false, setter: false},
  )]
  class Api::Coordination::V1::LeaseSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # acquireTime is a time when the current lease was acquired.
    @[::JSON::Field(key: "acquireTime", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "acquireTime", emit_null: false, converter: K8S::TimeFormat.new)]
    property acquire_time : Time | Nil

    # holderIdentity contains the identity of the holder of a current lease.
    @[::JSON::Field(key: "holderIdentity", emit_null: false)]
    @[::YAML::Field(key: "holderIdentity", emit_null: false)]
    property holder_identity : String | Nil

    # leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.
    @[::JSON::Field(key: "leaseDurationSeconds", emit_null: false)]
    @[::YAML::Field(key: "leaseDurationSeconds", emit_null: false)]
    property lease_duration_seconds : Int32 | Nil

    # leaseTransitions is the number of transitions of a lease between holders.
    @[::JSON::Field(key: "leaseTransitions", emit_null: false)]
    @[::YAML::Field(key: "leaseTransitions", emit_null: false)]
    property lease_transitions : Int32 | Nil

    # renewTime is a time when the current holder of a lease has last updated the lease.
    @[::JSON::Field(key: "renewTime", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "renewTime", emit_null: false, converter: K8S::TimeFormat.new)]
    property renew_time : Time | Nil

    def initialize(*, @acquire_time : Time | Nil = nil, @holder_identity : String | Nil = nil, @lease_duration_seconds : Int32 | Nil = nil, @lease_transitions : Int32 | Nil = nil, @renew_time : Time | Nil = nil)
    end
  end
end
