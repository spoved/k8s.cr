# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ForZone provides information about which zones should consume this endpoint.
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
  )]
  class Api::Discovery::V1::ForZone
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # name represents the name of the zone.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    def initialize(*, @name : String)
    end
  end
end
