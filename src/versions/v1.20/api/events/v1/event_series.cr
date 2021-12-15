# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # EventSeries contain information on series of events, i.e. thing that [was/is happening continuously for some time. How often to update the EventSeries is up to the event reporters. The default event reporter in "k8s.io/client-go/tools/events/event_broadcaster.go" shows how this struct is updated on heartbeats and can guide customized reporter implementations.](was/is happening continuously for some time. How often to update the EventSeries is up to the event reporters. The default event reporter in "k8s.io/client-go/tools/events/event_broadcaster.go" shows how this struct is updated on heartbeats and can guide customized reporter implementations.)
  @[::K8S::Properties(
    count: {type: Int32, nilable: false, key: "count", getter: false, setter: false},
    last_observed_time: {type: Time, nilable: false, key: "lastObservedTime", getter: false, setter: false},
  )]
  class Api::Events::V1::EventSeries
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # count is the number of occurrences in this series up to the last heartbeat time.
    @[::JSON::Field(key: "count", emit_null: true)]
    @[::YAML::Field(key: "count", emit_null: true)]
    property count : Int32

    # lastObservedTime is the time when last Event from the series was seen before last heartbeat.
    @[::JSON::Field(key: "lastObservedTime", emit_null: true)]
    @[::YAML::Field(key: "lastObservedTime", emit_null: true)]
    property last_observed_time : Time

    def initialize(*, @count : Int32, @last_observed_time : Time)
    end
  end
end
