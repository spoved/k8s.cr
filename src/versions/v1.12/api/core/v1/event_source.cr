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
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Component from which the event is generated.
    @[::JSON::Field(key: "component", emit_null: false)]
    @[::YAML::Field(key: "component", emit_null: false)]
    property component : String | Nil

    # Node name on which the event is generated.
    @[::JSON::Field(key: "host", emit_null: false)]
    @[::YAML::Field(key: "host", emit_null: false)]
    property host : String | Nil

    def initialize(*, @component : String | Nil = nil, @host : String | Nil = nil)
    end
  end
end
