# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # EventSeries contain information on series of events, i.e. thing that [was/is happening continuously for some time.](was/is happening continuously for some time.)
  @[::K8S::Properties(
    count: {type: Int32, nilable: true, key: "count", getter: false, setter: false},
    last_observed_time: {type: Time, nilable: true, key: "lastObservedTime", getter: false, setter: false},
  )]
  class Api::Core::V1::EventSeries
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Number of occurrences in this series up to the last heartbeat time
    property count : Int32 | Nil

    # Time of the last occurrence observed
    @[::JSON::Field(key: "lastObservedTime")]
    @[::YAML::Field(key: "lastObservedTime")]
    property last_observed_time : Time | Nil

    def initialize(*, @count : Int32 | Nil = nil, @last_observed_time : Time | Nil = nil)
    end
  end
end
