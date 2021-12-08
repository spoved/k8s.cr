# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # EventSeries contain information on series of events, i.e. thing that [was/is happening continuously for some time.](was/is happening continuously for some time.)
  @[::K8S::Properties(
    count: {type: Int32, nilable: false, key: "count", getter: false, setter: false},
    last_observed_time: {type: Time, nilable: false, key: "lastObservedTime", getter: false, setter: false},
    state: {type: String, nilable: false, key: "state", getter: false, setter: false},
  )]
  class Api::Events::V1beta1::EventSeries
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Number of occurrences in this series up to the last heartbeat time
    @[::JSON::Field(key: "count", emit_null: true)]
    @[::YAML::Field(key: "count", emit_null: true)]
    property count : Int32

    # Time when last Event from the series was seen before last heartbeat.
    @[::JSON::Field(key: "lastObservedTime", emit_null: true)]
    @[::YAML::Field(key: "lastObservedTime", emit_null: true)]
    property last_observed_time : Time

    # Information whether this series is ongoing or finished.
    @[::JSON::Field(key: "state", emit_null: true)]
    @[::YAML::Field(key: "state", emit_null: true)]
    property state : String

    def initialize(*, @count : Int32, @last_observed_time : Time, @state : String)
    end
  end
end
