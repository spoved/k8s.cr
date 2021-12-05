# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # EventSource contains information for an event.
  @[::K8S::Properties(
    component: {type: String, nilable: true, key: "component", getter: false, setter: false},
    host: {type: String, nilable: true, key: "host", getter: false, setter: false},
  )]
  class Api::Core::V1::EventSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Component from which the event is generated.
    property component : String | Nil

    # Node name on which the event is generated.
    property host : String | Nil

    def initialize(*, @component : String | Nil = nil, @host : String | Nil = nil)
    end
  end
end
