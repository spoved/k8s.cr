# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # EventSeries contain information on series of events, i.e. thing that [was/is happening continuously for some time.](was/is happening continuously for some time.)
  @[::K8S::Properties(
    count: {type: Int32, nilable: true, key: "count", getter: false, setter: false},
    last_observed_time: {type: Time, nilable: true, key: "lastObservedTime", getter: false, setter: false},
    state: {type: String, nilable: true, key: "state", getter: false, setter: false},
  )]
  class Api::Core::V1::EventSeries
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Number of occurrences in this series up to the last heartbeat time
    @[::JSON::Field(key: "count", emit_null: false)]
    @[::YAML::Field(key: "count", emit_null: false)]
    property count : Int32 | Nil

    # Time of the last occurrence observed
    @[::JSON::Field(key: "lastObservedTime", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "lastObservedTime", emit_null: false, converter: K8S::TimeFormat.new)]
    property last_observed_time : Time | Nil

    # State of this Series: Ongoing or Finished
    @[::JSON::Field(key: "state", emit_null: false)]
    @[::YAML::Field(key: "state", emit_null: false)]
    property state : String | Nil

    def initialize(*, @count : Int32 | Nil = nil, @last_observed_time : Time | Nil = nil, @state : String | Nil = nil)
    end
  end
end
